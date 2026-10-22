'use strict';
/**
 * Integration with SAP IBP.
 *
 * Two patterns are supported:
 *  A) PULL  - syncFromIBP: read time-series key figures from the IBP planning-data OData API
 *             through a BTP destination ("IBP", Basic or OAuth2 communication user from the
 *             IBP communication arrangement for planning data).
 *  B) PUSH  - ingestPlanRun: an SAP Integration Suite iFlow (or CI-DS task) posts results of an
 *             OBP / TS planning run (orders, pegging, constraints) as JSON after the job finishes.
 *
 * Attribute and key-figure IDs differ per planning area and release, so they are
 * configured in package.json -> cds.requires.ibp.mapping. Verify them against your
 * planning area configuration before connecting.
 */
const cds = require('@sap/cds');
const LOG = cds.log('ibp');

function cfg() {
  return cds.env.requires.ibp || {};
}

async function get(path) {
  const { executeHttpRequest } = require('@sap-cloud-sdk/http-client');
  const res = await executeHttpRequest(
    { destinationName: cfg().destination || 'IBP' },
    { method: 'get', url: path, headers: { Accept: 'application/json' } }
  );
  return res.data?.d?.results || res.data?.value || [];
}

/** Week index relative to plan start (Monday) */
function weekIndex(ts, start) {
  const t = typeof ts === 'string' && ts.startsWith('/Date(') ? Number(ts.slice(6, -2)) : Date.parse(ts);
  return Math.floor((t - Date.parse(start)) / (7 * 864e5));
}

async function syncFromIBP({ scenario, planningArea, versionId }) {
  const c = cfg();
  const m = c.mapping || {};
  const pa = planningArea || c.planningArea;
  const base = c.servicePath || '/sap/opu/odata/IBP/PLANNING_DATA_API_SRV';
  const entitySet = m.entitySet || pa;
  const start = c.planStart || '2026-10-12';
  const vFilter = versionId ? ` and ${m.version || 'VERSIONID'} eq '${versionId}'` : '';
  const { ComponentShortages, CapacityLoad, PlanRuns } = cds.entities('hx.ibp.explain');

  // 1) Component projected balance (product-location-week)
  const kfC = m.component || {};
  const selC = [m.product, m.location, m.period, kfC.requirement, kfC.supply, kfC.projectedStock].join(',');
  const comp = await get(`${base}/${entitySet}?$select=${selC}&$filter=${m.period} ge datetime'${start}T00:00:00'${vFilter}&$format=json`);
  const compRows = comp.map((r) => ({
    scenario, product: r[m.product], location: r[m.location], week: weekIndex(r[m.period], start),
    requirement_qty: Number(r[kfC.requirement] || 0), supply_qty: Number(r[kfC.supply] || 0),
    projected_balance: Number(r[kfC.projectedStock] || 0), shortage_flag: Number(r[kfC.projectedStock] || 0) < 0,
  }));

  // 2) Resource capacity supply vs consumption (resource-location-week)
  const kfR = m.resource || {};
  const selR = [m.resourceId, m.location, m.period, kfR.capacity, kfR.load, kfR.unconstrainedLoad].join(',');
  const res = await get(`${base}/${entitySet}?$select=${selR}&$filter=${m.period} ge datetime'${start}T00:00:00'${vFilter}&$format=json`);
  const capRows = res.map((r) => {
    const avail = Number(r[kfR.capacity] || 0), load = Number(r[kfR.load] || 0), unc = Number(r[kfR.unconstrainedLoad] || load);
    return {
      scenario, resource: r[m.resourceId], location: r[m.location], week: weekIndex(r[m.period], start),
      available_hours: avail, constrained_load_hours: load, unconstrained_load_hours: unc,
      utilization_pct: avail ? Math.round((1000 * load) / avail) / 10 : 0, overload_hours: Math.max(0, unc - avail),
    };
  });

  await cds.tx(async (tx) => {
    await tx.run(DELETE.from(ComponentShortages).where({ scenario }));
    await tx.run(DELETE.from(CapacityLoad).where({ scenario }));
    if (compRows.length) await tx.run(INSERT.into(ComponentShortages).entries(withCumulatives(compRows)));
    if (capRows.length) await tx.run(INSERT.into(CapacityLoad).entries(capRows));
    await tx.run(INSERT.into(PlanRuns).entries({
      scenario, planning_area: pa, run_type: 'TS', source: 'IBP', status: 'SYNCED',
      started_at: new Date().toISOString(), finished_at: new Date().toISOString(),
      note: `${compRows.length} component rows, ${capRows.length} resource rows`,
    }));
  });
  LOG.info(`synced ${scenario}: ${compRows.length} component / ${capRows.length} capacity rows`);
  return `Synced ${compRows.length} component and ${capRows.length} capacity rows for ${scenario}`;
}

function withCumulatives(rows) {
  const g = {};
  rows.sort((a, b) => a.week - b.week).forEach((r) => (g[`${r.product}|${r.location}`] ||= []).push(r));
  for (const list of Object.values(g)) {
    let cr = 0, cs = 0;
    for (const r of list) {
      cr += r.requirement_qty; cs += r.supply_qty;
      Object.assign(r, { cum_requirement: cr, cum_supply: cs });
    }
  }
  return rows;
}

/**
 * Payload contract for pushed OBP / TS results (JSON string):
 * { orders:[OrderFulfillment], events:[ConstraintEvents], pegging:[Pegging],
 *   shortages:[ComponentShortages], capacity:[CapacityLoad], changes:[ScenarioChanges], kpis:{ScenarioKPIs} }
 * Field names = entity element names in db/schema.cds. Missing arrays are left untouched.
 */
async function ingestPlanRun({ run, payload }) {
  const data = typeof payload === 'string' ? JSON.parse(payload) : payload;
  const scenario = run.scenario;
  const E = cds.entities('hx.ibp.explain');
  const sets = [
    ['orders', E.OrderFulfillment], ['events', E.ConstraintEvents], ['pegging', E.Pegging],
    ['shortages', E.ComponentShortages], ['capacity', E.CapacityLoad], ['changes', E.ScenarioChanges],
  ];
  const counts = {};
  await cds.tx(async (tx) => {
    for (const [key, entity] of sets) {
      if (!Array.isArray(data[key])) continue;
      await tx.run(DELETE.from(entity).where({ scenario }));
      if (data[key].length) await tx.run(INSERT.into(entity).entries(data[key].map((r) => ({ ...r, scenario }))));
      counts[key] = data[key].length;
    }
    if (data.kpis) {
      await tx.run(DELETE.from(E.ScenarioKPIs).where({ scenario }));
      await tx.run(INSERT.into(E.ScenarioKPIs).entries({ ...data.kpis, scenario }));
    }
    if (!(await tx.run(SELECT.one.from(E.Scenarios).where({ ID: scenario })))) {
      await tx.run(INSERT.into(E.Scenarios).entries({ ID: scenario, name: scenario, description: 'Ingested planning run' }));
    }
    await tx.run(INSERT.into(E.PlanRuns).entries({
      scenario, planning_area: run.planningArea, run_type: run.runType, source: 'CPI', status: 'INGESTED',
      started_at: new Date().toISOString(), finished_at: new Date().toISOString(), note: JSON.stringify(counts),
    }));
  });
  return `Ingested ${scenario}: ${JSON.stringify(counts)}`;
}

module.exports = { syncFromIBP, ingestPlanRun };
