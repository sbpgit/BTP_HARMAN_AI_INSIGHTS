'use strict';
// Regression tests: the engine must reproduce the reference simulator's root causes.
// Run: npm test   (uses in-memory SQLite + CSV seed data from tools/generate_dataset.py)
const cds = require('@sap/cds');
const { describe, it } = require('node:test');
const assert = require('node:assert');
const { GET, POST } = cds.test(__dirname + '/..');

const fn = async (path) => (await GET(`/odata/v4/explain/${path}`)).data;

describe('planning explainability', () => {
  it('baseline run is healthy', async () => {
    const d = await fn("explainRun(scenario='BASE',baseline='BASE',narrate=false)");
    assert.match(d.headline, /98\.8/);
  });

  it('SoC scenario: top root cause is the level-3 SoC with supplier allocation as driver', async () => {
    const d = await fn("explainRun(scenario='S1_SOC_ALLOC',baseline='BASE',narrate=false)");
    const top = d.rootCauses[0];
    assert.equal(top.type, 'MATERIAL');
    assert.equal(top.object, 'SOC-A78');
    assert.equal(top.bomLevel, 3);
    assert.match(top.driver, /Supplier allocation/);
  });

  it('SoC scenario: lower-priority order shows allocation to higher-priority customers and changed PO', async () => {
    const d = await fn("explainOrder(scenario='S1_SOC_ALLOC',orderId='10000151',narrate=true)");
    assert.ok(d.rootCauses.some((r) => r.type === 'ALLOCATION' && /OEM_B/.test(r.driver)));
    const facts = JSON.parse(d.facts);
    assert.ok(facts.pegging.peggedToChangedSupply.some((p) => p.element === '4500010171/00010'));
    assert.ok(facts.pegging.deepestBomLevel >= 3);
    assert.ok(d.narrative.length > 50);
  });

  it('SMT outage: downstream final assembly overload is attributed to the upstream SMT line', async () => {
    const d = await fn("explainCapacity(scenario='S2_SMT_OUTAGE',resource='RES_MX01_FA1',narrate=false)");
    assert.equal(d.rootCauses[0].type, 'BACKLOG');
    assert.match(d.rootCauses[0].driver, /RES_CN01_SMT1/);
  });

  it('component shortage view lists recovery week and impacted finished goods', async () => {
    const d = await fn("explainShortage(scenario='S1_SOC_ALLOC',product='SOC-A78',location='PL_CN01',narrate=false)");
    const f = JSON.parse(d.facts);
    assert.ok(f.firstShortageWeek != null && f.recoveryWeek > f.firstShortageWeek);
    assert.ok(f.impactedFinishedGoods.length >= 2);
  });

  it('question routing picks the right analysis', async () => {
    const { data } = await POST('/odata/v4/explain/ask', { scenario: 'S4_COMBINED', question: 'Why is RES_CN01_SMT1 overloaded?' });
    assert.equal(data.subjectType, 'CAPACITY');
  });

  it('unknown order returns 404', async () => {
    await assert.rejects(fn("explainOrder(scenario='BASE',orderId='99999999',narrate=false)"), /404/);
  });
});
