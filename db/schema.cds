namespace hx.ibp.explain;

using { cuid, managed } from '@sap/cds/common';

// ---------------------------------------------------------------------------
// Master data (replicated from S/4HANA / IBP master data types)
// ---------------------------------------------------------------------------
entity Products {
  key ID               : String(40);
      description      : String(120);
      s4_material_type : String(4);
      product_group    : String(40);
      unit_value_usd   : Decimal(15, 2);
      bom_level        : Integer;
      base_uom         : String(3);
}

entity Locations {
  key ID            : String(20);
      location_type : String(10);
      name          : String(120);
      country       : String(2);
      s4_plant      : String(4);
}

entity Customers {
  key ID                  : String(20);
      name                : String(120);
      region              : String(10);
      priority            : Integer;
      s4_business_partner : String(10);
}

entity Resources {
  key ID             : String(30);
      location       : String(20);
      description    : String(120);
      category       : String(20);
      hours_per_week : Decimal(10, 2);
}

entity BOMItems {
  key plant           : String(20);
  key parent          : String(40);
  key component       : String(40);
      qty_per         : Decimal(13, 3);
      component_level : Integer;
}

entity ProductionSourceResources {
  key production_source_id       : String(60);
  key resource_id                : String(30);
      product_id                 : String(40);
      location_id                : String(20);
      hours_per_unit             : Decimal(10, 4);
      production_lead_time_weeks : Integer;
}

entity TransportationLanes {
  key from_location   : String(20);
  key to_location     : String(20);
  key product_id      : String(40);
      lead_time_weeks : Integer;
      mode            : String(30);
}

entity SupplierSourcing {
  key product_id             : String(40);
  key supplier_id            : String(20);
      planned_delivery_weeks : Integer;
      moq_rounding           : Integer;
      unit_price_usd         : Decimal(15, 2);
}

// ---------------------------------------------------------------------------
// Planning runs / scenarios (IBP scenario or version, or OBP planning run)
// ---------------------------------------------------------------------------
entity Scenarios {
  key ID          : String(30);
      name        : String(80);
      description : String(1000);
}

entity PlanRuns : cuid, managed {
  scenario      : String(30);
  planning_area : String(20);   // e.g. SAPIBP1 (time-series) or the OBP planning area
  run_type      : String(20);   // TS_HEURISTIC | TS_OPTIMIZER | OBP_PRIORITY | SIMULATOR
  source        : String(20);   // IBP | CPI | SIMULATOR
  status        : String(20);
  started_at    : Timestamp;
  finished_at   : Timestamp;
  note          : String(500);
}

/** What changed in a scenario versus baseline (drivers for explanations) */
entity ScenarioChanges {
  key ID             : String(20);
      scenario       : String(30);
      object_type    : String(30);   // PURCHASE_ORDER | RESOURCE | SALES_ORDER | ...
      object_id      : String(60);
      product        : String(40);
      location       : String(20);
      attribute      : String(40);
      base_value     : Decimal(15, 2);
      scenario_value : Decimal(15, 2);
      reason         : String(200);
}

// ---------------------------------------------------------------------------
// Planning results
// ---------------------------------------------------------------------------
entity OrderFulfillment {
  key scenario                  : String(30);
  key order_id                  : String(20);
      item                      : String(6);
      customer                  : String(20);
      priority                  : Integer;
      product                   : String(40);
      location                  : String(20);
      req_week                  : Integer;
      req_date                  : Date;
      order_qty                 : Decimal(15, 2);
      confirmed_on_time         : Decimal(15, 2);
      confirmed_late            : Decimal(15, 2);
      unconfirmed               : Decimal(15, 2);
      max_delay_weeks           : Integer;
      status                    : String(10);   // ON_TIME | LATE | SHORT
      primary_constraint_type   : String(20);
      primary_constraint_object : String(80);
      revenue_at_risk_usd       : Decimal(17, 2);
      schedule_lines            : String(200);
}

/** One row per binding constraint detected at the requested date of an order */
entity ConstraintEvents {
  key event_id                : String(60);
      scenario                : String(30);
      order_id                : String(20);
      customer                : String(20);
      fg_product              : String(40);
      fg_location             : String(20);
      req_week                : Integer;
      fg_shortfall_qty        : Decimal(15, 2);
      is_primary              : Boolean;
      constraint_type         : String(20);   // MATERIAL | CAPACITY | LEAD_TIME
      constraint_object       : String(80);
      constraint_product      : String(40);
      constraint_location     : String(20);
      constraint_week         : Integer;
      bom_level               : Integer;
      component_shortfall_qty : Decimal(15, 2);
      supplier                : String(20);
      root_cause_path         : String(1000);
}

/** Time-phased requirement vs supply for purchased components (TS view) */
entity ComponentShortages {
  key scenario          : String(30);
  key product           : String(40);
  key location          : String(20);
  key week              : Integer;
      bom_level         : Integer;
      supplier          : String(20);
      week_date         : Date;
      requirement_qty   : Decimal(15, 2);
      supply_qty        : Decimal(15, 2);
      cum_requirement   : Decimal(17, 2);
      cum_supply        : Decimal(17, 2);
      projected_balance : Decimal(17, 2);
      shortage_flag     : Boolean;
}

entity CapacityLoad {
  key scenario                 : String(30);
  key resource                 : String(30);
  key week                     : Integer;
      location                 : String(20);
      week_date                : Date;
      available_hours          : Decimal(10, 2);
      constrained_load_hours   : Decimal(10, 2);
      unconstrained_load_hours : Decimal(10, 2);
      utilization_pct          : Decimal(6, 1);
      overload_hours           : Decimal(10, 2);
}

/** Multi-level pegging: sales order -> FG -> PCBA -> module -> chip supply element */
entity Pegging {
  key peg_id           : String(40);
      scenario         : String(30);
      parent_peg_id    : String(40);
      order_id         : String(20);
      customer         : String(20);
      fg_product       : String(40);
      peg_depth        : Integer;
      bom_level        : Integer;
      product          : String(40);
      location         : String(20);
      need_week        : Integer;
      need_date        : Date;
      supply_type      : String(30);
      supply_element   : String(80);
      supply_week      : Integer;
      supply_date      : Date;
      pegged_qty       : Decimal(15, 2);
      fg_commit_week   : Integer;
      order_req_week   : Integer;
      backlog_recovery : Boolean;
}

entity ScenarioKPIs {
  key scenario              : String(30);
      orders                : Integer;
      order_qty             : Decimal(17, 2);
      on_time_qty           : Decimal(17, 2);
      late_qty              : Decimal(17, 2);
      unconfirmed_qty       : Decimal(17, 2);
      on_time_fill_rate_pct : Decimal(6, 2);
      orders_on_time_pct    : Decimal(6, 2);
      revenue_at_risk_usd   : Decimal(17, 2);
      top_constraints       : String(1000);
}

/** Audit trail of generated explanations (facts + narrative) */
entity Explanations : cuid, managed {
  scenario     : String(30);
  subject_type : String(20);  // ORDER | SHORTAGE | CAPACITY | RUN | QUESTION
  subject_id   : String(80);
  question     : String(1000);
  headline     : String(500);
  narrative    : LargeString;
  facts        : LargeString; // JSON evidence the narrative was grounded on
  generated_by : String(80);
}
