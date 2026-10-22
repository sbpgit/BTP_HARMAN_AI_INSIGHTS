'use strict';
const cds = require('@sap/cds');
const repo = require('./lib/repo');
const { RootCauseEngine } = require('./lib/rootcause');
const { narrate } = require('./lib/narrator');
const ibp = require('./lib/ibp-connector');

module.exports = class ExplainService extends cds.ApplicationService {
  init() {
    const engine = () => new RootCauseEngine(repo());   // per request: fresh master-data cache

    const finish = async (req, expl, { narrateIt = true, question } = {}) => {
      const { narrative, generatedBy } = narrateIt
        ? await narrate(expl, question)
        : { narrative: null, generatedBy: 'engine only' };
      const explanationId = cds.utils.uuid();
      await repo().saveExplanation({
        ID: explanationId, scenario: expl.scenario, subject_type: expl.subjectType, subject_id: expl.subjectId,
        question: question || null, headline: expl.headline, narrative, facts: JSON.stringify(expl.facts),
        generated_by: generatedBy,
      });
      return { explanationId, ...expl, narrative, facts: JSON.stringify(expl.facts), generatedBy };
    };

    const guard = (fn) => async (req) => {
      try {
        return await fn(req);
      } catch (e) {
        if (e.code === 404) return req.reject(404, e.message);
        throw e;
      }
    };
    const want = (v) => v !== false && v !== 'false';

    this.on('explainOrder', guard(async (req) => {
      const { scenario = 'BASE', orderId, narrate: nar } = req.data;
      return finish(req, await engine().explainOrder(scenario, normaliseOrder(orderId)), { narrateIt: want(nar) });
    }));

    this.on('explainShortage', guard(async (req) => {
      const { scenario = 'BASE', product, location, narrate: nar } = req.data;
      return finish(req, await engine().explainShortage(scenario, product, location), { narrateIt: want(nar) });
    }));

    this.on('explainCapacity', guard(async (req) => {
      const { scenario = 'BASE', resource, narrate: nar } = req.data;
      return finish(req, await engine().explainCapacity(scenario, resource), { narrateIt: want(nar) });
    }));

    this.on('explainRun', guard(async (req) => {
      const { scenario = 'BASE', baseline = 'BASE', narrate: nar } = req.data;
      return finish(req, await engine().explainRun(scenario, baseline), { narrateIt: want(nar) });
    }));

    this.on('peggingTree', guard(async (req) => {
      const { scenario = 'BASE', orderId } = req.data;
      return JSON.stringify(await engine().peggingTree(scenario, normaliseOrder(orderId)));
    }));

    /** Question routing: detect the subject in the question, run the matching analysis */
    this.on('ask', guard(async (req) => {
      const { scenario = 'BASE', question = '' } = req.data;
      const eng = engine();
      const r = repo();
      const products = await r.products();
      const resources = await r.resources();
      const q = question.toUpperCase();
      let expl;
      const orderMatch = q.match(/\b(00)?(1\d{7})\b/);
      const resMatch = Object.keys(resources).find((id) => q.includes(id));
      const prodMatch = Object.keys(products).sort((a, b) => b.length - a.length).find((id) => q.includes(id));
      if (orderMatch) {
        expl = await eng.explainOrder(scenario, normaliseOrder(orderMatch[2]));
      } else if (resMatch) {
        expl = await eng.explainCapacity(scenario, resMatch);
      } else if (prodMatch && products[prodMatch].bom_level > 0 && products[prodMatch].s4_material_type === 'ROH') {
        const loc = (await SELECT.one.from(cds.entities('hx.ibp.explain').ComponentShortages)
          .columns('location').where({ scenario, product: prodMatch }).orderBy('projected_balance')) || {};
        expl = await eng.explainShortage(scenario, prodMatch, loc.location);
      } else {
        expl = await eng.explainRun(scenario, 'BASE');
      }
      return finish(req, expl, { question });
    }));

    this.on('ingestPlanRun', (req) => ibp.ingestPlanRun(req.data));
    this.on('syncFromIBP', (req) => ibp.syncFromIBP(req.data));

    return super.init();
  }
};

function normaliseOrder(id = '') {
  const digits = String(id).replace(/\D/g, '');
  return digits.padStart(10, '0');
}
