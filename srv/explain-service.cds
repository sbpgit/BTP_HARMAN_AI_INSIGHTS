using hx.ibp.explain as db from '../db/schema';

@path: '/odata/v4/explain'
@requires: ['Planner', 'PlanningAdmin']
service ExplainService {

  @readonly entity Scenarios          as projection on db.Scenarios;
  @readonly entity ScenarioKPIs       as projection on db.ScenarioKPIs;
  @readonly entity ScenarioChanges    as projection on db.ScenarioChanges;
  @readonly entity Orders             as projection on db.OrderFulfillment;
  @readonly entity ConstraintEvents   as projection on db.ConstraintEvents;
  @readonly entity ComponentShortages as projection on db.ComponentShortages;
  @readonly entity CapacityLoad       as projection on db.CapacityLoad;
  @readonly entity Pegging            as projection on db.Pegging;
  @readonly entity Products           as projection on db.Products;
  @readonly entity Resources          as projection on db.Resources;
  @readonly entity Customers          as projection on db.Customers;
  @readonly entity PlanRuns           as projection on db.PlanRuns;
  @readonly entity Explanations       as projection on db.Explanations;

  type RootCause {
    rank        : Integer;
    type        : String;   // MATERIAL | CAPACITY | LEAD_TIME | ALLOCATION | BACKLOG
    object      : String;
    location    : String;
    bomLevel    : Integer;
    week        : Integer;
    impactFgQty : Decimal(15, 2);
    impactUsd   : Decimal(17, 2);
    driver      : String;   // what changed / why the constraint binds
    evidence    : String;   // IDs of supply elements, resources, scenario changes
  }

  type Recommendation {
    lever             : String;
    detail            : String;
    quantifiedBenefit : String;
    feasibility       : String;
  }

  type Explanation {
    explanationId   : UUID;
    subjectType     : String;
    subjectId       : String;
    scenario        : String;
    headline        : String;
    narrative       : LargeString;
    rootCauses      : many RootCause;
    recommendations : many Recommendation;
    facts           : LargeString;   // JSON evidence (pegging chain, loads, balances)
    generatedBy     : String;
  }

  /** Why is this sales order late / short? Walks pegging to the root constraint. */
  function explainOrder(scenario : String, orderId : String, narrate : Boolean)            returns Explanation;

  /** Why is this component short, which finished goods and customers does it hit? */
  function explainShortage(scenario : String, product : String, location : String, narrate : Boolean) returns Explanation;

  /** Why is this resource overloaded, and how much is backlog (bow-wave) vs new demand? */
  function explainCapacity(scenario : String, resource : String, narrate : Boolean)          returns Explanation;

  /** Why did this planning run produce this result compared with the baseline run? */
  function explainRun(scenario : String, baseline : String, narrate : Boolean)               returns Explanation;

  /** Natural-language question, routed to the right analysis and grounded in facts */
  action   ask(scenario : String, question : String)                                       returns Explanation;

  /** Full multi-level pegging tree of an order as nested JSON */
  function peggingTree(scenario : String, orderId : String)                                 returns LargeString;

  /** Push results of an IBP / OBP planning run (e.g. from an SAP Integration Suite iFlow) */
  @requires: 'PlanningAdmin'
  action   ingestPlanRun(run : {
    scenario : String; planningArea : String; runType : String;
  }, payload : LargeString)                                                                 returns String;

  /** Pull key figures / order data for a scenario from IBP via the IBP destination */
  @requires: 'PlanningAdmin'
  action   syncFromIBP(scenario : String, planningArea : String, versionId : String)         returns String;
}
