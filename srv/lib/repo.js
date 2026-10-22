'use strict';
/**
 * Thin data-access layer. All analysis code goes through this object so the engine
 * can be unit-tested with an in-memory stub and so the persistence (HANA Cloud,
 * Datasphere remote tables, or live IBP OData) can be swapped without touching logic.
 */
const cds = require('@sap/cds');

module.exports = function repo() {
  const E = cds.entities('hx.ibp.explain');
  const cache = new Map();
  const once = async (key, fn) => {
    if (!cache.has(key)) cache.set(key, await fn());
    return cache.get(key);
  };

  return {
    order: (scenario, order_id) => SELECT.one.from(E.OrderFulfillment).where({ scenario, order_id }),
    orders: (scenario, where = {}) => SELECT.from(E.OrderFulfillment).where({ scenario, ...where }),
    events: (scenario, where = {}) => SELECT.from(E.ConstraintEvents).where({ scenario, ...where }),
    eventsForOrders: (scenario, ids) =>
      ids.length ? SELECT.from(E.ConstraintEvents).where({ scenario, order_id: { in: ids } }) : [],
    pegs: (scenario, where = {}) => SELECT.from(E.Pegging).where({ scenario, ...where }),
    pegsForElements: (scenario, elementIds) =>
      elementIds.length ? SELECT.from(E.Pegging).where({ scenario, supply_element: { in: elementIds } }) : [],
    shortageSeries: (scenario, product, location) =>
      SELECT.from(E.ComponentShortages).where({ scenario, product, location }).orderBy('week'),
    shortageAll: (scenario) =>
      SELECT.from(E.ComponentShortages).where({ scenario, shortage_flag: true }).orderBy('week'),
    capacity: (scenario, resource) =>
      SELECT.from(E.CapacityLoad).where({ scenario, resource }).orderBy('week'),
    changes: (scenario, where = {}) => SELECT.from(E.ScenarioChanges).where({ scenario, ...where }),
    kpi: (scenario) => SELECT.one.from(E.ScenarioKPIs).where({ scenario }),
    scenario: (ID) => SELECT.one.from(E.Scenarios).where({ ID }),
    // master data is small and static per request -> cache
    products: () => once('products', async () =>
      Object.fromEntries((await SELECT.from(E.Products)).map(p => [p.ID, p]))),
    customers: () => once('customers', async () =>
      Object.fromEntries((await SELECT.from(E.Customers)).map(c => [c.ID, c]))),
    resources: () => once('resources', async () =>
      Object.fromEntries((await SELECT.from(E.Resources)).map(r => [r.ID, r]))),
    bom: () => once('bom', () => SELECT.from(E.BOMItems)),
    routing: () => once('routing', () => SELECT.from(E.ProductionSourceResources)),
    lanes: () => once('lanes', () => SELECT.from(E.TransportationLanes)),
    sourcing: () => once('sourcing', () => SELECT.from(E.SupplierSourcing)),
    saveExplanation: (row) => INSERT.into(E.Explanations).entries(row),
  };
};
