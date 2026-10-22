'use strict';
/**
 * Turns engine facts into planner-friendly language.
 *
 * - With an SAP AI Core binding (service "aicore", Generative AI Hub) the orchestration
 *   service is called via the SAP Cloud SDK for AI (@sap-ai-sdk/orchestration, v2 API).
 *   The prompt is strictly grounded: the model only receives the JSON facts produced by
 *   the deterministic engine and is instructed not to compute or invent numbers.
 * - Without a binding (local dev, or AI disabled) a deterministic template narrative is
 *   returned, so the app is fully usable and testable offline.
 */
const cds = require('@sap/cds');
const LOG = cds.log('narrator');
const { helpers: { usd, fmt, wk } } = require('./rootcause');

const SYSTEM_PROMPT = `You are a supply planning analyst explaining SAP IBP planning results to planners at an
automotive electronics Tier-1 supplier. Rules:
1. Use ONLY the facts in the JSON. Do not invent quantities, dates, suppliers or causes. If a fact is missing, say so.
2. Lead with a one-sentence answer. Then explain the causal chain from customer order down through the BOM
   levels (finished good > PCBA > module > chip) to the binding constraint, naming IDs (orders, POs, resources).
3. Distinguish the binding constraint (what limits the plan) from the driver (what changed or why it binds),
   and from planning policy effects (customer priority, allocation, backlog recovery).
4. Close with up to three options with their quantified effect, taken from the recommendations.
5. Plain language, max 220 words, weeks written as W05 etc., currency as USD.`;

function aiConfigured() {
  if (process.env.AI_DISABLED === 'true') return false;
  if (process.env.AICORE_SERVICE_KEY) return true;
  try {
    const vcap = JSON.parse(process.env.VCAP_SERVICES || '{}');
    return Boolean(vcap.aicore?.length);
  } catch {
    return false;
  }
}

function template(expl) {
  // headline is returned separately, so the narrative starts with the reasons
  const lines = [];
  const rc = expl.rootCauses || [];
  if (rc.length) {
    lines.push('Why:');
    rc.slice(0, 4).forEach((r) => {
      const impact = r.impactFgQty ? ` Impact ${fmt(r.impactFgQty)} FG units (${usd(r.impactUsd)}).` : '';
      lines.push(`${r.rank}. ${r.type} on ${r.object}${r.location ? ' at ' + r.location : ''}` +
        `${r.bomLevel ? ` (BOM level ${r.bomLevel})` : ''}${r.week != null ? ` in ${wk(r.week)}` : ''}: ${r.driver}.${impact}`);
    });
  }
  if (!rc.length) lines.push('No binding constraint was found for this subject.');
  if (expl.facts?.order?.scheduleLines) lines.push('', `Confirmations: ${expl.facts.order.scheduleLines}.`);
  for (const p of expl.facts?.pegging?.peggedToChangedSupply || []) {
    lines.push(`Evidence: ${fmt(p.qty)} units are pegged to ${p.element}, changed in this scenario: ${p.change}.`);
  }
  if (expl.recommendations?.length) {
    lines.push('', 'Options:');
    expl.recommendations.slice(0, 3).forEach((r) => lines.push(`- ${r.lever}: ${r.detail}${r.quantifiedBenefit ? ' -> ' + r.quantifiedBenefit : ''}.`));
  }
  return lines.join('\n');
}

let clientPromise;
async function client() {
  if (!clientPromise) {
    clientPromise = (async () => {
      const { OrchestrationClient } = await import('@sap-ai-sdk/orchestration');
      return new OrchestrationClient(
        {
          promptTemplating: {
            model: {
              name: process.env.AI_MODEL || 'gpt-4o',
              params: { max_tokens: 700, temperature: 0.1 },
            },
            prompt: {
              template: [
                { role: 'system', content: SYSTEM_PROMPT },
                { role: 'user', content: 'Planner question: {{?question}}\n\nFacts (JSON):\n{{?facts}}' },
              ],
            },
          },
        },
        { resourceGroup: process.env.AI_RESOURCE_GROUP || 'default' }
      );
    })();
  }
  return clientPromise;
}

async function narrate(expl, question) {
  const q = question || defaultQuestion(expl);
  if (!aiConfigured()) return { narrative: template(expl), generatedBy: 'template (AI Core not bound)' };
  try {
    const payload = JSON.stringify({
      headline: expl.headline, rootCauses: expl.rootCauses, recommendations: expl.recommendations,
      facts: trimFacts(expl.facts),
    });
    const res = await (await client()).chatCompletion({ placeholderValues: { question: q, facts: payload } });
    return { narrative: res.getContent() || template(expl), generatedBy: `SAP Generative AI Hub / ${process.env.AI_MODEL || 'gpt-4o'}` };
  } catch (e) {
    LOG.warn('AI narration failed, using template:', e.message);
    return { narrative: template(expl), generatedBy: 'template (AI call failed)' };
  }
}

function defaultQuestion(expl) {
  return {
    ORDER: `Why is order ${expl.subjectId} not delivered as requested, and what can I do?`,
    SHORTAGE: `Why is ${expl.subjectId} short and which customers are affected?`,
    CAPACITY: `Why is ${expl.subjectId} overloaded?`,
    RUN: `Why did planning scenario ${expl.subjectId} produce this result compared with baseline?`,
  }[expl.subjectType] || 'Explain this planning result.';
}

/** keep the prompt compact: cap long arrays (token budget + data minimisation) */
function trimFacts(f) {
  return JSON.parse(JSON.stringify(f || {}, (k, v) => (Array.isArray(v) && v.length > 15 ? [...v.slice(0, 15), `...${v.length - 15} more`] : v)));
}

module.exports = { narrate, template, aiConfigured };
