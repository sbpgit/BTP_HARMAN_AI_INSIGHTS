'use strict';
/**
 * Root-cause engine for supply planning explainability.
 *
 * Principle: every statement the user sees is derived from planning facts
 * (pegging, constraint events, time-phased balances, capacity loads, scenario deltas).
 * The LLM layer (narrator.js) only verbalises these facts; it never computes them.
 *
 * Constraint taxonomy
 *   MATERIAL   - a purchased component (often BOM level 2-3) has insufficient confirmed supply
 *   CAPACITY   - a resource has insufficient hours in the bucket where production must start
 *   LEAD_TIME  - the requested date is inside the cumulative replenishment lead time and the
 *                pipeline (stock / in-transit / firmed orders) is already consumed
 * Driver analysis adds the "why": scenario deltas (supplier cut, outage, demand surge),
 * allocation to higher-priority demand, and capacity consumed by backlog recovery (bow-wave).
 */

const SHIFT_HOURS = Number(process.env.SHIFT_HOURS || 22.5);     // one extra 3x7.5h day
const AIR_FREIGHT_WEEKS = Number(process.env.AIR_FREIGHT_WEEKS || 1);

const n = (x) => Number(x || 0);
const fmt = (x) => Math.round(n(x)).toLocaleString('en-US');
const usd = (x) => (Math.abs(n(x)) >= 1e6 ? `$${(n(x) / 1e6).toFixed(2)}M` : `$${fmt(x)}`);
const wk = (w) => `W${String(Math.round(n(w))).padStart(2, '0')}`;
/** [3,4,5,8] -> "W03-W05, W08" */
const ranges = (weeks) => {
  const ws = [...new Set(weeks.map((w) => Math.round(n(w))))].sort((a, b) => a - b);
  const out = [];
  for (let i = 0; i < ws.length; i++) {
    let j = i;
    while (j + 1 < ws.length && ws[j + 1] === ws[j] + 1) j++;
    out.push(i === j ? wk(ws[i]) : `${wk(ws[i])}-${wk(ws[j])}`);
    i = j;
  }
  return out.join(', ');
};
const pct = (a, b) => (n(b) ? Math.round((1000 * n(a)) / n(b)) / 10 : 0);
const sum = (arr, f) => arr.reduce((s, r) => s + n(f(r)), 0);
const groupBy = (arr, keyFn) => arr.reduce((m, r) => {
  const k = keyFn(r);
  (m[k] ||= []).push(r);
  return m;
}, {});

class RootCauseEngine {
  constructor(repo) {
    this.r = repo;
  }

  // ---------------------------------------------------------------- helpers
  /** Multi-level where-used: which finished goods consume a component, with cumulative qty-per */
  async whereUsed(component) {
    const bom = await this.r.bom();
    const products = await this.r.products();
    const out = [];
    const walk = (item, factor, path) => {
      const parents = bom.filter((b) => b.component === item);
      if (!parents.length || products[item]?.bom_level === 0) {
        if (products[item]?.bom_level === 0) out.push({ fg: item, qtyPerFg: factor, path: [...path, item] });
        return;
      }
      for (const p of parents) walk(p.parent, factor * n(p.qty_per), [...path, item]);
    };
    walk(component, 1, []);
    const uniq = {};
    for (const w of out) uniq[w.fg] = w;
    return Object.values(uniq).map((w) => ({
      ...w,
      revenuePerComponentUnit: Math.round(n(products[w.fg]?.unit_value_usd) / w.qtyPerFg),
    }));
  }

  /** Builds nested pegging tree for one order */
  async peggingTree(scenario, orderId) {
    const pegs = await this.r.pegs(scenario, { order_id: orderId });
    const byId = {};
    pegs.forEach((p) => (byId[p.peg_id] = { ...p, children: [] }));
    const roots = [];
    for (const p of Object.values(byId)) {
      if (p.parent_peg_id && byId[p.parent_peg_id]) byId[p.parent_peg_id].children.push(p);
      else roots.push(p);
    }
    return roots;
  }

  /** Who consumed a constrained component up to a given week, by customer (allocation view) */
  async allocation(scenario, product, location, uptoWeek) {
    const customers = await this.r.customers();
    const pegs = (await this.r.pegs(scenario, { product, location })).filter((p) => n(p.need_week) <= uptoWeek);
    const byCust = groupBy(pegs, (p) => p.customer);
    return Object.entries(byCust)
      .map(([c, rows]) => ({
        customer: c,
        priority: customers[c]?.priority,
        qty: sum(rows, (r) => r.pegged_qty),
        backlogRecoveryQty: sum(rows.filter((r) => r.backlog_recovery), (r) => r.pegged_qty),
      }))
      .sort((a, b) => a.priority - b.priority);
  }

  /** Capacity consumption of a resource in a week, split into backlog recovery vs on-time demand */
  async capacityWeek(scenario, resource, week) {
    const routing = (await this.r.routing()).filter((x) => x.resource_id === resource);
    const ids = routing.map((x) => `PLO-${x.product_id}-${x.location_id}-${wk(week)}`);
    const hpu = Object.fromEntries(routing.map((x) => [x.product_id, n(x.hours_per_unit)]));
    const pegs = await this.r.pegsForElements(scenario, ids);
    const rows = pegs.map((p) => ({ ...p, hours: n(p.pegged_qty) * (hpu[p.product] || 0) }));
    const total = sum(rows, (r) => r.hours);
    const backlog = sum(rows.filter((r) => r.backlog_recovery), (r) => r.hours);
    const byCustomer = Object.entries(groupBy(rows, (r) => r.customer))
      .map(([c, rr]) => ({ customer: c, hours: Math.round(sum(rr, (r) => r.hours) * 10) / 10 }));
    const backlogOrders = [...new Set(rows.filter((r) => r.backlog_recovery).map((r) => r.order_id))];
    return { total, backlog, backlogSharePct: pct(backlog, total), byCustomer, hoursPerUnit: hpu, backlogOrders };
  }

  // ---------------------------------------------------------------- constraint analyzers
  async analyzeMaterial(scenario, product, location, week, ctx = {}) {
    const [series, changes, sourcing, products] = await Promise.all([
      this.r.shortageSeries(scenario, product, location),
      this.r.changes(scenario, { product, location }),
      this.r.sourcing(),
      this.r.products(),
    ]);
    const src = sourcing.filter((s) => s.product_id === product);
    const lt = n(src[0]?.planned_delivery_weeks);
    const firstShort = series.find((s) => s.shortage_flag);
    const after = firstShort ? series.filter((s) => s.week > firstShort.week) : [];
    const recovery = after.find((s) => n(s.projected_balance) >= 0);
    const maxDeficit = Math.min(0, ...series.map((s) => n(s.projected_balance)));
    const removedQty = sum(changes.filter((c) => c.attribute === 'CONFIRMED_QTY'), (c) => n(c.base_value) - n(c.scenario_value));
    const slipped = changes.filter((c) => c.attribute === 'DELIVERY_WEEK');
    const demandChanges = await this.r.changes(scenario, { object_type: 'SALES_ORDER' });
    const used = await this.whereUsed(product);
    const demandUp = demandChanges.filter((c) => used.some((u) => u.fg === c.product));
    const alloc = await this.allocation(scenario, product, location, week);

    let driver;
    if (changes.length) {
      driver = `Supply reduced vs baseline: ${changes.length} supply element(s) changed` +
        (removedQty ? `, ${fmt(removedQty)} units of confirmed quantity removed` : '') +
        (slipped.length ? `, ${slipped.length} delivery(ies) pushed out (${slipped.map((s) => `${s.object_id} ${wk(s.base_value)}->${wk(s.scenario_value)}`).join(', ')})` : '') +
        ` - reason: ${[...new Set(changes.map((c) => c.reason))].join('; ')}`;
    } else if (demandUp.length) {
      driver = `Demand increased vs baseline on ${[...new Set(demandUp.map((d) => d.product))].join(', ')} ` +
        `(+${fmt(sum(demandUp, (d) => n(d.scenario_value) - n(d.base_value)))} FG units) consuming the component buffer`;
    } else {
      driver = 'Requirement exceeds confirmed supply in the baseline itself';
    }
    const insideLT = week < lt;
    const recs = [];
    const need = n(ctx.componentShortfall) || Math.abs(maxDeficit);
    recs.push({
      lever: `Expedite / re-negotiate allocation with ${src[0]?.supplier_id || 'supplier'}`,
      detail: `Request ${fmt(need)} x ${product} at ${location} by ${wk(week)}` +
        (insideLT ? ` (inside the ${lt}-week planned delivery time: only expedite or broker buy possible, no standard PO)` : ''),
      quantifiedBenefit: ctx.fgShortfall ? `Recovers up to ${fmt(ctx.fgShortfall)} FG units for order ${ctx.orderId}` : `Closes max deficit of ${fmt(Math.abs(maxDeficit))}`,
      feasibility: insideLT ? 'Low-medium (supplier-dependent)' : 'Medium',
    });
    if (used.length > 1) {
      const best = [...used].sort((a, b) => b.revenuePerComponentUnit - a.revenuePerComponentUnit);
      recs.push({
        lever: 'Value-based allocation of the constrained component',
        detail: `Revenue per ${product}: ` + best.map((u) => `${u.fg} ${usd(u.revenuePerComponentUnit)}`).join(', ') +
          '. Within contractual priority, steer scarce units to the highest value-per-component FG.',
        quantifiedBenefit: `Spread ${usd(best[0].revenuePerComponentUnit - best[best.length - 1].revenuePerComponentUnit)} per unit between best and worst use`,
        feasibility: 'High (planning decision, configure as allocation / priority rule)',
      });
    }
    if (src.length <= 1) {
      recs.push({
        lever: 'Qualify alternate source',
        detail: `${product} is single-sourced from ${src[0]?.supplier_id}. Add alternate supplier / form-fit-function substitute in the source list.`,
        quantifiedBenefit: 'Structural risk reduction (not effective inside the current horizon)',
        feasibility: 'Low in horizon (PPAP / AEC-Q qualification)',
      });
    }
    return {
      driver,
      facts: {
        component: product, location, bomLevel: products[product]?.bom_level, supplier: src[0]?.supplier_id,
        supplierLeadTimeWeeks: lt, constraintWeek: week, insideSupplierLeadTime: insideLT,
        firstShortageWeek: firstShort?.week ?? null, recoveryWeek: recovery?.week ?? null,
        maxCumulativeDeficit: maxDeficit, scenarioChanges: changes.map(({ object_id, attribute, base_value, scenario_value, reason }) => ({ object_id, attribute, base_value, scenario_value, reason })),
        allocationUpToConstraintWeek: alloc, whereUsed: used,
      },
      recs,
    };
  }

  async analyzeCapacity(scenario, resource, week, ctx = {}) {
    const [rows, changes, resources] = await Promise.all([
      this.r.capacity(scenario, resource),
      this.r.changes(scenario, { object_id: resource }),
      this.r.resources(),
    ]);
    const row = rows.find((r) => r.week === week) || {};
    const cw = await this.capacityWeek(scenario, resource, week);
    const onRes = Object.keys(cw.hoursPerUnit);
    const reduced = changes.filter((c) => c.attribute.startsWith('CAPACITY_HOURS'));
    const reducedNow = reduced.find((c) => c.attribute.endsWith(wk(week)));

    // finished goods that load this resource (multi-level where-used of products produced on it)
    const fgs = new Set();
    for (const p of onRes) {
      const products = await this.r.products();
      if (products[p]?.bom_level === 0) fgs.add(p);
      else (await this.whereUsed(p)).forEach((u) => fgs.add(u.fg));
    }
    const demandChanges = (await this.r.changes(scenario, { object_type: 'SALES_ORDER' })).filter((c) => fgs.has(c.product));

    // upstream cause of the backlog: primary constraints of the late orders now consuming this bucket
    let upstream = [];
    let selfCascade = 0;
    if (cw.backlogOrders.length) {
      const ev = (await this.r.eventsForOrders(scenario, cw.backlogOrders)).filter((e) => e.is_primary);
      selfCascade = ev.filter((e) => e.constraint_object === resource).length;
      upstream = Object.entries(groupBy(ev.filter((e) => e.constraint_object !== resource), (e) => e.constraint_object))
        .map(([obj, rr]) => ({ object: obj, orders: rr.length })).sort((a, b) => b.orders - a.orders);
    }
    const upstreamLabel = upstream.length ? upstream.slice(0, 2).map((u) => u.object).join(' / ')
      : reduced.length ? `the capacity cut in ${ranges(reduced.map((c) => c.attribute.slice(-2)))}`
        : selfCascade ? `this resource's own earlier overload (cascading backlog)` : 'an upstream constraint';

    let cls, driver;
    if (reducedNow) {
      cls = 'REDUCED';
      driver = `capacity cut from ${fmt(reducedNow.base_value)} h to ${fmt(reducedNow.scenario_value)} h (${reducedNow.reason})`;
    } else if (cw.backlogSharePct >= 25) {
      cls = 'BACKLOG';
      driver = `${cw.backlogSharePct}% of hours consumed by recovery of orders delayed earlier by ${upstreamLabel} (bow-wave)`;
    } else if (demandChanges.length) {
      cls = 'DEMAND';
      driver = `demand for ${[...new Set(demandChanges.map((d) => `${d.product}`))].join(', ')} up ${fmt(sum(demandChanges, (d) => n(d.scenario_value) - n(d.base_value)))} units vs baseline; earlier-dated orders take the hours first`;
    } else {
      cls = 'BASELINE';
      driver = `load at ${row.utilization_pct}% of capacity; demand variability exceeds headroom`;
    }

    const hpu = cw.hoursPerUnit[ctx.product] || Object.values(cw.hoursPerUnit)[0] || 0;
    const hoursNeeded = ctx.hours ?? (ctx.fgShortfall ? n(ctx.fgShortfall) * hpu : n(row.overload_hours));
    const prior = rows.filter((r) => r.week < week && r.week >= week - 4);
    const spareBefore = sum(prior, (r) => Math.max(0, n(r.available_hours) - n(r.constrained_load_hours)));
    const recs = [];
    if (hoursNeeded > 0) {
      recs.push({
        lever: 'Overtime / additional shift',
        detail: `${fmt(hoursNeeded)} h needed on ${resource} around ${wk(week)} = ${Math.ceil(hoursNeeded / SHIFT_HOURS)} extra day(s) at ${SHIFT_HOURS} h`,
        quantifiedBenefit: hpu ? `+${fmt(hoursNeeded / hpu)} units` : '',
        feasibility: 'High if labour and test equipment available',
      });
    }
    if (spareBefore >= SHIFT_HOURS / 2) {
      recs.push({
        lever: 'Pre-build in earlier buckets',
        detail: `${fmt(spareBefore)} spare hours on ${resource} in ${wk(Math.max(0, week - 4))}-${wk(week - 1)}`,
        quantifiedBenefit: hpu ? `Up to ${fmt(spareBefore / hpu)} units if components can be pulled in` : '',
        feasibility: 'Medium (requires components earlier, check material constraints)',
      });
    }
    if (cls === 'BACKLOG' && upstream.length) {
      recs.push({
        lever: `Fix the upstream constraint first (${upstream[0].object})`,
        detail: `The bow-wave on ${resource} is a symptom; recovering ${upstream[0].object} earlier flattens the catch-up load.`,
        quantifiedBenefit: `${cw.backlogSharePct}% of ${wk(week)} hours freed for on-time demand`,
        feasibility: 'Depends on upstream lever',
      });
    }
    recs.push({
      lever: 'Alternate production source',
      detail: `No alternate production source maintained for ${onRes.join(', ')}; qualify a second line/plant as alternative production source in IBP.`,
      quantifiedBenefit: 'Structural',
      feasibility: 'Low in horizon',
    });
    return {
      cls, driver, upstreamLabel, backlogSharePct: cw.backlogSharePct,
      facts: {
        resource, location: resources[resource]?.location, week, driverClass: cls,
        availableHours: n(row.available_hours), constrainedLoadHours: n(row.constrained_load_hours),
        unconstrainedLoadHours: n(row.unconstrained_load_hours), overloadHours: n(row.overload_hours),
        utilizationPct: n(row.utilization_pct), backlogRecoverySharePct: cw.backlogSharePct, upstreamCausesOfBacklog: upstream,
        loadByCustomer: cw.byCustomer, capacityChanges: reduced.map(({ attribute, base_value, scenario_value, reason }) => ({ attribute, base_value, scenario_value, reason })),
        spareHoursPrior4Weeks: Math.round(spareBefore), hoursNeeded: Math.round(hoursNeeded),
      },
      recs,
    };
  }

  /** Segments a capacity constraint over its weeks by driver class, with FG impact per class */
  async capacityStory(scenario, resource, events) {
    const routing = (await this.r.routing()).filter((x) => x.resource_id === resource);
    const hpu = Object.fromEntries(routing.map((x) => [x.product_id, n(x.hours_per_unit)]));
    const byWeek = groupBy(events, (e) => e.constraint_week);
    const segs = {};
    let worst = null;
    for (const [w, evs] of Object.entries(byWeek)) {
      const hours = sum(evs, (e) => n(e.component_shortfall_qty) * (hpu[e.constraint_product] || 0));
      const a = await this.analyzeCapacity(scenario, resource, Number(w), { hours, product: evs[0].constraint_product });
      const fg = sum(evs, (e) => e.fg_shortfall_qty);
      const seg = (segs[a.cls] ||= { cls: a.cls, weeks: [], fg: 0, hours: 0, driver: a.driver, shares: [], sources: new Set() });
      seg.weeks.push(Number(w)); seg.fg += fg; seg.hours += hours;
      seg.shares.push(a.backlogSharePct);
      a.upstreamLabel.split(' / ').forEach((x) => seg.sources.add(x));
      if (!worst || fg > worst.fg) worst = { fg, a };
    }
    for (const g of Object.values(segs)) {
      if (g.cls === 'BACKLOG') {
        const avg = Math.round(sum(g.shares, (x) => x) / g.shares.length);
        g.driver = `on average ${avg}% of hours consumed by recovery of orders delayed earlier by ${[...g.sources].join(' and ')} (bow-wave)`;
      }
      g.sources = [...g.sources];
      delete g.shares;
    }
    const ordered = Object.values(segs).sort((x, y) => y.fg - x.fg);
    const driver = ordered.map((g) => `${ranges(g.weeks)}: ${g.driver} [${fmt(g.fg)} FG]`).join('; ');
    const totalHours = sum(ordered, (g) => g.hours);
    return { driver, segments: ordered, worst: worst?.a, totalHours };
  }

  async analyzeLeadTime(scenario, event) {
    const lanes = await this.r.lanes();
    const obj = event.constraint_object || '';
    const facts = { object: obj, constraintWeek: event.constraint_week, location: event.constraint_location };
    const recs = [];
    let driver;
    if (obj.includes('->')) {
      const [from, to] = obj.split('->');
      const lane = lanes.find((l) => l.from_location === from && l.to_location === to && l.product_id === event.constraint_product);
      Object.assign(facts, { lane: lane || null });
      driver = `Requested date needs ${event.constraint_product} at ${to} in ${wk(event.constraint_week)}, but replenishment from ${from} takes ` +
        `${lane?.lead_time_weeks ?? '?'} week(s) by ${lane?.mode ?? 'n/a'}; in-transit and stock were already consumed by earlier/higher-priority demand`;
      if (lane && n(lane.lead_time_weeks) > AIR_FREIGHT_WEEKS) {
        recs.push({
          lever: 'Expedite transport (air freight)',
          detail: `Switch ${from}->${to} for ${event.constraint_product} to air (~${AIR_FREIGHT_WEEKS} week) for ${fmt(event.fg_shortfall_qty)} units`,
          quantifiedBenefit: `Saves ${n(lane.lead_time_weeks) - AIR_FREIGHT_WEEKS} week(s)`,
          feasibility: 'High, at freight cost premium',
        });
      }
    } else {
      driver = `Requested date falls inside the production lead time (${obj}); no firmed supply exists early enough`;
      recs.push({
        lever: 'Accept later date or re-sequence firmed orders',
        detail: 'Inside frozen/firm zone: only re-prioritising existing supply can help.',
        quantifiedBenefit: '', feasibility: 'Medium',
      });
    }
    return { driver, facts, recs };
  }

  async analyzeEvent(scenario, e, ctx = {}) {
    if (e.constraint_type === 'MATERIAL')
      return this.analyzeMaterial(scenario, e.constraint_product, e.constraint_location, e.constraint_week,
        { ...ctx, componentShortfall: e.component_shortfall_qty, fgShortfall: e.fg_shortfall_qty, orderId: e.order_id });
    if (e.constraint_type === 'CAPACITY')
      return this.analyzeCapacity(scenario, e.constraint_object, e.constraint_week,
        { ...ctx, fgShortfall: e.component_shortfall_qty, product: e.constraint_product, hours: undefined });
    return this.analyzeLeadTime(scenario, e);
  }

  // ---------------------------------------------------------------- public explanations
  async explainOrder(scenario, orderId) {
    const o = await this.r.order(scenario, orderId);
    if (!o) throw Object.assign(new Error(`Order ${orderId} not found in scenario ${scenario}`), { code: 404 });
    const [events, tree, products, customers] = await Promise.all([
      this.r.events(scenario, { order_id: orderId }),
      this.peggingTree(scenario, orderId),
      this.r.products(),
      this.r.customers(),
    ]);
    const baseOrder = scenario !== 'BASE' ? await this.r.order('BASE', orderId) : null;
    const price = n(products[o.product]?.unit_value_usd);
    const leaves = [];
    const walk = (node, path) => {
      const p = [...path, `${node.product}@${node.location}`];
      if (!node.children.length) leaves.push({ path: p.join(' > '), supplyType: node.supply_type, element: node.supply_element, week: node.supply_week, qty: n(node.pegged_qty), bomLevel: node.bom_level });
      node.children.forEach((c) => walk(c, p));
    };
    tree.forEach((r) => walk(r, []));
    const deepest = Math.max(0, ...leaves.map((l) => l.bomLevel));
    // Evidence: parts of this order pegged to supply elements that were changed in this scenario
    const changed = new Map((await this.r.changes(scenario)).map((c) => [c.object_id, c]));
    const peggedToChanged = leaves.filter((l) => changed.has(l.element)).map((l) => {
      const c = changed.get(l.element);
      return { element: l.element, qty: l.qty, path: l.path, change: `${c.attribute} ${c.attribute === 'DELIVERY_WEEK' ? `${wk(c.base_value)}->${wk(c.scenario_value)}` : `${fmt(c.base_value)}->${fmt(c.scenario_value)}`} (${c.reason})` };
    });

    const rootCauses = [];
    const recommendations = [];
    const analyses = [];
    const sorted = [...events].sort((a, b) => (b.is_primary ? 1 : 0) - (a.is_primary ? 1 : 0));
    let rank = 0;
    for (const e of sorted) {
      const a = await this.analyzeEvent(scenario, e, { product: o.product });
      analyses.push({ event: e, ...a });
      rootCauses.push({
        rank: ++rank, type: e.constraint_type, object: e.constraint_object, location: e.constraint_location,
        bomLevel: e.bom_level, week: e.constraint_week, impactFgQty: e.is_primary ? n(e.fg_shortfall_qty) : null,
        impactUsd: e.is_primary ? n(e.fg_shortfall_qty) * price : null,
        driver: (e.is_primary ? '' : '(co-binding) ') + a.driver,
        evidence: e.root_cause_path,
      });
      if (e.is_primary) recommendations.push(...a.recs);
      // Allocation insight: did higher-priority demand take the constrained component?
      if (e.is_primary && e.constraint_type === 'MATERIAL') {
        const higher = a.facts.allocationUpToConstraintWeek.filter((x) => x.priority < o.priority);
        if (higher.length) {
          rootCauses.push({
            rank: ++rank, type: 'ALLOCATION', object: e.constraint_object, location: e.constraint_location,
            bomLevel: e.bom_level, week: e.constraint_week, impactFgQty: null, impactUsd: null,
            driver: `Priority rule: ${higher.map((h) => `${h.customer} (priority ${h.priority}) received ${fmt(h.qty)}`).join(', ')} units of ${e.constraint_object} up to ${wk(e.constraint_week)} before ${o.customer} (priority ${o.priority})`,
            evidence: 'Pegging of constrained component by customer',
          });
        }
      }
    }
    const statusText = { ON_TIME: 'is confirmed on time', LATE: `is confirmed late by up to ${o.max_delay_weeks} week(s)`, SHORT: `cannot be fully confirmed (${fmt(o.unconfirmed)} units open)` }[o.status];
    const primary = rootCauses[0];
    const headline = o.status === 'ON_TIME'
      ? `Order ${orderId} (${o.customer}, ${o.product}) ${statusText}; fully pegged down to BOM level ${deepest}.`
      : `Order ${orderId} (${o.customer}, ${fmt(o.order_qty)} x ${o.product}) ${statusText}: ` +
        `${primary.type.toLowerCase().replace('_', ' ')} constraint on ${primary.object} at ${primary.location}` +
        (primary.bomLevel ? ` (BOM level ${primary.bomLevel})` : '') + ` in ${wk(primary.week)}.`;
    const facts = {
      order: { id: orderId, customer: o.customer, customerName: customers[o.customer]?.name, priority: o.priority, product: o.product, location: o.location, requestedWeek: o.req_week, requestedDate: o.req_date, qty: n(o.order_qty), onTime: n(o.confirmed_on_time), late: n(o.confirmed_late), unconfirmed: n(o.unconfirmed), scheduleLines: o.schedule_lines, revenueAtRiskUsd: n(o.revenue_at_risk_usd) },
      baselineStatus: baseOrder ? { status: baseOrder.status, onTime: n(baseOrder.confirmed_on_time) } : null,
      pegging: { deepestBomLevel: deepest, leafSupplyElements: leaves.slice(0, 40), leafCount: leaves.length, peggedToChangedSupply: peggedToChanged },
      constraints: analyses.map((a) => ({ type: a.event.constraint_type, object: a.event.constraint_object, primary: a.event.is_primary, path: a.event.root_cause_path, driver: a.driver, details: a.facts })),
    };
    return { subjectType: 'ORDER', subjectId: orderId, scenario, headline, rootCauses, recommendations: dedupe(recommendations), facts };
  }

  async explainShortage(scenario, product, location) {
    const [products, series] = await Promise.all([this.r.products(), this.r.shortageSeries(scenario, product, location)]);
    if (!series.length) throw Object.assign(new Error(`No time series for ${product}@${location} in ${scenario}`), { code: 404 });
    const firstShort = series.find((s) => s.shortage_flag);
    const week = firstShort ? firstShort.week : series[series.length - 1].week;
    const a = await this.analyzeMaterial(scenario, product, location, week);
    const events = (await this.r.events(scenario, { constraint_product: product, constraint_location: location, is_primary: true }));
    const byFg = Object.entries(groupBy(events, (e) => `${e.fg_product}|${e.customer}`)).map(([k, rows]) => {
      const [fg, customer] = k.split('|');
      return { fg, customer, orders: rows.length, fgShortfall: sum(rows, (r) => r.fg_shortfall_qty), usd: sum(rows, (r) => r.fg_shortfall_qty) * n(products[fg]?.unit_value_usd) };
    }).sort((x, y) => y.usd - x.usd);
    const totalUsd = sum(byFg, (x) => x.usd);
    const headline = firstShort
      ? `${product} at ${location} (BOM level ${products[product]?.bom_level}) goes short in ${wk(firstShort.week)}` +
        (a.facts.recoveryWeek != null ? `, recovers in ${wk(a.facts.recoveryWeek)}` : ', no recovery inside the horizon') +
        `; ${events.length} order(s) across ${new Set(byFg.map((b) => b.customer)).size} customer(s) impacted, ${usd(totalUsd)} revenue at risk.`
      : `${product} at ${location} has no projected shortage in ${scenario}.`;
    const rootCauses = firstShort ? [{
      rank: 1, type: 'MATERIAL', object: product, location, bomLevel: products[product]?.bom_level, week: firstShort.week,
      impactFgQty: sum(byFg, (b) => b.fgShortfall), impactUsd: totalUsd, driver: a.driver,
      evidence: `Cumulative balance min ${fmt(a.facts.maxCumulativeDeficit)}`,
    }] : [];
    return {
      subjectType: 'SHORTAGE', subjectId: `${product}@${location}`, scenario, headline, rootCauses,
      recommendations: firstShort ? a.recs : [],
      facts: { ...a.facts, impactedFinishedGoods: byFg, series: series.map((s) => ({ week: s.week, req: n(s.requirement_qty), supply: n(s.supply_qty), balance: n(s.projected_balance) })) },
    };
  }

  async explainCapacity(scenario, resource) {
    const rows = await this.r.capacity(scenario, resource);
    if (!rows.length) throw Object.assign(new Error(`Resource ${resource} not found in ${scenario}`), { code: 404 });
    const events = await this.r.events(scenario, { constraint_object: resource, is_primary: true });
    const products = await this.r.products();
    const story = events.length ? await this.capacityStory(scenario, resource, events) : null;
    const impact = sum(events, (e) => e.fg_shortfall_qty);
    const impactUsd = sum(events, (e) => n(e.fg_shortfall_qty) * n(products[e.fg_product]?.unit_value_usd));
    const peak = [...rows].sort((a, b) => n(b.unconstrained_load_hours) - n(a.unconstrained_load_hours))[0];
    const binding = [...new Set(events.map((e) => e.constraint_week))];
    const headline = events.length
      ? `${resource} limits the plan in ${ranges(binding)}; ${fmt(impact)} FG units (${usd(impactUsd)}) cannot be confirmed on time. ` +
        `Peak demand-driven load ${fmt(peak.unconstrained_load_hours)} h vs ${fmt(peak.available_hours)} h in ${wk(peak.week)}.`
      : `${resource} is not a binding constraint in ${scenario} (peak load ${fmt(peak.unconstrained_load_hours)} h vs ${fmt(peak.available_hours)} h).`;
    const rootCauses = (story?.segments || []).map((g, i) => ({
      rank: i + 1, type: g.cls === 'BACKLOG' ? 'BACKLOG' : 'CAPACITY', object: resource, location: rows[0].location,
      bomLevel: null, week: Math.min(...g.weeks), impactFgQty: g.fg,
      impactUsd: Math.round(g.fg * (impact ? impactUsd / impact : 0)),
      driver: `${ranges(g.weeks)}: ${g.driver}`, evidence: `${fmt(g.hours)} h short`,
    }));
    const recommendations = story ? [{
      lever: `Recover capacity on ${resource}`,
      detail: `${fmt(story.totalHours)} h short across ${ranges(binding)} = ${Math.ceil(story.totalHours / SHIFT_HOURS)} extra day(s) at ${SHIFT_HOURS} h`,
      quantifiedBenefit: `Up to ${fmt(impact)} FG units / ${usd(impactUsd)} back on time`, feasibility: 'Medium-high',
    }, ...(story.worst?.recs || []).filter((r) => !r.lever.startsWith('Overtime'))] : [];
    return {
      subjectType: 'CAPACITY', subjectId: resource, scenario, headline, rootCauses, recommendations: dedupe(recommendations),
      facts: {
        resource, segments: story?.segments || [], worstWeek: story?.worst?.facts || null,
        profile: rows.map((r) => ({ week: r.week, avail: n(r.available_hours), load: n(r.constrained_load_hours), demandLoad: n(r.unconstrained_load_hours) })),
      },
    };
  }

  /** Explains the outcome of a planning run vs a baseline run */
  async explainRun(scenario, baseline = 'BASE') {
    const [kpi, kpiB, sc, products, events, eventsB, changes] = await Promise.all([
      this.r.kpi(scenario), this.r.kpi(baseline), this.r.scenario(scenario), this.r.products(),
      this.r.events(scenario, { is_primary: true }), this.r.events(baseline, { is_primary: true }),
      this.r.changes(scenario),
    ]);
    if (!kpi) throw Object.assign(new Error(`Scenario ${scenario} not found`), { code: 404 });
    const agg = (evts) => Object.fromEntries(Object.entries(groupBy(evts, (e) => `${e.constraint_type}|${e.constraint_object}`)).map(([k, rows]) => [k, {
      type: rows[0].constraint_type, object: rows[0].constraint_object, location: rows[0].constraint_location,
      product: rows[0].constraint_product, bomLevel: rows[0].bom_level,
      weeks: [...new Set(rows.map((r) => r.constraint_week))].sort((a, b) => a - b),
      orders: rows.length, customers: [...new Set(rows.map((r) => r.customer))],
      fgQty: sum(rows, (r) => r.fg_shortfall_qty),
      usd: sum(rows, (r) => n(r.fg_shortfall_qty) * n(products[r.fg_product]?.unit_value_usd)),
    }]));
    const A = agg(events), B = scenario === baseline ? {} : agg(eventsB);
    const total = sum(Object.values(A), (x) => x.usd);
    const groups = Object.entries(A).map(([k, g]) => ({ key: k, ...g, baselineUsd: B[k]?.usd || 0 }))
      .sort((a, b) => b.usd - a.usd);

    const rootCauses = [];
    const recommendations = [];
    let rank = 0;
    for (const g of groups.slice(0, 6)) {
      let driver;
      const direct = changes.filter((c) => c.object_id === g.object || (c.product === g.product && c.location === g.location && c.object_type !== 'SALES_ORDER'));
      if (g.type === 'CAPACITY') {
        const story = await this.capacityStory(scenario, g.object, events.filter((e) => e.constraint_object === g.object));
        driver = story.driver;
        if (rank < 2 && story.worst) {
          recommendations.push({
            lever: `Recover capacity on ${g.object}`,
            detail: `${fmt(story.totalHours)} h short across ${ranges(g.weeks)} = ${Math.ceil(story.totalHours / SHIFT_HOURS)} extra day(s) at ${SHIFT_HOURS} h (overtime, weekend shifts, contract manufacturing)`,
            quantifiedBenefit: `Up to ${fmt(g.fgQty)} FG units / ${usd(g.usd)} back on time`,
            feasibility: 'Medium-high',
          });
          recommendations.push(...story.worst.recs.filter((r) => !r.lever.startsWith('Overtime')).slice(0, 1));
        }
      } else if (g.type === 'MATERIAL') {
        const a = await this.analyzeMaterial(scenario, g.product, g.location, g.weeks[0]);
        driver = a.driver;
        if (rank < 2) recommendations.push(...a.recs.slice(0, 2));
      } else {
        driver = direct.length ? `Linked change: ${direct[0].reason}` : 'Request inside replenishment lead time; pipeline inventory exhausted';
      }
      rootCauses.push({
        rank: ++rank, type: g.type, object: g.object, location: g.location, bomLevel: g.bomLevel,
        week: g.weeks[0], impactFgQty: g.fgQty, impactUsd: Math.round(g.usd),
        driver: `${driver}. Hits ${g.orders} order(s) of ${g.customers.join(', ')} in ${ranges(g.weeks)}` +
          (scenario !== baseline ? `; baseline impact ${usd(g.baselineUsd)}` : ''),
        evidence: `${pct(g.usd, total)}% of shortfall value`,
      });
    }
    // Scenario changes that did not translate into service impact (absorbed by buffers)
    const hit = new Set(groups.flatMap((g) => [g.object, g.product]));
    const absorbed = [...new Set(changes.filter((c) => !hit.has(c.object_id) && !hit.has(c.product) && c.object_type !== 'SALES_ORDER').map((c) => `${c.object_type}:${c.product || c.object_id}`))];
    const d = (a, b) => Math.round((n(a) - n(b)) * 100) / 100;
    const top2 = pct(sum(groups.slice(0, 2), (g) => g.usd), total);
    const headline = `${sc?.name || scenario}: on-time fill rate ${n(kpi.on_time_fill_rate_pct)}%` +
      (scenario !== baseline ? ` (${d(kpi.on_time_fill_rate_pct, kpiB?.on_time_fill_rate_pct) >= 0 ? '+' : ''}${d(kpi.on_time_fill_rate_pct, kpiB?.on_time_fill_rate_pct)} pts vs ${baseline})` : '') +
      `, ${usd(kpi.revenue_at_risk_usd)} revenue at risk` +
      (groups.length ? `; top ${Math.min(2, groups.length)} constraint(s) explain ${top2}% of the shortfall value.` : '.');
    return {
      subjectType: 'RUN', subjectId: scenario, scenario, headline, rootCauses, recommendations: dedupe(recommendations),
      facts: {
        scenario: sc, kpi, baselineKpi: kpiB,
        planningPolicy: {
          sequencing: 'Orders planned by requested week, then customer priority (OEM_B=1, OEM_A=2, OEM_C=3)',
          lateness: 'Up to 4 weeks late confirmation, remainder unconfirmed',
          constraints: 'Finite material (confirmed POs + supplier capacity after planned delivery time) and finite resource capacity',
        },
        scenarioChanges: changes.length, changeSummary: [...new Set(changes.map((c) => c.reason))],
        constraintGroups: groups, absorbedChanges: absorbed,
      },
    };
  }
}

function dedupe(recs) {
  const seen = new Set();
  return recs.filter((r) => (seen.has(r.lever + r.detail) ? false : seen.add(r.lever + r.detail)));
}

module.exports = { RootCauseEngine, helpers: { fmt, usd, wk, pct, ranges } };
