/* checksum : 191aceff408404bd5c844456ff81e8e0 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service IBPMasterDataAPI {
  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity ValueResultSet {
    @sap.unicode : 'false'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Name : String not null;
    @sap.unicode : 'false'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Value : String not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity VersionSpecificMasterDataTypes {
    @sap.unicode : 'false'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key PlanningAreaID : String(10) not null;
    @sap.unicode : 'false'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key VersionID : String(10) not null;
    @sap.unicode : 'false'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key MasterDataTypeID : String(32) not null;
    @sap.unicode : 'false'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PlanningAreaDescr : String(250) not null;
    @sap.unicode : 'false'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    VersionName : String(64) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCEPRODUCTION {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCEPRODUCTION_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCEPRODUCTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCEPRODUCTION : Association to many SQSOURCEPRODUCTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCEPRODUCTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCEPRODUCTION : Association to SQSOURCEPRODUCTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQLOCATIONPRODUCT {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQLOCATIONPRODUCT_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQLOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQLOCATIONPRODUCT : Association to many SQLOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQLOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQLOCATIONPRODUCT : Association to SQLOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCEPRODUCTION {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCEPRODUCTION_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCEPRODUCTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCEPRODUCTION : Association to many SHSOURCEPRODUCTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCEPRODUCTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCEPRODUCTION : Association to SHSOURCEPRODUCTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDGRPATTRVALRESASSIGN {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDGRPATTRVALRESASSIGN_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDGRPATTRVALRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDGRPATTRVALRESASSIGN : Association to many SDGRPATTRVALRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDGRPATTRVALRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDGRPATTRVALRESASSIGN : Association to SDGRPATTRVALRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQLOCATIONPRODUCTSUB {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQLOCATIONPRODUCTSUB_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQLOCATIONPRODUCTSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQLOCATIONPRODUCTSUB : Association to many SQLOCATIONPRODUCTSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQLOCATIONPRODUCTSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQLOCATIONPRODUCTSUB : Association to SQLOCATIONPRODUCTSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Partial Configuration'
    VCPN012 : String(20);
    @sap.label : 'ABCXYZCOUNTERHELPER'
    ABCXYZCOUNTERHELPER : Decimal(18, 6);
    @sap.label : 'Build Strategy'
    VCBUILDSTRAT : String(5);
    @sap.label : 'Build Strategy Desc'
    VCBUILDSTRATDESC : String(40);
    @sap.label : 'Model'
    VCMODEL : String(20);
    @sap.label : 'Model Range'
    VCMODELRANGE : String(20);
    @sap.label : 'Reference Product ID'
    VCREFERENCEPRD : String(40);
    @sap.label : 'Critical Component Flag'
    VCCRITICALCOMP : String(1);
    @sap.label : 'VC Attribute 01'
    VCPRODATT01 : String(160);
    @sap.label : 'VC Attribute 02'
    VCPRODATT02 : String(160);
    @sap.label : 'VC Attribute 03'
    VCPRODATT03 : String(160);
    @sap.label : 'VC Attribute 04'
    VCPRODATT04 : String(160);
    @sap.label : 'VC Attribute 05'
    VCPRODATT05 : String(160);
    @sap.label : 'VC Attribute 06'
    VCPRODATT06 : String(160);
    @sap.label : 'VC Attribute 07'
    VCPRODATT07 : String(160);
    @sap.label : 'VC Attribute 08'
    VCPRODATT08 : String(160);
    @sap.label : 'VC Attribute 09'
    VCPRODATT09 : String(160);
    @sap.label : 'VC Attribute 10'
    VCPRODATT10 : String(160);
    @sap.label : 'Dummy Material Flag'
    VCDUMMYMATFLAG : String(1);
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPPRODUCT_VI {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Partial Configuration'
    VCPN012 : String(20);
    @sap.label : 'ABCXYZCOUNTERHELPER'
    ABCXYZCOUNTERHELPER : Decimal(18, 6);
    @sap.label : 'Build Strategy'
    VCBUILDSTRAT : String(5);
    @sap.label : 'Build Strategy Desc'
    VCBUILDSTRATDESC : String(40);
    @sap.label : 'Model'
    VCMODEL : String(20);
    @sap.label : 'Model Range'
    VCMODELRANGE : String(20);
    @sap.label : 'Reference Product ID'
    VCREFERENCEPRD : String(40);
    @sap.label : 'Critical Component Flag'
    VCCRITICALCOMP : String(1);
    @sap.label : 'VC Attribute 01'
    VCPRODATT01 : String(160);
    @sap.label : 'VC Attribute 02'
    VCPRODATT02 : String(160);
    @sap.label : 'VC Attribute 03'
    VCPRODATT03 : String(160);
    @sap.label : 'VC Attribute 04'
    VCPRODATT04 : String(160);
    @sap.label : 'VC Attribute 05'
    VCPRODATT05 : String(160);
    @sap.label : 'VC Attribute 06'
    VCPRODATT06 : String(160);
    @sap.label : 'VC Attribute 07'
    VCPRODATT07 : String(160);
    @sap.label : 'VC Attribute 08'
    VCPRODATT08 : String(160);
    @sap.label : 'VC Attribute 09'
    VCPRODATT09 : String(160);
    @sap.label : 'VC Attribute 10'
    VCPRODATT10 : String(160);
    @sap.label : 'Dummy Material Flag'
    VCDUMMYMATFLAG : String(1);
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPPRODUCT : Association to many VCPPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPPRODUCT : Association to VCPPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCATIONASSEMBLYCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'BOM Component Coefficient'
    BOMCOMPONENTCOEFFICENT : Decimal(18, 6);
    @sap.label : 'BOM Source ID'
    VCBOMSOURCEID : String(68);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPLOCATIONASSEMBLYCOMPONENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    NavVCPLOCATIONASSEMBLYCOMPONENT : Association to many VCPLOCATIONASSEMBLYCOMPONENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPLOCATIONASSEMBLYCOMPONENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPLOCATIONASSEMBLYCOMPONENT : Association to VCPLOCATIONASSEMBLYCOMPONENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDLOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDLOCATION_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDLOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDLOCATION : Association to many SDLOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDLOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDLOCATION : Association to SDLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONRESOURCESUB {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONRESOURCESUB_VI {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRODUCTIONRESOURCESUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRODUCTIONRESOURCESUB : Association to many SDPRODUCTIONRESOURCESUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRODUCTIONRESOURCESUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRODUCTIONRESOURCESUB : Association to SDPRODUCTIONRESOURCESUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPSOURCECUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Algorithm Picked in Stats'
    ZFCSTALG : String(119);
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPSOURCECUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Algorithm Picked in Stats'
    ZFCSTALG : String(119);
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCECUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCECUSTOMER : Association to many SBPSOURCECUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCECUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCECUSTOMER : Association to SBPSOURCECUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDLOCATIONPRODUCT {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDLOCATIONPRODUCT_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDLOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDLOCATIONPRODUCT : Association to many SDLOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDLOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDLOCATIONPRODUCT : Association to SDLOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDROPTYPE {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDROPTYPE_VI {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDROPTYPETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDROPTYPE : Association to many SDROPTYPE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDROPTYPEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDROPTYPE : Association to SDROPTYPE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCT_VI {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRODUCT : Association to many SDPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRODUCT : Association to SDPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQRESOURCELOCATION {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQRESOURCELOCATION_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQRESOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQRESOURCELOCATION : Association to many SQRESOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQRESOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQRESOURCELOCATION : Association to SQRESOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SCPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Product Line'
    ZPRDLINE : String(40);
    @sap.label : 'Dummy Material Flag IBP'
    ZDUMMYMATFLAG : String(1);
    @sap.label : 'Old Product ID'
    ZOLDMATNO : String(40);
    @sap.label : 'Product Collection Code'
    ZPCC : String(40);
    @sap.label : 'Product Collection Code Desc'
    ZPCCDESC : String(40);
    @sap.label : 'PLM Status Desc'
    ZPLMSTATUSDESC : String(60);
    @sap.label : 'Portfolio Category'
    ZPORTFOLIOCAT : String(40);
    @sap.label : 'Portfolio Category Desc'
    ZPORTFOLIOCATDESC : String(80);
    @sap.label : 'Portfolio Sub-Category'
    ZPORTFOLIOSUBCAT : String(40);
    @sap.label : 'Portfolio Sub-Category Desc'
    ZPORTFOLIOSUBCATDESC : String(80);
    @sap.label : 'Product Group 1'
    ZPRDGRP1 : String(40);
    @sap.label : 'Product Group 2'
    ZPRDGRP2 : String(40);
    @sap.label : 'Product Group 3'
    ZPRDGRP3 : String(40);
    @sap.label : 'Product Group 4'
    ZPRDGRP4 : String(40);
    @sap.label : 'Product Line Desc'
    ZPRDLINEDESC : String(40);
    @sap.label : 'Product Reference Ind'
    ZPRDREFIND : String(40);
    @sap.label : 'Time Series Property Indicator'
    ZTIMESERIESPROPERTY : String(60);
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SCPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    NavSCPRODUCT : Association to many SCPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SCPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSCPRODUCT : Association to SCPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCEPRODUCTION {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCEPRODUCTION_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCEPRODUCTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCEPRODUCTION : Association to many SOPSOURCEPRODUCTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCEPRODUCTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCEPRODUCTION : Association to SOPSOURCEPRODUCTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPLOCATIONPRODUCTSUBR {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Loc Prod Ref'
    MANDATTRLOCPRODSUBR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDPRODUCTTO {
    @sap.label : 'Product To'
    key PRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Product To Desc'
    PRDTODESCR : String(60);
    @sap.label : 'Product-To Family'
    PRDTOFAMILY : String(40);
    @sap.label : 'Product-To Series'
    PRDTOSERIES : String(40);
    @sap.label : 'Product-To Sub Family'
    PRDTOSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCAOPTIONCOMBINATIONS {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'VC Start Date'
    VCSTARTDATE : Integer;
    @sap.label : 'VC End Date'
    VCENDDATE : Integer;
    @sap.label : 'PO for Option Plan'
    VCPOOPTIONPLAN : Decimal(18, 6);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid From'
    VCOPVALIDFROM : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid To'
    VCOPVALIDTO : DateTime;
    @sap.label : 'VC Deletion Flag 01'
    VCDELETIONFLAG1 : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCAOPTIONCOMBINATIONS_VI {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'VC Start Date'
    VCSTARTDATE : Integer;
    @sap.label : 'VC End Date'
    VCENDDATE : Integer;
    @sap.label : 'PO for Option Plan'
    VCPOOPTIONPLAN : Decimal(18, 6);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid From'
    VCOPVALIDFROM : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid To'
    VCOPVALIDTO : DateTime;
    @sap.label : 'VC Deletion Flag 01'
    VCDELETIONFLAG1 : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCAOPTIONCOMBINATIONSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCAOPTIONCOMBINATIONS : Association to many VCAOPTIONCOMBINATIONS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCAOPTIONCOMBINATIONSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCAOPTIONCOMBINATIONS : Association to VCAOPTIONCOMBINATIONS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHAGGCONSTRAINT {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHAGGCONSTRAINT_VI {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHAGGCONSTRAINTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHAGGCONSTRAINT : Association to many SHAGGCONSTRAINT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHAGGCONSTRAINTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHAGGCONSTRAINT : Association to SHAGGCONSTRAINT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPRISKOPP : Association to many SBPRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPRISKOPP : Association to SBPRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHSOURCECUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHSOURCECUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCECUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCECUSTOMER : Association to many SHSOURCECUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCECUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCECUSTOMER : Association to SHSOURCECUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHSOURCELOCATIONR {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Source Location Reference'
    MATTRSOURCELOCATIONR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHSRESOURCELOCATION {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Substitute Resource Constr Type'
    SCONSTRAINTTYPE : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPLOCATIONTO {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-To Location Desc'
    LOCTODESCR : String(60);
    @sap.label : 'Ship-To Location Region'
    LOCTOREGION : String(20);
    @sap.label : 'Ship-To Location Type'
    LOCTOTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCECUSTGROUPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCECUSTGROUPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCECUSTGROUPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCECUSTGROUPLAG : Association to many SQSOURCECUSTGROUPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCECUSTGROUPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCECUSTGROUPLAG : Association to SQSOURCECUSTGROUPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPLOCATIONPRODUCT {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPLOCATIONPRODUCT_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPLOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPLOCATIONPRODUCT : Association to many SOPLOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPLOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPLOCATIONPRODUCT : Association to SOPLOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPCUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPCUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPCUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPCUSTOMER : Association to many SOPCUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPCUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPCUSTOMER : Association to SOPCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Component Desc.'
    PRDFRDESCR : String(60);
    @sap.label : 'Component Family'
    PRDFRFAMILY : String(40);
    @sap.label : 'Component Series'
    PRDFRSERIES : String(40);
    @sap.label : 'Component Sub Family'
    PRDFRSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHPRODUCTTO {
    @sap.label : 'Product To'
    key PRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Product To Desc'
    PRDTODESCR : String(60);
    @sap.label : 'Product-To Family'
    PRDTOFAMILY : String(40);
    @sap.label : 'Product-To Series'
    PRDTOSERIES : String(40);
    @sap.label : 'Product-To Sub Family'
    PRDTOSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHSOURCELOCATION {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHSOURCELOCATION_VI {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCELOCATION : Association to many SHSOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCELOCATION : Association to SHSOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQLOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQLOCATION_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQLOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQLOCATION : Association to many SQLOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQLOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQLOCATION : Association to SQLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONRESOURCESUB {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONRESOURCESUB_VI {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRODUCTIONRESOURCESUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRODUCTIONRESOURCESUB : Association to many SHPRODUCTIONRESOURCESUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRODUCTIONRESOURCESUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRODUCTIONRESOURCESUB : Association to SHPRODUCTIONRESOURCESUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPCUSTOMERPRODUCT {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPCUSTOMERPRODUCT_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPCUSTOMERPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPCUSTOMERPRODUCT : Association to many SBPCUSTOMERPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPCUSTOMERPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPCUSTOMERPRODUCT : Association to SBPCUSTOMERPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPLOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPLOCATION_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPLOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPLOCATION : Association to many VCPLOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPLOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPLOCATION : Association to VCPLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQFORECASTCONSUMPTIONMODE {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQFORECASTCONSUMPTIONMODE_VI {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQFORECASTCONSUMPTIONMODETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQFORECASTCONSUMPTIONMODE : Association to many SQFORECASTCONSUMPTIONMODE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQFORECASTCONSUMPTIONMODEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQFORECASTCONSUMPTIONMODE : Association to SQFORECASTCONSUMPTIONMODE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDSOURCECUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDSOURCECUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCECUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCECUSTOMER : Association to many SDSOURCECUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCECUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCECUSTOMER : Association to SDSOURCECUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQSOURCECUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQSOURCECUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Algorithm whose result is used as the forecast'
    FCSTALGORITHM : String(120);
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Customer Source'
    CLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCECUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCECUSTOMER : Association to many SQSOURCECUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCECUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCECUSTOMER : Association to SQSOURCECUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRDGRPLOCCUST {
    @sap.label : 'Product Group'
    key PRDGROUP : String(20) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'PO Attribute 1'
    ZPOATTRIBUTE1 : Decimal(18, 6);
    @sap.label : 'Attribute'
    ZATTRIBUTE : String(60);
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRDGRPLOCCUST_VI {
    @sap.label : 'Product Group'
    key PRDGROUP : String(20) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'PO Attribute 1'
    ZPOATTRIBUTE1 : Decimal(18, 6);
    @sap.label : 'Attribute'
    ZATTRIBUTE : String(60);
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRDGRPLOCCUSTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRDGRPLOCCUST : Association to many SBPPRDGRPLOCCUST_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRDGRPLOCCUSTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRDGRPLOCCUST : Association to SBPPRDGRPLOCCUST {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCECUSTOMERVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCECUSTOMERVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCECUSTOMERVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCECUSTOMERVALIDITY : Association to many SDSOURCECUSTOMERVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCECUSTOMERVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCECUSTOMERVALIDITY : Association to SDSOURCECUSTOMERVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHLOCATIONPRODUCT {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHLOCATIONPRODUCT_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHLOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHLOCATIONPRODUCT : Association to many SHLOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHLOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHLOCATIONPRODUCT : Association to SHLOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPSOURCELOCATION {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPSOURCELOCATION_VI {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCELOCATION : Association to many SBPSOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCELOCATION : Association to SBPSOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Component Desc.'
    PRDFRDESCR : String(60);
    @sap.label : 'Component Family'
    PRDFRFAMILY : String(40);
    @sap.label : 'Component Series'
    PRDFRSERIES : String(40);
    @sap.label : 'Component Sub Family'
    PRDFRSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCELOCATIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCELOCATIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCELOCATIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCELOCATIONVALIDITY : Association to many SBPSOURCELOCATIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCELOCATIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCELOCATIONVALIDITY : Association to SBPSOURCELOCATIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPSOURCECUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPSOURCECUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPSOURCECUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPSOURCECUSTOMER : Association to many VCPSOURCECUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPSOURCECUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPSOURCECUSTOMER : Association to VCPSOURCECUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPCLASS {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Characteristic Priority'
    VCCHARPRIORITY : String(10);
    @sap.label : 'Characteristic Type'
    VCCHARTYPE : String(10);
    @sap.label : 'Sort Characteristic'
    VCSORTCHAR : String(10);
    @sap.label : 'Sort Characteristic Value'
    VCSORTCHARVALUE : String(10);
    @sap.label : 'Characteristic Group'
    VCCHARGROUP : String(20);
    @sap.label : 'Flex 1 %'
    VCFLEX1 : Decimal(18, 6);
    @sap.label : 'Flex 2 %'
    VCFLEX2 : Decimal(18, 6);
    @sap.label : 'Flex 3 %'
    VCFLEX3 : Decimal(18, 6);
    @sap.label : 'Class'
    VCCLASSNAME : String(20);
    @sap.label : 'Horizon for Flex 1'
    VCFLEX1HORIZON : Integer;
    @sap.label : 'Horizon for Flex 2'
    VCFLEX2HORIZON : Integer;
    @sap.label : 'Horizon for Flex 3'
    VCFLEX3HORIZON : Integer;
    @sap.label : 'Class Desc'
    VCCLASSDESC : String(120);
    @sap.label : 'Characteristic Desc'
    VCCHARDESC : String(160);
    @sap.label : 'Characteristic'
    VCCHARNAME : String(80);
    @sap.label : 'Characteristic value'
    VCCHARVALUENAME : String(80);
    @sap.label : 'Characteristic Value Desc'
    VCCHARVALUEDESC : String(160);
    @sap.label : 'Reference Characteristic ID'
    VCCHARREF : String(100);
    @sap.label : 'Reference Characteristic'
    VCCHARNAMEREF : String(80);
    @sap.label : 'Reference Characteristic Desc'
    VCCHARDESCREF : String(160);
    @sap.label : 'Reference Characteristic value ID'
    VCCHARVALUEREF : String(80);
    @sap.label : 'Characteristic value Generated Flag'
    VCCHARVALUEGENFLAG : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPCLASS_VI {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    @sap.label : 'Characteristic Priority'
    VCCHARPRIORITY : String(10);
    @sap.label : 'Characteristic Type'
    VCCHARTYPE : String(10);
    @sap.label : 'Sort Characteristic'
    VCSORTCHAR : String(10);
    @sap.label : 'Sort Characteristic Value'
    VCSORTCHARVALUE : String(10);
    @sap.label : 'Characteristic Group'
    VCCHARGROUP : String(20);
    @sap.label : 'Flex 1 %'
    VCFLEX1 : Decimal(18, 6);
    @sap.label : 'Flex 2 %'
    VCFLEX2 : Decimal(18, 6);
    @sap.label : 'Flex 3 %'
    VCFLEX3 : Decimal(18, 6);
    @sap.label : 'Class'
    VCCLASSNAME : String(20);
    @sap.label : 'Horizon for Flex 1'
    VCFLEX1HORIZON : Integer;
    @sap.label : 'Horizon for Flex 2'
    VCFLEX2HORIZON : Integer;
    @sap.label : 'Horizon for Flex 3'
    VCFLEX3HORIZON : Integer;
    @sap.label : 'Class Desc'
    VCCLASSDESC : String(120);
    @sap.label : 'Characteristic Desc'
    VCCHARDESC : String(160);
    @sap.label : 'Characteristic'
    VCCHARNAME : String(80);
    @sap.label : 'Characteristic value'
    VCCHARVALUENAME : String(80);
    @sap.label : 'Characteristic Value Desc'
    VCCHARVALUEDESC : String(160);
    @sap.label : 'Reference Characteristic ID'
    VCCHARREF : String(100);
    @sap.label : 'Reference Characteristic'
    VCCHARNAMEREF : String(80);
    @sap.label : 'Reference Characteristic Desc'
    VCCHARDESCREF : String(160);
    @sap.label : 'Reference Characteristic value ID'
    VCCHARVALUEREF : String(80);
    @sap.label : 'Characteristic value Generated Flag'
    VCCHARVALUEGENFLAG : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPCLASSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPCLASS : Association to many VCPCLASS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPCLASSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPCLASS : Association to VCPCLASS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDLOCATIONTO {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-To Location Desc'
    LOCTODESCR : String(60);
    @sap.label : 'Ship-To Location Region'
    LOCTOREGION : String(20);
    @sap.label : 'Ship-To Location Type'
    LOCTOTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCT_VI {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRODUCT : Association to many SBPPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRODUCT : Association to SBPPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPSOURCELOCATION {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPSOURCELOCATION_VI {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCELOCATION : Association to many SOPSOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCELOCATION : Association to SOPSOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPLOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Location Calendar ID'
    ZCALID : String(32);
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPLOCATION_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Location Calendar ID'
    ZCALID : String(32);
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPLOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPLOCATION : Association to many SBPLOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPLOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPLOCATION : Association to SBPLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPFORECASTCONSUMPTIONMODE {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPFORECASTCONSUMPTIONMODE_VI {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPFORECASTCONSUMPTIONMODETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPFORECASTCONSUMPTIONMODE : Association to many SOPFORECASTCONSUMPTIONMODE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPFORECASTCONSUMPTIONMODEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPFORECASTCONSUMPTIONMODE : Association to SOPFORECASTCONSUMPTIONMODE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHPRODUCTSUBSTITUTION {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHPRODUCTSUBSTITUTION_VI {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRODUCTSUBSTITUTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRODUCTSUBSTITUTION : Association to many SHPRODUCTSUBSTITUTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRODUCTSUBSTITUTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRODUCTSUBSTITUTION : Association to SHPRODUCTSUBSTITUTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQSOURCELOCATION {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQSOURCELOCATION_VI {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCELOCATION : Association to many SQSOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCELOCATION : Association to SQSOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONSOURCEITM {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONSOURCEITM_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRODUCTIONSOURCEITMTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRODUCTIONSOURCEITM : Association to many SBPPRODUCTIONSOURCEITM_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRODUCTIONSOURCEITMMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRODUCTIONSOURCEITM : Association to SBPPRODUCTIONSOURCEITM {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity VCPCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Component Flag'
    VCCOMPONENTFLAG : String(1);
    @sap.label : 'Dummy Component Flag'
    VCDUMMYCOMPFLAG : String(1);
    @sap.label : 'Component Desc.'
    PRDFRDESCR : String(60);
    @sap.label : 'Component Family'
    PRDFRFAMILY : String(40);
    @sap.label : 'Component Series'
    PRDFRSERIES : String(40);
    @sap.label : 'Component Sub Family'
    PRDFRSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQLOCATIONPRODUCTSUBR {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Loc Prod Ref'
    MANDATTRLOCPRODSUBR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Component Desc.'
    PRDFRDESCR : String(60);
    @sap.label : 'Component Family'
    PRDFRFAMILY : String(40);
    @sap.label : 'Component Series'
    PRDFRSERIES : String(40);
    @sap.label : 'Component Sub Family'
    PRDFRSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCECUSTGROUPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCECUSTGROUPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCECUSTGROUPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCECUSTGROUPLAG : Association to many SHSOURCECUSTGROUPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCECUSTGROUPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCECUSTGROUPLAG : Association to SHSOURCECUSTGROUPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHPRODUCTIONSOURCEITMR {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Reference'
    MATTRPRODUCTIONSOURCEITMR : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDLOCATIONPRODUCTSUBR {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Loc Prod Ref'
    MANDATTRLOCPRODSUBR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSHELFLIFE {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSHELFLIFE_VI {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSHELFLIFETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSHELFLIFE : Association to many SDSHELFLIFE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSHELFLIFEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSHELFLIFE : Association to SDSHELFLIFE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHRESOURCE : Association to many SHRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHRESOURCE : Association to SHRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCEPRODUCTION {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCEPRODUCTION_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCEPRODUCTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCEPRODUCTION : Association to many SBPSOURCEPRODUCTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCEPRODUCTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCEPRODUCTION : Association to SBPSOURCEPRODUCTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPLOCATIONPRODUCT {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPLOCATIONPRODUCT_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @sap.label : 'Include Pipeline Stock in Budgeted Safety Stock'
    INCLUDEPSINBUDGETSS : String(1);
    @sap.label : 'Minimum Remaining Shelf-Life Value for Inventory Target'
    MINSHELFLIFEINVTARGETTRIGGER : Integer;
    @sap.label : 'ADU Calculation Future Horizon'
    ADUFUTUREHORIZON : Integer;
    @sap.label : 'ADU Calculation Past Horizon'
    ADUPASTHORIZON : Integer;
    @sap.label : 'Coefficient of Variation Horizon'
    COVHORIZON : Integer;
    @sap.label : 'Critical Operation Protection'
    CRITICALOPERATION : String(1);
    @sap.label : 'DDMRP ADH'
    DDADH : Integer;
    @sap.label : 'DDMRP Analytic Periods'
    DDANALYTICPERIODS : Integer;
    @sap.label : 'DDMRP Additional Order Spike Horizon'
    DDAOSH : Integer;
    @sap.label : 'DDMRP Lot Size Indicator'
    DDLOTSIZEINDICATOR : Integer;
    @sap.label : 'DDMRP Order Spike Threshold Percentage'
    DDOSTPCT : Integer;
    @sap.label : 'DDMRP Rounding Value'
    DDROUNDINGVALUE : Integer;
    @sap.label : 'Decoupling Points User Inputs'
    DECOUPLEPOINTINPUT : String(8);
    @sap.label : 'Reason for selection as decoupling point by algorithm'
    DECOUPLINGPOINTREASON : String(60);
    @sap.label : 'Distribution Type (G or N)'
    DISTRIBUTIONTYPE : String(1);
    @sap.label : 'Frozen Horizon'
    FROZENHORIZON : Integer;
    @sap.label : 'Green Zone Calculation Type Indicator'
    GREENZONECALCULATIONTYPE : String(1);
    @sap.label : 'Ignore Dependent Location Demand'
    IGNOREDEPLOCDEM : String(1);
    @sap.label : 'Ignore Dependent Prod Demand'
    IGNOREDEPPRODDEM : String(1);
    @sap.label : 'Inventory Holding Fair-Share Cost Policy'
    INVHOLDINGCOSTPOLICY : Integer;
    @sap.label : 'Inventory Holding Policy'
    INVHOLDINGPOLICY : Integer;
    @sap.label : 'Inventory Target Violation Fair-Share Cost Policy'
    INVTARGETVIOLCOSTPOLICY : Integer;
    @sap.label : 'Network Echelon Level'
    IOECHELONID : Integer;
    @sap.label : 'Item Type Category Indicator Override'
    ITEMTYPECATEGOVERRIDE : String(1);
    @sap.label : 'Lot-Sizing Procedure'
    LOTSIZEPOLICY : Integer;
    @sap.label : 'Lead Time Category Indicator Override'
    LTCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Internal Service Level'
    MAXINTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum Internal Service Level'
    MININTERNALSERVICELEVEL : Decimal(18, 6);
    @sap.label : 'Minimum shelf life value for independent demand'
    MINSHELFLIFEINDEPDEM : Integer;
    @sap.label : 'Minimum shelf life value for inventory target'
    MINSHELFLIFEINVTARGET : Integer;
    @sap.label : 'MOQ'
    MOQ : Decimal(18, 6);
    @sap.label : 'MRP Type Indicator'
    MRPTYPE : String(3);
    @sap.label : 'IO Network ID'
    NETWORKID : String(100);
    @sap.label : 'Non-Stocking Allocation Horizon'
    NONSTOCKALLOCATIONHORIZON : Integer;
    @sap.label : 'Order Cycle'
    ORDERCYCLE : Decimal(18, 6);
    @sap.label : 'Periods Between Replenishment'
    PBR : Decimal(18, 6);
    @sap.label : 'Number of Periods for Average Demand'
    PERIODSAVGDEMAND : Integer;
    @sap.label : 'Planner'
    PLANNER : String(40);
    @sap.label : 'Safety Stock'
    SAFETYSTOCK : Decimal(18, 6);
    @sap.label : 'Safety Stock Policy Indicator'
    SAFETYSTOCKPOLICY : String(1);
    @sap.label : 'Service Level Type Indicator'
    SERVICELEVELTYPE : String(1);
    @sap.label : 'Stocking Node Type Indicator'
    STOCKINGNODETYPE : String(1);
    @sap.label : 'Transport Substitution Policy'
    TRANSPORTSUBSTPOLICY : Integer;
    @sap.label : 'Variability Category Indicator Override'
    VARCATEGOVERRIDE : String(1);
    @sap.label : 'Maximum Green Zone Quantity'
    MAXGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Maximum Red Zone Quantity'
    MAXREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Green Zone Quantity'
    MINGREENZONEQTY : Decimal(18, 6);
    @sap.label : 'Minimum Red Zone Quantity'
    MINREDZONEQTY : Decimal(18, 6);
    @sap.label : 'Lead Time Category Indicator'
    LEADTIMECATEGORY : String(1);
    @sap.label : 'Variability Category Indicator'
    VARIABILITYCATEGORY : String(1);
    @sap.label : 'CO2 equivalent for procurement and production per base unit (in kg)'
    FOOTPRINTPERUNIT : Decimal(18, 6);
    @sap.label : 'IO Maximum Safety Days'
    IOMAXSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'IO Minimum Safety Days'
    IOMINSAFETYDAYS : Decimal(18, 6);
    @sap.label : 'Ignore Production Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNOREPRODNDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Ignore Transportation Demand in Safety Stock Calculation (Y: Ignore, N: Consider)'
    IGNORETLANEDEMANDINSAFETYSTOCK : String(1);
    @sap.label : 'Inventory Consumption Group ID'
    INVCONSUMPTIONGROUP : String(3);
    @sap.label : 'Inventory Consumption Group Description'
    INVCONSUMPTIONGROUPDESCR : String(60);
    @sap.label : 'NAG Independent Network ID'
    NAGINDEPNETWORK : String(100);
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPLOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPLOCATIONPRODUCT : Association to many SBPLOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPLOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPLOCATIONPRODUCT : Association to SBPLOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCECUSTGROUPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCECUSTGROUPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCECUSTGROUPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCECUSTGROUPLAG : Association to many SBPSOURCECUSTGROUPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCECUSTGROUPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCECUSTGROUPLAG : Association to SBPSOURCECUSTGROUPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDSOURCELOCATION {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDSOURCELOCATION_VI {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @sap.label : 'Inbound Calendar ID'
    INBOUNDCALID : String(32);
    @sap.label : 'IO Transportation Frozen Window'
    IOTFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Transportation)'
    LEADTIMETRANSPORTATION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Varation (Transportation)'
    LEADTIMETRANSPORTATIONCV : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Location'
    MATTRSOURCELOCATION : String(1);
    @sap.label : 'Transport Source Balance Receipt Scope'
    TBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    TCAPACONSPOLICY : Integer;
    @sap.label : 'Transportation Delivery Type Indicator (C or S)'
    TDELIVERYTYPE : String(1);
    @sap.label : 'Incremental Transportation Lot Size'
    TINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Location Source Invalid'
    TINVALID : String(1);
    @sap.label : 'Transportation Lead Time'
    TLEADTIME : Decimal(18, 6);
    @sap.label : 'Transportation Leadtime Error CV'
    TLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Transportation Lot Size Periods of Coverage'
    TLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maxmimum Transportation Lot Size'
    TMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Transportation Lot Size'
    TMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Transportation Calendar ID'
    TRANSPORTCALID : String(32);
    @sap.label : 'Location Transport Ratio'
    TRATIO : Decimal(18, 6);
    @sap.label : 'Transportation Rounding Value'
    TROUNDING : Decimal(18, 6);
    @sap.label : 'Transportation Shipment Frequency'
    TSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Transportation Freeze Horizon in Days'
    TFREEZEHORIZON : Integer;
    @sap.label : 'Location Source of Supply Priority'
    TPRIORITY : Decimal(18, 6);
    @sap.label : 'Transportation Goods Receipt Calendar ID'
    TGOODSRECEIPTCALID : String(32);
    @sap.label : 'Transportation Goods Receipt Time'
    TGOODSRECEIPTTIME : Integer;
    @sap.label : 'CO2 equivalent for procurement per supplier per base unit (in kg)'
    FOOTPRINTSUPPLIERPERUNIT : Decimal(18, 6);
    @sap.label : 'Threshold Value for Lead Time Rounding of Location Source'
    TLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCELOCATION : Association to many SDSOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCELOCATION : Association to SDSOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONRESOURCE {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONRESOURCE_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRODUCTIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRODUCTIONRESOURCE : Association to many SBPPRODUCTIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRODUCTIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRODUCTIONRESOURCE : Association to SBPPRODUCTIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPOPTIONCOMBINATIONS {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'VC Start Date'
    VCSTARTDATE : Integer;
    @sap.label : 'VC End Date'
    VCENDDATE : Integer;
    @sap.label : 'PO for Option Plan'
    VCPOOPTIONPLAN : Decimal(18, 6);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid From'
    VCOPVALIDFROM : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid To'
    VCOPVALIDTO : DateTime;
    @sap.label : 'VC Deletion Flag 01'
    VCDELETIONFLAG1 : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPOPTIONCOMBINATIONS_VI {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'VC Start Date'
    VCSTARTDATE : Integer;
    @sap.label : 'VC End Date'
    VCENDDATE : Integer;
    @sap.label : 'PO for Option Plan'
    VCPOOPTIONPLAN : Decimal(18, 6);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid From'
    VCOPVALIDFROM : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Option Plan Valid To'
    VCOPVALIDTO : DateTime;
    @sap.label : 'VC Deletion Flag 01'
    VCDELETIONFLAG1 : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPOPTIONCOMBINATIONSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPOPTIONCOMBINATIONS : Association to many VCPOPTIONCOMBINATIONS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPOPTIONCOMBINATIONSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPOPTIONCOMBINATIONS : Association to VCPOPTIONCOMBINATIONS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPSOURCECUSTOMERCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Average Product Price'
    VCAVERAGEPRODUCTPRICE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPSOURCECUSTOMERCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Average Product Price'
    VCAVERAGEPRODUCTPRICE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPSOURCECUSTOMERCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPSOURCECUSTOMERCURRENCY : Association to many VCPSOURCECUSTOMERCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPSOURCECUSTOMERCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPSOURCECUSTOMERCURRENCY : Association to VCPSOURCECUSTOMERCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONSOURCEITM {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONSOURCEITM_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRODUCTIONSOURCEITMTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRODUCTIONSOURCEITM : Association to many SDPRODUCTIONSOURCEITM_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRODUCTIONSOURCEITMMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRODUCTIONSOURCEITM : Association to SDPRODUCTIONSOURCEITM {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCEPRODUCTION {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCEPRODUCTION_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Production Frozen Window'
    IOPFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time (Production)'
    LEADTIMEPRODUCTION : Decimal(18, 6);
    @sap.label : 'Lead Time Coefficient of Variation (Production)'
    LEADTIMEPRODUCTIONCV : Decimal(18, 6);
    @sap.label : 'MandatoryAttribute Source Production'
    MATTRSOURCEPRODUCTION : String(1);
    @sap.label : 'Output Product Coefficient'
    OUTPUTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Time Series Output Coefficient Indicator'
    OUTPUTCOEFFICIENTTS : String(1);
    @sap.label : 'Production Source Balance Receipt Scope'
    PBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Capacity Consumption Policy'
    PCAPACONSPOLICY : Integer;
    @sap.label : 'Production Delivery Type Indicator'
    PDELIVERYTYPE : String(1);
    @sap.label : 'Production Incremental Lot Size'
    PINCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Source Invalid'
    PINVALID : String(1);
    @sap.label : 'Production Lead Time'
    PLEADTIME : Decimal(18, 6);
    @sap.label : 'Production Lead Time CV'
    PLEADTIMEVARIABILITY : Decimal(18, 6);
    @sap.label : 'Production Lot Size Periods'
    PLOTSIZECOVERAGE : Decimal(18, 6);
    @sap.label : 'Maximum Production Lot Size'
    PMAXLOTSIZE : Decimal(18, 6);
    @sap.label : 'Minimum Production Lot Size'
    PMINLOTSIZE : Decimal(18, 6);
    @sap.label : 'Production Lot Size: Coverage of Periods of Demand'
    PPERIODSOFCOVERAGE : Integer;
    @sap.label : 'Production Ratio'
    PRATIO : Decimal(18, 6);
    @sap.label : 'Time Series Production Sourcing Indicator'
    PRATIOTS : String(1);
    @sap.label : 'Remaining Shelf Life'
    PREMSHELFLIFE : Integer;
    @sap.label : 'Production Calendar ID'
    PRODUCTIONCALID : String(32);
    @sap.label : 'Production Rounding Value'
    PROUNDING : Decimal(18, 6);
    @sap.label : 'Production Shipment Frequency'
    PSHIPMENTFREQUENCY : Integer;
    @sap.label : 'Production Source Type Indicator'
    SOURCETYPE : String(1);
    @sap.label : 'Production Freeze Horizon in Days'
    PFREEZEHORIZON : Integer;
    @sap.label : 'Production Goods Receipt Calendar ID'
    PGOODSRECEIPTCALID : String(32);
    @sap.label : 'Production Goods Receipt Time'
    PGOODSRECEIPTTIME : Integer;
    @sap.label : 'Threshold Value for Lead Time Rounding of Production Source'
    PLEADTIMEROUNDINGTHRESHOLD : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCEPRODUCTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCEPRODUCTION : Association to many SDSOURCEPRODUCTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCEPRODUCTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCEPRODUCTION : Association to SDSOURCEPRODUCTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQPRODUCTSUBSTITUTION {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQPRODUCTSUBSTITUTION_VI {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRODUCTSUBSTITUTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRODUCTSUBSTITUTION : Association to many SQPRODUCTSUBSTITUTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRODUCTSUBSTITUTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRODUCTSUBSTITUTION : Association to SQPRODUCTSUBSTITUTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPCUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPCUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPCUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPCUSTOMER : Association to many SBPCUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPCUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPCUSTOMER : Association to SBPCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQEXCHANGERATE {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQEXCHANGERATE_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQEXCHANGERATETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQEXCHANGERATE : Association to many SQEXCHANGERATE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQEXCHANGERATEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQEXCHANGERATE : Association to SQEXCHANGERATE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDRESOURCELOCATIONPRODUCT {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDRESOURCELOCATIONPRODUCT_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDRESOURCELOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDRESOURCELOCATIONPRODUCT : Association to many SDRESOURCELOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDRESOURCELOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDRESOURCELOCATIONPRODUCT : Association to SDRESOURCELOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCAPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Partial Configuration'
    VCPN012 : String(20);
    @sap.label : 'ABCXYZCOUNTERHELPER'
    ABCXYZCOUNTERHELPER : Decimal(18, 6);
    @sap.label : 'Build Strategy'
    VCBUILDSTRAT : String(5);
    @sap.label : 'Build Strategy Desc'
    VCBUILDSTRATDESC : String(40);
    @sap.label : 'Model'
    VCMODEL : String(20);
    @sap.label : 'Model Range'
    VCMODELRANGE : String(20);
    @sap.label : 'Reference Product ID'
    VCREFERENCEPRD : String(40);
    @sap.label : 'Critical Component Flag'
    VCCRITICALCOMP : String(1);
    @sap.label : 'VC Attribute 01'
    VCPRODATT01 : String(160);
    @sap.label : 'VC Attribute 02'
    VCPRODATT02 : String(160);
    @sap.label : 'VC Attribute 03'
    VCPRODATT03 : String(160);
    @sap.label : 'VC Attribute 04'
    VCPRODATT04 : String(160);
    @sap.label : 'VC Attribute 05'
    VCPRODATT05 : String(160);
    @sap.label : 'VC Attribute 06'
    VCPRODATT06 : String(160);
    @sap.label : 'VC Attribute 07'
    VCPRODATT07 : String(160);
    @sap.label : 'VC Attribute 08'
    VCPRODATT08 : String(160);
    @sap.label : 'VC Attribute 09'
    VCPRODATT09 : String(160);
    @sap.label : 'VC Attribute 10'
    VCPRODATT10 : String(160);
    @sap.label : 'Dummy Material Flag'
    VCDUMMYMATFLAG : String(1);
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCAPRODUCT_VI {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Partial Configuration'
    VCPN012 : String(20);
    @sap.label : 'ABCXYZCOUNTERHELPER'
    ABCXYZCOUNTERHELPER : Decimal(18, 6);
    @sap.label : 'Build Strategy'
    VCBUILDSTRAT : String(5);
    @sap.label : 'Build Strategy Desc'
    VCBUILDSTRATDESC : String(40);
    @sap.label : 'Model'
    VCMODEL : String(20);
    @sap.label : 'Model Range'
    VCMODELRANGE : String(20);
    @sap.label : 'Reference Product ID'
    VCREFERENCEPRD : String(40);
    @sap.label : 'Critical Component Flag'
    VCCRITICALCOMP : String(1);
    @sap.label : 'VC Attribute 01'
    VCPRODATT01 : String(160);
    @sap.label : 'VC Attribute 02'
    VCPRODATT02 : String(160);
    @sap.label : 'VC Attribute 03'
    VCPRODATT03 : String(160);
    @sap.label : 'VC Attribute 04'
    VCPRODATT04 : String(160);
    @sap.label : 'VC Attribute 05'
    VCPRODATT05 : String(160);
    @sap.label : 'VC Attribute 06'
    VCPRODATT06 : String(160);
    @sap.label : 'VC Attribute 07'
    VCPRODATT07 : String(160);
    @sap.label : 'VC Attribute 08'
    VCPRODATT08 : String(160);
    @sap.label : 'VC Attribute 09'
    VCPRODATT09 : String(160);
    @sap.label : 'VC Attribute 10'
    VCPRODATT10 : String(160);
    @sap.label : 'Dummy Material Flag'
    VCDUMMYMATFLAG : String(1);
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCAPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCAPRODUCT : Association to many VCAPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCAPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCAPRODUCT : Association to VCAPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONSOURCEITMVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONSOURCEITMVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRODUCTIONSOURCEITMVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRODUCTIONSOURCEITMVALIDITY : Association to many SQPRODUCTIONSOURCEITMVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRODUCTIONSOURCEITMVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRODUCTIONSOURCEITMVALIDITY : Association to SQPRODUCTIONSOURCEITMVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPSOURCECUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPSOURCECUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Customer Source of Supply Priority'
    CPRIORITY : Decimal(18, 6);
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCECUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCECUSTOMER : Association to many SOPSOURCECUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCECUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCECUSTOMER : Association to SOPSOURCECUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQPRODUCTIONSOURCEITMS {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Component Substitute'
    MATTRPRODUCTIONSOURCEITMS : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPLAG : Association to many SOPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPLAG : Association to SOPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQASSUMPTIONCATEGORY {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQASSUMPTIONCATEGORY_VI {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQASSUMPTIONCATEGORYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQASSUMPTIONCATEGORY : Association to many SQASSUMPTIONCATEGORY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQASSUMPTIONCATEGORYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQASSUMPTIONCATEGORY : Association to SQASSUMPTIONCATEGORY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPINTERVAL {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPINTERVAL_VI {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPINTERVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPINTERVAL : Association to many SBPINTERVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPINTERVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPINTERVAL : Association to SBPINTERVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQGRPATTRVALRESASSIGN {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQGRPATTRVALRESASSIGN_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQGRPATTRVALRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQGRPATTRVALRESASSIGN : Association to many SQGRPATTRVALRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQGRPATTRVALRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQGRPATTRVALRESASSIGN : Association to SQGRPATTRVALRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPPRODUCTIONSOURCEITMS {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Component Substitute'
    MATTRPRODUCTIONSOURCEITMS : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONRESOURCE {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONRESOURCE_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRODUCTIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRODUCTIONRESOURCE : Association to many SDPRODUCTIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRODUCTIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRODUCTIONRESOURCE : Association to SDPRODUCTIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQCUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQCUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQCUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQCUSTOMER : Association to many SQCUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQCUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQCUSTOMER : Association to SQCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQCURRENCYTO {
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Currency Desc.'
    CURRTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDASSUMPTIONCATEGORY {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDASSUMPTIONCATEGORY_VI {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDASSUMPTIONCATEGORYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDASSUMPTIONCATEGORY : Association to many SDASSUMPTIONCATEGORY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDASSUMPTIONCATEGORYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDASSUMPTIONCATEGORY : Association to SDASSUMPTIONCATEGORY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPRESOURCELOCATION {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPRESOURCELOCATION_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPRESOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPRESOURCELOCATION : Association to many SBPRESOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPRESOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPRESOURCELOCATION : Association to SBPRESOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDCUSTOMERPRODUCT {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDCUSTOMERPRODUCT_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDCUSTOMERPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDCUSTOMERPRODUCT : Association to many SDCUSTOMERPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDCUSTOMERPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDCUSTOMERPRODUCT : Association to SDCUSTOMERPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPLOCATIONPRODUCTSUB {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPLOCATIONPRODUCTSUB_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPLOCATIONPRODUCTSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPLOCATIONPRODUCTSUB : Association to many SBPLOCATIONPRODUCTSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPLOCATIONPRODUCTSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPLOCATIONPRODUCTSUB : Association to SBPLOCATIONPRODUCTSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHEXCHANGERATE {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHEXCHANGERATE_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHEXCHANGERATETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHEXCHANGERATE : Association to many SHEXCHANGERATE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHEXCHANGERATEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHEXCHANGERATE : Association to SHEXCHANGERATE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONSOURCEITMSUB {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONSOURCEITMSUB_VI {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRODUCTIONSOURCEITMSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRODUCTIONSOURCEITMSUB : Association to many SDPRODUCTIONSOURCEITMSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRODUCTIONSOURCEITMSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRODUCTIONSOURCEITMSUB : Association to SDPRODUCTIONSOURCEITMSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCACLASS {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Characteristic Priority'
    VCCHARPRIORITY : String(10);
    @sap.label : 'Characteristic Type'
    VCCHARTYPE : String(10);
    @sap.label : 'Sort Characteristic'
    VCSORTCHAR : String(10);
    @sap.label : 'Sort Characteristic Value'
    VCSORTCHARVALUE : String(10);
    @sap.label : 'Characteristic Group'
    VCCHARGROUP : String(20);
    @sap.label : 'Flex 1 %'
    VCFLEX1 : Decimal(18, 6);
    @sap.label : 'Flex 2 %'
    VCFLEX2 : Decimal(18, 6);
    @sap.label : 'Flex 3 %'
    VCFLEX3 : Decimal(18, 6);
    @sap.label : 'Class'
    VCCLASSNAME : String(20);
    @sap.label : 'Horizon for Flex 1'
    VCFLEX1HORIZON : Integer;
    @sap.label : 'Horizon for Flex 2'
    VCFLEX2HORIZON : Integer;
    @sap.label : 'Horizon for Flex 3'
    VCFLEX3HORIZON : Integer;
    @sap.label : 'Class Desc'
    VCCLASSDESC : String(120);
    @sap.label : 'Characteristic Desc'
    VCCHARDESC : String(160);
    @sap.label : 'Characteristic'
    VCCHARNAME : String(80);
    @sap.label : 'Characteristic value'
    VCCHARVALUENAME : String(80);
    @sap.label : 'Characteristic Value Desc'
    VCCHARVALUEDESC : String(160);
    @sap.label : 'Reference Characteristic ID'
    VCCHARREF : String(100);
    @sap.label : 'Reference Characteristic'
    VCCHARNAMEREF : String(80);
    @sap.label : 'Reference Characteristic Desc'
    VCCHARDESCREF : String(160);
    @sap.label : 'Reference Characteristic value ID'
    VCCHARVALUEREF : String(80);
    @sap.label : 'Characteristic value Generated Flag'
    VCCHARVALUEGENFLAG : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCACLASS_VI {
    @sap.label : 'Class ID'
    key VCCLASS : String(40) not null;
    @sap.label : 'Characteristic ID'
    key VCCHAR : String(100) not null;
    @sap.label : 'Characteristic value ID'
    key VCCHARVALUE : String(80) not null;
    @sap.label : 'Characteristic Priority'
    VCCHARPRIORITY : String(10);
    @sap.label : 'Characteristic Type'
    VCCHARTYPE : String(10);
    @sap.label : 'Sort Characteristic'
    VCSORTCHAR : String(10);
    @sap.label : 'Sort Characteristic Value'
    VCSORTCHARVALUE : String(10);
    @sap.label : 'Characteristic Group'
    VCCHARGROUP : String(20);
    @sap.label : 'Flex 1 %'
    VCFLEX1 : Decimal(18, 6);
    @sap.label : 'Flex 2 %'
    VCFLEX2 : Decimal(18, 6);
    @sap.label : 'Flex 3 %'
    VCFLEX3 : Decimal(18, 6);
    @sap.label : 'Class'
    VCCLASSNAME : String(20);
    @sap.label : 'Horizon for Flex 1'
    VCFLEX1HORIZON : Integer;
    @sap.label : 'Horizon for Flex 2'
    VCFLEX2HORIZON : Integer;
    @sap.label : 'Horizon for Flex 3'
    VCFLEX3HORIZON : Integer;
    @sap.label : 'Class Desc'
    VCCLASSDESC : String(120);
    @sap.label : 'Characteristic Desc'
    VCCHARDESC : String(160);
    @sap.label : 'Characteristic'
    VCCHARNAME : String(80);
    @sap.label : 'Characteristic value'
    VCCHARVALUENAME : String(80);
    @sap.label : 'Characteristic Value Desc'
    VCCHARVALUEDESC : String(160);
    @sap.label : 'Reference Characteristic ID'
    VCCHARREF : String(100);
    @sap.label : 'Reference Characteristic'
    VCCHARNAMEREF : String(80);
    @sap.label : 'Reference Characteristic Desc'
    VCCHARDESCREF : String(160);
    @sap.label : 'Reference Characteristic value ID'
    VCCHARVALUEREF : String(80);
    @sap.label : 'Characteristic value Generated Flag'
    VCCHARVALUEGENFLAG : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCACLASSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCACLASS : Association to many VCACLASS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCACLASSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCACLASS : Association to VCACLASS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDLAG : Association to many SDLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDLAG : Association to SDLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSERVICELEVELCLASS {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSERVICELEVELCLASS_VI {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSERVICELEVELCLASSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSERVICELEVELCLASS : Association to many SHSERVICELEVELCLASS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSERVICELEVELCLASSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSERVICELEVELCLASS : Association to SHSERVICELEVELCLASS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SCLOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Calendar ID'
    ZCALENDARID : String(32);
    @sap.label : 'Country'
    ZCOUNTRY : String(10);
    @sap.label : 'Location Geography'
    ZLOCGEO : String(10);
    @sap.label : 'SC Location Type'
    ZSCLOCTYPE : String(20);
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SCLOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    NavSCLOCATION : Association to many SCLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SCLOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSCLOCATION : Association to SCLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPSRESOURCELOCATION {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Substitute Resource Constr Type'
    SCONSTRAINTTYPE : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPLOCATIONFR {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-From Loc. Desc.'
    LOCFRDESCR : String(60);
    @sap.label : 'Ship-From Loc. Region'
    LOCFRREGION : String(20);
    @sap.label : 'Ship-From Loc. Type'
    LOCFRTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHTRANSPORTATIONRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHTRANSPORTATIONRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHTRANSPORTATIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHTRANSPORTATIONRESOURCE : Association to many SHTRANSPORTATIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHTRANSPORTATIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHTRANSPORTATIONRESOURCE : Association to SHTRANSPORTATIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONSOURCEITM {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Structure Node'
    VCSTRUCTURENODE : String(50);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONSOURCEITM_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Structure Node'
    VCSTRUCTURENODE : String(50);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRODUCTIONSOURCEITMTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRODUCTIONSOURCEITM : Association to many SOPPRODUCTIONSOURCEITM_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRODUCTIONSOURCEITMMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRODUCTIONSOURCEITM : Association to SOPPRODUCTIONSOURCEITM {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDSPRODUCTTO {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPCURRENCY : Association to many SOPCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPCURRENCY : Association to SOPCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHGRPATTRVALRESASSIGN {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHGRPATTRVALRESASSIGN_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHGRPATTRVALRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHGRPATTRVALRESASSIGN : Association to many SHGRPATTRVALRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHGRPATTRVALRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHGRPATTRVALRESASSIGN : Association to SHGRPATTRVALRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCACUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCACUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCACUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCACUSTOMER : Association to many VCACUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCACUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCACUSTOMER : Association to VCACUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCECUSTOMERVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCECUSTOMERVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCECUSTOMERVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCECUSTOMERVALIDITY : Association to many SOPSOURCECUSTOMERVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCECUSTOMERVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCECUSTOMERVALIDITY : Association to SOPSOURCECUSTOMERVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPLOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPLOCATION_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPLOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPLOCATION : Association to many SOPLOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPLOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPLOCATION : Association to SOPLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONSOURCEITMSUB {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONSOURCEITMSUB_VI {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRODUCTIONSOURCEITMSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRODUCTIONSOURCEITMSUB : Association to many SOPPRODUCTIONSOURCEITMSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRODUCTIONSOURCEITMSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRODUCTIONSOURCEITMSUB : Association to SOPPRODUCTIONSOURCEITMSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQPRODUCTIONSOURCEITMR {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Reference'
    MATTRPRODUCTIONSOURCEITMR : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDUOMCONVERSIONFACTOR {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDUOMCONVERSIONFACTOR_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDUOMCONVERSIONFACTORTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDUOMCONVERSIONFACTOR : Association to many SDUOMCONVERSIONFACTOR_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDUOMCONVERSIONFACTORMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDUOMCONVERSIONFACTOR : Association to SDUOMCONVERSIONFACTOR {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCT_VI {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRODUCT : Association to many SQPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRODUCT : Association to SQPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONRESOURCE {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONRESOURCE_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRODUCTIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRODUCTIONRESOURCE : Association to many SOPPRODUCTIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRODUCTIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRODUCTIONRESOURCE : Association to SOPPRODUCTIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCT_VI {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRODUCT : Association to many SHPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRODUCT : Association to SHPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQTRANSPORTATIONRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQTRANSPORTATIONRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQTRANSPORTATIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQTRANSPORTATIONRESOURCE : Association to many SQTRANSPORTATIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQTRANSPORTATIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQTRANSPORTATIONRESOURCE : Association to SQTRANSPORTATIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDRISKOPP : Association to many SDRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDRISKOPP : Association to SDRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONRESOURCE {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONRESOURCE_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRODUCTIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRODUCTIONRESOURCE : Association to many SQPRODUCTIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRODUCTIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRODUCTIONRESOURCE : Association to SQPRODUCTIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDCUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDCUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDCUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDCUSTOMER : Association to many SDCUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDCUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDCUSTOMER : Association to SDCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCECUSTGROUP {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCECUSTGROUP_VI {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCECUSTGROUPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCECUSTGROUP : Association to many SBPSOURCECUSTGROUP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCECUSTGROUPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCECUSTGROUP : Association to SBPSOURCECUSTGROUP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCAFORECASTCONSUMPTIONMODE {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCAFORECASTCONSUMPTIONMODE_VI {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCAFORECASTCONSUMPTIONMODETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCAFORECASTCONSUMPTIONMODE : Association to many VCAFORECASTCONSUMPTIONMODE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCAFORECASTCONSUMPTIONMODEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCAFORECASTCONSUMPTIONMODE : Association to VCAFORECASTCONSUMPTIONMODE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPASSUMPTIONCATEGORY {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPASSUMPTIONCATEGORY_VI {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPASSUMPTIONCATEGORYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPASSUMPTIONCATEGORY : Association to many SBPASSUMPTIONCATEGORY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPASSUMPTIONCATEGORYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPASSUMPTIONCATEGORY : Association to SBPASSUMPTIONCATEGORY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDPRODUCTIONSOURCEITMR {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Reference'
    MATTRPRODUCTIONSOURCEITMR : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCPRODCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Structure Node'
    VCSTRUCTURENODE : String(50);
    @sap.label : 'VC Source ID'
    VCSOURCEID : String(66);
    @sap.label : 'MRP Type'
    VCAMRPTYPE : String(2);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCPRODCOMPONENT_VI {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Structure Node'
    VCSTRUCTURENODE : String(50);
    @sap.label : 'VC Source ID'
    VCSOURCEID : String(66);
    @sap.label : 'MRP Type'
    VCAMRPTYPE : String(2);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCALOCPRODCOMPONENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCALOCPRODCOMPONENT : Association to many VCALOCPRODCOMPONENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCALOCPRODCOMPONENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCALOCPRODCOMPONENT : Association to VCALOCPRODCOMPONENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONSOURCEITMVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONSOURCEITMVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRODUCTIONSOURCEITMVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRODUCTIONSOURCEITMVALIDITY : Association to many SOPPRODUCTIONSOURCEITMVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRODUCTIONSOURCEITMVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRODUCTIONSOURCEITMVALIDITY : Association to SOPPRODUCTIONSOURCEITMVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDPRODUCTIONSOURCEITMS {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Component Substitute'
    MATTRPRODUCTIONSOURCEITMS : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCECUSTOMERVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCECUSTOMERVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCECUSTOMERVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCECUSTOMERVALIDITY : Association to many SHSOURCECUSTOMERVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCECUSTOMERVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCECUSTOMERVALIDITY : Association to SHSOURCECUSTOMERVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SVLAG {
    @sap.label : 'LAGID'
    key SVLAGID : String(42) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SVLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    NavSVLAG : Association to many SVLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SVLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSVLAG : Association to SVLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQSOURCELOCATIONR {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Source Location Reference'
    MATTRSOURCELOCATIONR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHLOCRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHLOCRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHLOCRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHLOCRISKOPP : Association to many SHLOCRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHLOCRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHLOCRISKOPP : Association to SHLOCRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQCUSTOMERPRODUCT {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQCUSTOMERPRODUCT_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQCUSTOMERPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQCUSTOMERPRODUCT : Association to many SQCUSTOMERPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQCUSTOMERPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQCUSTOMERPRODUCT : Association to SQCUSTOMERPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHFORECASTCONSUMPTIONMODE {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHFORECASTCONSUMPTIONMODE_VI {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHFORECASTCONSUMPTIONMODETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHFORECASTCONSUMPTIONMODE : Association to many SHFORECASTCONSUMPTIONMODE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHFORECASTCONSUMPTIONMODEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHFORECASTCONSUMPTIONMODE : Association to SHFORECASTCONSUMPTIONMODE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SCCUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SCCUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    NavSCCUSTOMER : Association to many SCCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SCCUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSCCUSTOMER : Association to SCCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSHELFLIFE {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSHELFLIFE_VI {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSHELFLIFETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSHELFLIFE : Association to many SOPSHELFLIFE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSHELFLIFEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSHELFLIFE : Association to SOPSHELFLIFE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPLOCATIONPRODUCTSUBR {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Loc Prod Ref'
    MANDATTRLOCPRODSUBR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCECUSTGROUP {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCECUSTGROUP_VI {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCECUSTGROUPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCECUSTGROUP : Association to many SHSOURCECUSTGROUP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCECUSTGROUPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCECUSTGROUP : Association to SHSOURCECUSTGROUP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPGRPATTRRESASSIGN {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPGRPATTRRESASSIGN_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPGRPATTRRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPGRPATTRRESASSIGN : Association to many SBPGRPATTRRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPGRPATTRRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPGRPATTRRESASSIGN : Association to SBPGRPATTRRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQROPTYPE {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQROPTYPE_VI {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQROPTYPETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQROPTYPE : Association to many SQROPTYPE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQROPTYPEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQROPTYPE : Association to SQROPTYPE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCECUSTGROUP {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCECUSTGROUP_VI {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCECUSTGROUPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCECUSTGROUP : Association to many SQSOURCECUSTGROUP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCECUSTGROUPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCECUSTGROUP : Association to SQSOURCECUSTGROUP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPPRODUCTSUBSTITUTION {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPPRODUCTSUBSTITUTION_VI {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRODUCTSUBSTITUTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRODUCTSUBSTITUTION : Association to many SBPPRODUCTSUBSTITUTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRODUCTSUBSTITUTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRODUCTSUBSTITUTION : Association to SBPPRODUCTSUBSTITUTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQLOCATIONPRODUCTCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQLOCATIONPRODUCTCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQLOCATIONPRODUCTCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQLOCATIONPRODUCTCURRENCY : Association to many SQLOCATIONPRODUCTCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQLOCATIONPRODUCTCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQLOCATIONPRODUCTCURRENCY : Association to SQLOCATIONPRODUCTCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCT {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCT_VI {
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'ABC Code'
    ABCID : String(3);
    @sap.label : 'ABC Desc'
    ABCDESCR : String(60);
    @sap.label : 'Product Family'
    PRDFAMILY : String(40);
    @sap.label : 'Product Group'
    PRDGROUP : String(20);
    @sap.label : 'ABC Locked'
    ABCLOCKED : String(1);
    @sap.label : 'Brand ID'
    BRAND : String(60);
    @sap.label : 'Category'
    CATEGORY : String(40);
    @sap.label : 'Item Type Category Indicator'
    ITEMTYPECATEGORY : String(1);
    @sap.label : 'Material Type ID'
    MATTYPEID : String(4);
    @sap.label : 'PLM Status'
    PLMSTATUS : String(10);
    @sap.label : 'Product Desc'
    PRDDESCR : String(60);
    @sap.label : 'Product Series'
    PRDSERIES : String(40);
    @sap.label : 'Product Subfamily'
    PRDSUBFAMILY : String(40);
    @sap.label : 'Quick Turn Market Available'
    QUICKTURNMARKET : String(1);
    @sap.label : 'Base UOM Desc.'
    UOMDESCR : String(60);
    @sap.label : 'Base Unit of Measure'
    UOMID : String(3);
    @sap.label : 'XYZ Desc'
    XYZDESCR : String(60);
    @sap.label : 'XYZ Code'
    XYZID : String(3);
    @sap.label : 'XYZ Locked'
    XYZLOCKED : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRODUCT : Association to many SOPPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRODUCT : Association to SOPPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPASSUMPTIONCATEGORY {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPASSUMPTIONCATEGORY_VI {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPASSUMPTIONCATEGORYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPASSUMPTIONCATEGORY : Association to many SOPASSUMPTIONCATEGORY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPASSUMPTIONCATEGORYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPASSUMPTIONCATEGORY : Association to SOPASSUMPTIONCATEGORY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDRESOURCE : Association to many SDRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDRESOURCE : Association to SDRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCELOCATIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCELOCATIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCELOCATIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCELOCATIONVALIDITY : Association to many SQSOURCELOCATIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCELOCATIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCELOCATIONVALIDITY : Association to SQSOURCELOCATIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPCUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPCUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPCUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPCUSTOMER : Association to many VCPCUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPCUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPCUSTOMER : Association to VCPCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHRESOURCELOCATION {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHRESOURCELOCATION_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHRESOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHRESOURCELOCATION : Association to many SHRESOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHRESOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHRESOURCELOCATION : Association to SHRESOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPSOURCELOCATIONR {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Source Location Reference'
    MATTRSOURCELOCATIONR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCAUOMTO {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCAUOMTO_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCAUOMTOTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCAUOMTO : Association to many VCAUOMTO_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCAUOMTOMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCAUOMTO : Association to VCAUOMTO {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPRESOURCE : Association to many SOPRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPRESOURCE : Association to SOPRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCATIONPRODUCT {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Lot Size Qty'
    VCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Procurement Type'
    PROCUREMENTTYPE : String(1);
    @sap.label : 'Planning Strategy'
    PLANNINGSTRGY : String(20);
    @sap.label : 'Manufacturing Location'
    VCMANUFACTURINGLOC : String(20);
    @sap.label : 'Frozen Period 01'
    VCFROZENPERIOD01 : Integer;
    @sap.label : 'Frozen Period 02'
    VCFROZENPERIOD02 : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCATIONPRODUCT_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Lot Size Qty'
    VCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Procurement Type'
    PROCUREMENTTYPE : String(1);
    @sap.label : 'Planning Strategy'
    PLANNINGSTRGY : String(20);
    @sap.label : 'Manufacturing Location'
    VCMANUFACTURINGLOC : String(20);
    @sap.label : 'Frozen Period 01'
    VCFROZENPERIOD01 : Integer;
    @sap.label : 'Frozen Period 02'
    VCFROZENPERIOD02 : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCALOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCALOCATIONPRODUCT : Association to many VCALOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCALOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCALOCATIONPRODUCT : Association to VCALOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPLOCATIONFR {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-From Loc. Desc.'
    LOCFRDESCR : String(60);
    @sap.label : 'Ship-From Loc. Region'
    LOCFRREGION : String(20);
    @sap.label : 'Ship-From Loc. Type'
    LOCFRTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHLOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHLOCATION_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location ID Display'
    LOCIDDISPLAY : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Location Relevant for External Risk Integration'
    EXTRISKRELEVANT : String(1);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHLOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHLOCATION : Association to many SHLOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHLOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHLOCATION : Association to SHLOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity VCACOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Component Flag'
    VCCOMPONENTFLAG : String(1);
    @sap.label : 'Dummy Component Flag'
    VCDUMMYCOMPFLAG : String(1);
    @sap.label : 'Component Desc.'
    PRDFRDESCR : String(60);
    @sap.label : 'Component Family'
    PRDFRFAMILY : String(40);
    @sap.label : 'Component Series'
    PRDFRSERIES : String(40);
    @sap.label : 'Component Sub Family'
    PRDFRSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPSOURCELOCATIONR {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Source Location Reference'
    MATTRSOURCELOCATIONR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQLOCATIONTO {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-To Location Desc'
    LOCTODESCR : String(60);
    @sap.label : 'Ship-To Location Region'
    LOCTOREGION : String(20);
    @sap.label : 'Ship-To Location Type'
    LOCTOTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPRISKOPP : Association to many SOPRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPRISKOPP : Association to SOPRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHCUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHCUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @sap.label : 'Customer Group / Segment'
    CUSTGROUP : String(60);
    @sap.label : 'Customer Country/Region'
    CUSTCOUNTRY : String(20);
    @sap.label : 'Customer Desc.'
    CUSTDESCR : String(60);
    @sap.label : 'Customer Region'
    CUSTREGION : String(20);
    @sap.label : 'Customer ID Display'
    CUSTIDDISPLAY : String(20);
    @sap.label : 'Customer Business Partner ID'
    CUSTBUPAID : String(40);
    @sap.label : 'Channel'
    CUSTCHANNEL : String(20);
    @sap.label : 'Sales Rep.'
    CUSTSALESREP : String(40);
    @sap.label : 'Sales VP'
    CUSTSALESVP : String(40);
    @sap.label : 'Customer Validity'
    CUSTVALID : String(1);
    @sap.label : 'Key Account (Y/N)'
    KEYACCOUNT : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHCUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHCUSTOMER : Association to many SHCUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHCUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHCUSTOMER : Association to SHCUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHRISKOPP : Association to many SHRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHRISKOPP : Association to SHRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPLOCATIONPRODUCTCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPLOCATIONPRODUCTCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPLOCATIONPRODUCTCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPLOCATIONPRODUCTCURRENCY : Association to many SBPLOCATIONPRODUCTCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPLOCATIONPRODUCTCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPLOCATIONPRODUCTCURRENCY : Association to SBPLOCATIONPRODUCTCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPCUSTOMERPRODUCT {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPCUSTOMERPRODUCT_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPCUSTOMERPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPCUSTOMERPRODUCT : Association to many SOPCUSTOMERPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPCUSTOMERPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPCUSTOMERPRODUCT : Association to SOPCUSTOMERPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONRESOURCE {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONRESOURCE_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @sap.label : 'Mandatory Attribute for Production Resource'
    MATTRPRODUCTIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consumption'
    PCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consumption'
    PCAPACONSSTART : Integer;
    @sap.label : 'Is Alternative Production Source Resource'
    ISALTRES : String(1);
    @sap.label : 'Fixed Production Capacity Consumption'
    FIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRODUCTIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRODUCTIONRESOURCE : Association to many SHPRODUCTIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRODUCTIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRODUCTIONRESOURCE : Association to SHPRODUCTIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDLOCATIONPRODUCTSUB {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDLOCATIONPRODUCTSUB_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDLOCATIONPRODUCTSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDLOCATIONPRODUCTSUB : Association to many SDLOCATIONPRODUCTSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDLOCATIONPRODUCTSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDLOCATIONPRODUCTSUB : Association to SDLOCATIONPRODUCTSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPCUSTOMERPRODUCT {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPCUSTOMERPRODUCT_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPCUSTOMERPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPCUSTOMERPRODUCT : Association to many VCPCUSTOMERPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPCUSTOMERPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPCUSTOMERPRODUCT : Association to VCPCUSTOMERPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDGRPATTRRESASSIGN {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDGRPATTRRESASSIGN_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDGRPATTRRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDGRPATTRRESASSIGN : Association to many SDGRPATTRRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDGRPATTRRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDGRPATTRRESASSIGN : Association to SDGRPATTRRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCECUSTOMERVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCECUSTOMERVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCECUSTOMERVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCECUSTOMERVALIDITY : Association to many SQSOURCECUSTOMERVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCECUSTOMERVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCECUSTOMERVALIDITY : Association to SQSOURCECUSTOMERVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCASOURCECUSTOMER {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCASOURCECUSTOMER_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Customer Source Balance Receipt Scope'
    CBALANCERECEIPTSCOPE : Integer;
    @sap.label : 'Customer Source Invalid'
    CINVALID : String(1);
    @sap.label : 'Customer Sourcing Ratio'
    CRATIO : Decimal(18, 6);
    @sap.label : 'Lot-Size Rounding Value for Customer Receipts'
    CROUNDING : Decimal(18, 6);
    @sap.label : 'Mandatory Attribute Source Customer'
    MATTRSOURCECUSTOMER : String(1);
    @sap.label : 'Time Series Property'
    TIMESERIESPROPERTY : String(120);
    @sap.label : 'Customer Transportation LeadTime'
    CLEADTIME : Decimal(18, 6);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Time Series Transportation Sourcing Indicator'
    RATIOTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCASOURCECUSTOMERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCASOURCECUSTOMER : Association to many VCASOURCECUSTOMER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCASOURCECUSTOMERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCASOURCECUSTOMER : Association to VCASOURCECUSTOMER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONRESOURCESUB {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONRESOURCESUB_VI {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRODUCTIONRESOURCESUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRODUCTIONRESOURCESUB : Association to many SBPPRODUCTIONRESOURCESUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRODUCTIONRESOURCESUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRODUCTIONRESOURCESUB : Association to SBPPRODUCTIONRESOURCESUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPUOMTO {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPUOMTO_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPUOMTOTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPUOMTO : Association to many VCPUOMTO_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPUOMTOMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPUOMTO : Association to VCPUOMTO {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCASSEMBLYCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'BOM Source ID'
    VCBOMSOURCEID : String(68);
    @sap.label : 'VC BOM Component Coefficient'
    VCBOMCOMPONENTCOEFFICENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCASSEMBLYCOMPONENT_VI {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'BOM Source ID'
    VCBOMSOURCEID : String(68);
    @sap.label : 'VC BOM Component Coefficient'
    VCBOMCOMPONENTCOEFFICENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCALOCASSEMBLYCOMPONENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCALOCASSEMBLYCOMPONENT : Association to many VCALOCASSEMBLYCOMPONENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCALOCASSEMBLYCOMPONENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCALOCASSEMBLYCOMPONENT : Association to VCALOCASSEMBLYCOMPONENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONSOURCEITM {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONSOURCEITM_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRODUCTIONSOURCEITMTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRODUCTIONSOURCEITM : Association to many SHPRODUCTIONSOURCEITM_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRODUCTIONSOURCEITMMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRODUCTIONSOURCEITM : Association to SHPRODUCTIONSOURCEITM {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCATIONPRODUCT {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Lot Size Qty'
    VCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Procurement Type'
    PROCUREMENTTYPE : String(1);
    @sap.label : 'Planning Strategy'
    PLANNINGSTRGY : String(20);
    @sap.label : 'Manufacturing Location'
    VCMANUFACTURINGLOC : String(20);
    @sap.label : 'Frozen Period 01'
    VCFROZENPERIOD01 : Integer;
    @sap.label : 'Frozen Period 02'
    VCFROZENPERIOD02 : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCATIONPRODUCT_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Lot Size Qty'
    VCLOTSIZE : Decimal(18, 6);
    @sap.label : 'Procurement Type'
    PROCUREMENTTYPE : String(1);
    @sap.label : 'Planning Strategy'
    PLANNINGSTRGY : String(20);
    @sap.label : 'Manufacturing Location'
    VCMANUFACTURINGLOC : String(20);
    @sap.label : 'Frozen Period 01'
    VCFROZENPERIOD01 : Integer;
    @sap.label : 'Frozen Period 02'
    VCFROZENPERIOD02 : Integer;
    @sap.label : 'Subnetwork ID'
    PLUNITID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPLOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPLOCATIONPRODUCT : Association to many VCPLOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPLOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPLOCATIONPRODUCT : Association to VCPLOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHLOCATIONPRODUCTCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHLOCATIONPRODUCTCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHLOCATIONPRODUCTCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHLOCATIONPRODUCTCURRENCY : Association to many SHLOCATIONPRODUCTCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHLOCATIONPRODUCTCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHLOCATIONPRODUCTCURRENCY : Association to SHLOCATIONPRODUCTCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPLAG : Association to many SBPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPLAG : Association to SBPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPGRPATTRVAL {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPGRPATTRVAL_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPGRPATTRVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPGRPATTRVAL : Association to many SBPGRPATTRVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPGRPATTRVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPGRPATTRVAL : Association to SBPGRPATTRVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHLOCATIONTO {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-To Location Desc'
    LOCTODESCR : String(60);
    @sap.label : 'Ship-To Location Region'
    LOCTOREGION : String(20);
    @sap.label : 'Ship-To Location Type'
    LOCTOTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHUOMTO {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHUOMTO_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHUOMTOTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHUOMTO : Association to many SHUOMTO_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHUOMTOMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHUOMTO : Association to SHUOMTO {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPRESOURCELOCATIONPRODUCT {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPRESOURCELOCATIONPRODUCT_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPRESOURCELOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPRESOURCELOCATIONPRODUCT : Association to many SOPRESOURCELOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPRESOURCELOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPRESOURCELOCATIONPRODUCT : Association to SOPRESOURCELOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPLANNINGUNIT {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPLANNINGUNIT_VI {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPLANNINGUNITTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPLANNINGUNIT : Association to many SHPLANNINGUNIT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPLANNINGUNITMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPLANNINGUNIT : Association to SHPLANNINGUNIT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDFORECASTCONSUMPTIONMODE {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDFORECASTCONSUMPTIONMODE_VI {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDFORECASTCONSUMPTIONMODETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDFORECASTCONSUMPTIONMODE : Association to many SDFORECASTCONSUMPTIONMODE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDFORECASTCONSUMPTIONMODEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDFORECASTCONSUMPTIONMODE : Association to SDFORECASTCONSUMPTIONMODE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQSRESOURCELOCATION {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Substitute Resource Constr Type'
    SCONSTRAINTTYPE : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCECUSTOMERVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCECUSTOMERVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid From'
    key CVALIDFR : DateTime not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Customer Sourcing Valid To'
    CVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCECUSTOMERVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCECUSTOMERVALIDITY : Association to many SBPSOURCECUSTOMERVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCECUSTOMERVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCECUSTOMERVALIDITY : Association to SBPSOURCECUSTOMERVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDLOCRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDLOCRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDLOCRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDLOCRISKOPP : Association to many SDLOCRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDLOCRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDLOCRISKOPP : Association to SDLOCRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQUOMCONVERSIONFACTOR {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQUOMCONVERSIONFACTOR_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQUOMCONVERSIONFACTORTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQUOMCONVERSIONFACTOR : Association to many SQUOMCONVERSIONFACTOR_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQUOMCONVERSIONFACTORMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQUOMCONVERSIONFACTOR : Association to SQUOMCONVERSIONFACTOR {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHGRPATTRHEADER {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHGRPATTRHEADER_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHGRPATTRHEADERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHGRPATTRHEADER : Association to many SHGRPATTRHEADER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHGRPATTRHEADERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHGRPATTRHEADER : Association to SHGRPATTRHEADER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCPRODCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'MRP Type'
    VCDMRPTYPE : String(2);
    @sap.label : 'Structure Node'
    VCSTRUCTURENODE : String(50);
    @sap.label : 'VC Source ID'
    VCSOURCEID : String(66);
    @sap.label : 'MRP Type'
    VCAMRPTYPE : String(2);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCPRODCOMPONENT_VI {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'MRP Type'
    VCDMRPTYPE : String(2);
    @sap.label : 'Structure Node'
    VCSTRUCTURENODE : String(50);
    @sap.label : 'VC Source ID'
    VCSOURCEID : String(66);
    @sap.label : 'MRP Type'
    VCAMRPTYPE : String(2);
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPLOCPRODCOMPONENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPLOCPRODCOMPONENT : Association to many VCPLOCPRODCOMPONENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPLOCPRODCOMPONENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPLOCPRODCOMPONENT : Association to VCPLOCPRODCOMPONENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCEPRODUCTIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSOURCEPRODUCTIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSOURCEPRODUCTIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSOURCEPRODUCTIONVALIDITY : Association to many SBPSOURCEPRODUCTIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSOURCEPRODUCTIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSOURCEPRODUCTIONVALIDITY : Association to SBPSOURCEPRODUCTIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPPRODUCTIONSOURCEITMS {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Component Substitute'
    MATTRPRODUCTIONSOURCEITMS : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPLANNINGUNIT {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPLANNINGUNIT_VI {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPLANNINGUNITTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPLANNINGUNIT : Association to many SOPPLANNINGUNIT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPLANNINGUNITMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPLANNINGUNIT : Association to SOPPLANNINGUNIT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDRESOURCELOCATION {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDRESOURCELOCATION_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @sap.label : 'Forecast Consumption Mode'
    FCSTCONSMODE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDRESOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDRESOURCELOCATION : Association to many SDRESOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDRESOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDRESOURCELOCATION : Association to SDRESOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRIORITY {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRIORITY_VI {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRIORITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRIORITY : Association to many SBPPRIORITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRIORITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRIORITY : Association to SBPPRIORITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHUOMCONVERSIONFACTOR {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHUOMCONVERSIONFACTOR_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHUOMCONVERSIONFACTORTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHUOMCONVERSIONFACTOR : Association to many SHUOMCONVERSIONFACTOR_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHUOMCONVERSIONFACTORMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHUOMCONVERSIONFACTOR : Association to SHUOMCONVERSIONFACTOR {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCATIONPRODUCTCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Average Product Cost'
    VCAVERAGEPRODCOST : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCATIONPRODUCTCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Average Product Cost'
    VCAVERAGEPRODCOST : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPLOCATIONPRODUCTCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPLOCATIONPRODUCTCURRENCY : Association to many VCPLOCATIONPRODUCTCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPLOCATIONPRODUCTCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPLOCATIONPRODUCTCURRENCY : Association to VCPLOCATIONPRODUCTCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPRESOURCELOCATIONPRODUCT {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPRESOURCELOCATIONPRODUCT_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPRESOURCELOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPRESOURCELOCATIONPRODUCT : Association to many SBPRESOURCELOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPRESOURCELOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPRESOURCELOCATIONPRODUCT : Association to SBPRESOURCELOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDUOMTO {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDUOMTO_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDUOMTOTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDUOMTO : Association to many SDUOMTO_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDUOMTOMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDUOMTO : Association to SDUOMTO {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONSOURCEITMSUB {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONSOURCEITMSUB_VI {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRODUCTIONSOURCEITMSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRODUCTIONSOURCEITMSUB : Association to many SQPRODUCTIONSOURCEITMSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRODUCTIONSOURCEITMSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRODUCTIONSOURCEITMSUB : Association to SQPRODUCTIONSOURCEITMSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPLOCATIONTO {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-To Location Desc'
    LOCTODESCR : String(60);
    @sap.label : 'Ship-To Location Region'
    LOCTOREGION : String(20);
    @sap.label : 'Ship-To Location Type'
    LOCTOTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Component Desc.'
    PRDFRDESCR : String(60);
    @sap.label : 'Component Family'
    PRDFRFAMILY : String(40);
    @sap.label : 'Component Series'
    PRDFRSERIES : String(40);
    @sap.label : 'Component Sub Family'
    PRDFRSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCECUSTGROUP {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCECUSTGROUP_VI {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCECUSTGROUPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCECUSTGROUP : Association to many SDSOURCECUSTGROUP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCECUSTGROUPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCECUSTGROUP : Association to SDSOURCECUSTGROUP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Component Desc.'
    PRDFRDESCR : String(60);
    @sap.label : 'Component Family'
    PRDFRFAMILY : String(40);
    @sap.label : 'Component Series'
    PRDFRSERIES : String(40);
    @sap.label : 'Component Sub Family'
    PRDFRSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCECUSTGROUP {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCECUSTGROUP_VI {
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'IO Customer Frozen Window'
    IOCFROZENWINDOW : Decimal(18, 6);
    @sap.label : 'Lead Time Customer Tolerance'
    LEADTIMECUSTOMERTOLERANCE : Decimal(18, 6);
    @sap.label : 'Lead Time Sales Order Visibility'
    LEADTIMESALESORDER : Decimal(18, 6);
    @sap.label : 'Sales Frequency Indicator'
    SALESFREQUENCY : String(20);
    @sap.label : 'Target Service Level'
    TARGETSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCECUSTGROUPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCECUSTGROUP : Association to many SOPSOURCECUSTGROUP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCECUSTGROUPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCECUSTGROUP : Association to SOPSOURCECUSTGROUP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPRESOURCELOCATION {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPRESOURCELOCATION_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Capacity Supply'
    CAPASUPPLY : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion'
    CAPASUPPLYEXPANSION : Decimal(18, 6);
    @sap.label : 'Capacity Supply Expansion Time Series Indicator'
    CAPASUPPLYEXPANSIONTS : String(1);
    @sap.label : 'Capacity Supply Time Series Indicator'
    CAPASUPPLYTS : String(1);
    @sap.label : 'Constraint Type'
    CONSTRAINTTYPE : String(1);
    @sap.label : 'Resource Type'
    RESOURCETYPE : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPRESOURCELOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPRESOURCELOCATION : Association to many SOPRESOURCELOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPRESOURCELOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPRESOURCELOCATION : Association to SOPRESOURCELOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCELOCATIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCELOCATIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCELOCATIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCELOCATIONVALIDITY : Association to many SHSOURCELOCATIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCELOCATIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCELOCATIONVALIDITY : Association to SHSOURCELOCATIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQLOCATIONFR {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-From Loc. Desc.'
    LOCFRDESCR : String(60);
    @sap.label : 'Ship-From Loc. Region'
    LOCFRREGION : String(20);
    @sap.label : 'Ship-From Loc. Type'
    LOCFRTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity VCACURRENCYTO {
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Currency Desc.'
    CURRTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCALOCATION {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCALOCATION_VI {
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Location'
    LOCDESCR : String(60);
    @sap.label : 'Location Region'
    LOCREGION : String(20);
    @sap.label : 'Location Business Partner ID'
    LOCBUPAID : String(40);
    @sap.label : 'Location Type'
    LOCTYPE : String(10);
    @sap.label : 'Location Validity'
    LOCVALID : String(1);
    @sap.label : 'Buffer profile set ID for creating multiple buffer profiles'
    PROFILESETID : String(10);
    @sap.label : 'Holding Cost Percentage'
    HOLDINGCOSTPCT : Decimal(18, 6);
    @sap.label : 'Geo Latitude'
    GEOLATITUDE : Decimal(18, 6);
    @sap.label : 'Geo Longitude'
    GEOLONGITUDE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCALOCATIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCALOCATION : Association to many VCALOCATION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCALOCATIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCALOCATION : Association to VCALOCATION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHRESOURCELOCATIONPRODUCT {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHRESOURCELOCATIONPRODUCT_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHRESOURCELOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHRESOURCELOCATIONPRODUCT : Association to many SHRESOURCELOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHRESOURCELOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHRESOURCELOCATIONPRODUCT : Association to SHRESOURCELOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPTRANSPORTATIONRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPTRANSPORTATIONRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPTRANSPORTATIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPTRANSPORTATIONRESOURCE : Association to many SBPTRANSPORTATIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPTRANSPORTATIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPTRANSPORTATIONRESOURCE : Association to SBPTRANSPORTATIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDSRESOURCELOCATION {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Substitute Resource Constr Type'
    SCONSTRAINTTYPE : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDCURRENCY : Association to many SDCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDCURRENCY : Association to SDCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCASOURCECUSTOMERCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Average Product Price'
    VCAVERAGEPRODUCTPRICE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCASOURCECUSTOMERCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Average Product Price'
    VCAVERAGEPRODUCTPRICE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCASOURCECUSTOMERCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCASOURCECUSTOMERCURRENCY : Association to many VCASOURCECUSTOMERCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCASOURCECUSTOMERCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCASOURCECUSTOMERCURRENCY : Association to VCASOURCECUSTOMERCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPUOMCONVERSIONFACTOR {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPUOMCONVERSIONFACTOR_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPUOMCONVERSIONFACTORTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPUOMCONVERSIONFACTOR : Association to many SBPUOMCONVERSIONFACTOR_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPUOMCONVERSIONFACTORMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPUOMCONVERSIONFACTOR : Association to SBPUOMCONVERSIONFACTOR {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPFORECASTCONSUMPTIONMODE {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPFORECASTCONSUMPTIONMODE_VI {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPFORECASTCONSUMPTIONMODETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPFORECASTCONSUMPTIONMODE : Association to many VCPFORECASTCONSUMPTIONMODE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPFORECASTCONSUMPTIONMODEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPFORECASTCONSUMPTIONMODE : Association to VCPFORECASTCONSUMPTIONMODE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONSOURCEITM {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONSOURCEITM_VI {
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @sap.label : 'Is Substitute Component'
    ISALTITEM : String(1);
    @sap.label : 'Mand Atrr Production Source Item'
    MATTRPRODUCTIONSOURCEITM : String(1);
    @sap.label : 'Minimum shelf life value for component'
    MINSHELFLIFECOMP : Integer;
    @sap.label : 'Source Item ID'
    SOURCEITMID : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRODUCTIONSOURCEITMTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRODUCTIONSOURCEITM : Association to many SQPRODUCTIONSOURCEITM_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRODUCTIONSOURCEITMMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRODUCTIONSOURCEITM : Association to SQPRODUCTIONSOURCEITM {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Budgeted Y/N'
    BUDGETED : String(10);
    @sap.label : 'Include In Plan'
    INCLUDEINPLAN : Integer;
    @sap.label : 'Planning Cycle'
    PLANNINGCYCLE : String(60);
    @sap.label : 'Risk/Opportunity Descr'
    ROPDESCR : String(255);
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Changed Date'
    ROPCHANGEDDATE : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Duration'
    ROPDURATION : DateTime;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp End Date'
    ROPENDDATE : DateTime;
    @sap.label : 'Risk/Opp Family'
    ROPFAMILY : String(120);
    @sap.label : 'Risk/Opp Revision'
    ROPREVISION : Integer;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Risk/Opp Start Date'
    ROPSTARTDATE : DateTime;
    @sap.label : 'Risk/Opp Type'
    ROPTYPEID : String(20);
    @sap.label : 'Assumption Category ID'
    ASSUMPTIONCATID : String(20);
    @sap.label : 'Priority ID'
    PRIORITYID : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQRISKOPP : Association to many SQRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQRISKOPP : Association to SQRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQGRPATTRVAL {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQGRPATTRVAL_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQGRPATTRVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQGRPATTRVAL : Association to many SQGRPATTRVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQGRPATTRVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQGRPATTRVAL : Association to SQGRPATTRVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQCURRENCY : Association to many SQCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQCURRENCY : Association to SQCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCEPRODUCTIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSOURCEPRODUCTIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSOURCEPRODUCTIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSOURCEPRODUCTIONVALIDITY : Association to many SQSOURCEPRODUCTIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSOURCEPRODUCTIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSOURCEPRODUCTIONVALIDITY : Association to SQSOURCEPRODUCTIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCACURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCACURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCACURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCACURRENCY : Association to many VCACURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCACURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCACURRENCY : Association to VCACURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPTRANSPORTATIONRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPTRANSPORTATIONRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPTRANSPORTATIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPTRANSPORTATIONRESOURCE : Association to many SOPTRANSPORTATIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPTRANSPORTATIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPTRANSPORTATIONRESOURCE : Association to SOPTRANSPORTATIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHCUSTOMERPRODUCT {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHCUSTOMERPRODUCT_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Non Delivery Fair-Share Cost Policy'
    NONDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Late-Delivery Fair-Share Cost Policy'
    LATEDELIVERYCOSTPOLICY : Integer;
    @sap.label : 'Minimum shelf life value for consensus demand'
    MINSHELFLIFECONSDEM : Integer;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHCUSTOMERPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHCUSTOMERPRODUCT : Association to many SHCUSTOMERPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHCUSTOMERPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHCUSTOMERPRODUCT : Association to SHCUSTOMERPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHLOCATIONPRODUCTSUB {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHLOCATIONPRODUCTSUB_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHLOCATIONPRODUCTSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHLOCATIONPRODUCTSUB : Association to many SHLOCATIONPRODUCTSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHLOCATIONPRODUCTSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHLOCATIONPRODUCTSUB : Association to SHLOCATIONPRODUCTSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPLOCATIONPRODUCTCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPLOCATIONPRODUCTCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPLOCATIONPRODUCTCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPLOCATIONPRODUCTCURRENCY : Association to many SOPLOCATIONPRODUCTCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPLOCATIONPRODUCTCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPLOCATIONPRODUCTCURRENCY : Association to SOPLOCATIONPRODUCTCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPEXCHANGERATE {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPEXCHANGERATE_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPEXCHANGERATETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPEXCHANGERATE : Association to many VCPEXCHANGERATE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPEXCHANGERATEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPEXCHANGERATE : Association to VCPEXCHANGERATE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCECUSTGROUPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCECUSTGROUPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCECUSTGROUPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCECUSTGROUPLAG : Association to many SOPSOURCECUSTGROUPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCECUSTGROUPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCECUSTGROUPLAG : Association to SOPSOURCECUSTGROUPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCECUSTGROUPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCECUSTGROUPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @sap.label : 'Customer Group / Segment'
    key CUSTGROUP : String(60) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Forecast Error CV Type'
    FORECASTERRORCVTYPE : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCECUSTGROUPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCECUSTGROUPLAG : Association to many SDSOURCECUSTGROUPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCECUSTGROUPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCECUSTGROUPLAG : Association to SDSOURCECUSTGROUPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONRESOURCESUB {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRODUCTIONRESOURCESUB_VI {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRODUCTIONRESOURCESUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRODUCTIONRESOURCESUB : Association to many SOPPRODUCTIONRESOURCESUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRODUCTIONRESOURCESUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRODUCTIONRESOURCESUB : Association to SOPPRODUCTIONRESOURCESUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCASSEMBLYCOMPONENT {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'BOM Source ID'
    VCBOMSOURCEID : String(68);
    @sap.label : 'VC BOM Component Coefficient'
    VCBOMCOMPONENTCOEFFICENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPLOCASSEMBLYCOMPONENT_VI {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'BOM Source ID'
    VCBOMSOURCEID : String(68);
    @sap.label : 'VC BOM Component Coefficient'
    VCBOMCOMPONENTCOEFFICENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPLOCASSEMBLYCOMPONENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPLOCASSEMBLYCOMPONENT : Association to many VCPLOCASSEMBLYCOMPONENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPLOCASSEMBLYCOMPONENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPLOCASSEMBLYCOMPONENT : Association to VCPLOCASSEMBLYCOMPONENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPPRODUCTTO {
    @sap.label : 'Product To'
    key PRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Product To Desc'
    PRDTODESCR : String(60);
    @sap.label : 'Product-To Family'
    PRDTOFAMILY : String(40);
    @sap.label : 'Product-To Series'
    PRDTOSERIES : String(40);
    @sap.label : 'Product-To Sub Family'
    PRDTOSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCELOCATIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCELOCATIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCELOCATIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCELOCATIONVALIDITY : Association to many SDSOURCELOCATIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCELOCATIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCELOCATIONVALIDITY : Association to SDSOURCELOCATIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQGRPATTRRESASSIGN {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQGRPATTRRESASSIGN_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQGRPATTRRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQGRPATTRRESASSIGN : Association to many SQGRPATTRRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQGRPATTRRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQGRPATTRRESASSIGN : Association to SQGRPATTRRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPUOMCONVERSIONFACTOR {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPUOMCONVERSIONFACTOR_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPUOMCONVERSIONFACTORTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPUOMCONVERSIONFACTOR : Association to many SOPUOMCONVERSIONFACTOR_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPUOMCONVERSIONFACTORMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPUOMCONVERSIONFACTOR : Association to SOPUOMCONVERSIONFACTOR {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHPRODUCTIONSOURCEITMS {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Component Substitute'
    MATTRPRODUCTIONSOURCEITMS : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPPRODUCTIONSOURCEITMR {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Reference'
    MATTRPRODUCTIONSOURCEITMR : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCAEXCHANGERATE {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCAEXCHANGERATE_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCAEXCHANGERATETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCAEXCHANGERATE : Association to many VCAEXCHANGERATE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCAEXCHANGERATEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCAEXCHANGERATE : Association to VCAEXCHANGERATE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDLOCATIONFR {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-From Loc. Desc.'
    LOCFRDESCR : String(60);
    @sap.label : 'Ship-From Loc. Region'
    LOCFRREGION : String(20);
    @sap.label : 'Ship-From Loc. Type'
    LOCFRTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONSOURCEITMSUB {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONSOURCEITMSUB_VI {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRODUCTIONSOURCEITMSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRODUCTIONSOURCEITMSUB : Association to many SHPRODUCTIONSOURCEITMSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRODUCTIONSOURCEITMSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRODUCTIONSOURCEITMSUB : Association to SHPRODUCTIONSOURCEITMSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRIORITY {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRIORITY_VI {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRIORITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRIORITY : Association to many SQPRIORITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRIORITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRIORITY : Association to SQPRIORITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDINTERVAL {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDINTERVAL_VI {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDINTERVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDINTERVAL : Association to many SDINTERVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDINTERVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDINTERVAL : Association to SDINTERVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCATIONPRODUCTCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Average Product Cost'
    VCAVERAGEPRODCOST : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCALOCATIONPRODUCTCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Average Product Cost'
    VCAVERAGEPRODCOST : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCALOCATIONPRODUCTCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCALOCATIONPRODUCTCURRENCY : Association to many VCALOCATIONPRODUCTCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCALOCATIONPRODUCTCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCALOCATIONPRODUCTCURRENCY : Association to VCALOCATIONPRODUCTCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHCURRENCY : Association to many SHCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHCURRENCY : Association to SHCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPCURRENCYTO {
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Currency Desc.'
    CURRTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQUOMTO {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQUOMTO_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQUOMTOTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQUOMTO : Association to many SQUOMTO_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQUOMTOMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQUOMTO : Association to SQUOMTO {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPAGGCONSTRAINT {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPAGGCONSTRAINT_VI {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPAGGCONSTRAINTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPAGGCONSTRAINT : Association to many SOPAGGCONSTRAINT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPAGGCONSTRAINTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPAGGCONSTRAINT : Association to SOPAGGCONSTRAINT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHGRPATTRRESASSIGN {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SHGRPATTRRESASSIGN_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Occurence Limit'
    OCCURENCELIMIT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHGRPATTRRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHGRPATTRRESASSIGN : Association to many SHGRPATTRRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHGRPATTRRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHGRPATTRRESASSIGN : Association to SHGRPATTRRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHROPTYPE {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHROPTYPE_VI {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHROPTYPETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHROPTYPE : Association to many SHROPTYPE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHROPTYPEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHROPTYPE : Association to SHROPTYPE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHLOCATIONFR {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-From Loc. Desc.'
    LOCFRDESCR : String(60);
    @sap.label : 'Ship-From Loc. Region'
    LOCFRREGION : String(20);
    @sap.label : 'Ship-From Loc. Type'
    LOCFRTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONRESOURCESUB {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPRODUCTIONRESOURCESUB_VI {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Mandatory Attribute Resource Substitution'
    MANDATTRRESSUB : String(1);
    @sap.label : 'Capa Consumption Factor'
    SCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Subst Capacity Consumption Ratio'
    SCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPRODUCTIONRESOURCESUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPRODUCTIONRESOURCESUB : Association to many SQPRODUCTIONRESOURCESUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPRODUCTIONRESOURCESUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPRODUCTIONRESOURCESUB : Association to SQPRODUCTIONRESOURCESUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPRESOURCE : Association to many SBPRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPRESOURCE : Association to SBPRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPPRODUCTTO {
    @sap.label : 'Product To'
    key PRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Product To Desc'
    PRDTODESCR : String(60);
    @sap.label : 'Product-To Family'
    PRDTOFAMILY : String(40);
    @sap.label : 'Product-To Series'
    PRDTOSERIES : String(40);
    @sap.label : 'Product-To Sub Family'
    PRDTOSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPFORECASTCONSUMPTIONMODE {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPFORECASTCONSUMPTIONMODE_VI {
    @sap.label : 'Forecast Consumption Mode'
    key FCSTCONSMODE : Integer not null;
    @sap.label : 'Direction Description'
    DIRECTIONDESCR : String(60);
    @sap.label : 'Sales Order Consumption Sequence'
    SALESORDERSEQUENCEID : Integer;
    @sap.label : 'Number of Backward Consumption Periods'
    BACKWARDPERIODS : Integer;
    @sap.label : 'Number of Forward Consumption Periods'
    FORWARDPERIODS : Integer;
    @sap.label : 'Direction of the Forecast Consumption'
    DIRECTIONID : Integer;
    @sap.label : 'Boundary'
    BOUNDARYID : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPFORECASTCONSUMPTIONMODETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPFORECASTCONSUMPTIONMODE : Association to many SBPFORECASTCONSUMPTIONMODE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPFORECASTCONSUMPTIONMODEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPFORECASTCONSUMPTIONMODE : Association to SBPFORECASTCONSUMPTIONMODE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONSOURCEITMSUB {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONSOURCEITMSUB_VI {
    @sap.label : 'Substitute Component Product ID'
    key SPRDFR : String(40) not null;
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Mandatory Attribute Sub'
    MANDATTRSUB : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRODUCTIONSOURCEITMSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRODUCTIONSOURCEITMSUB : Association to many SBPPRODUCTIONSOURCEITMSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRODUCTIONSOURCEITMSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRODUCTIONSOURCEITMSUB : Association to SBPPRODUCTIONSOURCEITMSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPSRESOURCELOCATION {
    @sap.label : 'Substitution Resource ID'
    key SRESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Substitute Resource Constr Type'
    SCONSTRAINTTYPE : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPLOCATIONPRODUCTSUB {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPLOCATIONPRODUCTSUB_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-To Date'
    LPSVALIDTO : DateTime;
    @sap.label : 'Mandatory Attribute Loc Prod Sub'
    MANDATTRLOCPRODSUB : String(1);
    @sap.label : 'Reason'
    REASON : String(30);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPLOCATIONPRODUCTSUBTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPLOCATIONPRODUCTSUB : Association to many SOPLOCATIONPRODUCTSUB_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPLOCATIONPRODUCTSUBMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPLOCATIONPRODUCTSUB : Association to SOPLOCATIONPRODUCTSUB {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPGRPATTRVALRESASSIGN {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPGRPATTRVALRESASSIGN_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Production Group Cost'
    GRPCOST : Decimal(18, 6);
    @sap.label : 'Production Group Fixed Capacity Consumption'
    GRPFIXEDPCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Production Group Minimum Quantity'
    GRPMINQUANTITY : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPGRPATTRVALRESASSIGNTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPGRPATTRVALRESASSIGN : Association to many SBPGRPATTRVALRESASSIGN_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPGRPATTRVALRESASSIGNMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPGRPATTRVALRESASSIGN : Association to SBPGRPATTRVALRESASSIGN {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONSOURCEITMVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPRODUCTIONSOURCEITMVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPRODUCTIONSOURCEITMVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPRODUCTIONSOURCEITMVALIDITY : Association to many SBPPRODUCTIONSOURCEITMVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPRODUCTIONSOURCEITMVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPRODUCTIONSOURCEITMVALIDITY : Association to SBPPRODUCTIONSOURCEITMVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCACUSTOMERPRODUCT {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCACUSTOMERPRODUCT_VI {
    @sap.label : 'Customer ID'
    key CUSTID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Market Segment'
    MARKETSEGMENT : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCACUSTOMERPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCACUSTOMERPRODUCT : Association to many VCACUSTOMERPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCACUSTOMERPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCACUSTOMERPRODUCT : Association to VCACUSTOMERPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPPRODUCTSUBSTITUTION {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPPRODUCTSUBSTITUTION_VI {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRODUCTSUBSTITUTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRODUCTSUBSTITUTION : Association to many SOPPRODUCTSUBSTITUTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRODUCTSUBSTITUTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRODUCTSUBSTITUTION : Association to SOPPRODUCTSUBSTITUTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDTRANSPORTATIONRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDTRANSPORTATIONRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Mandatory Attr Trans Resource'
    MANDATTRTRANSPORTATIONRESOURCE : String(1);
    @sap.label : 'End Period of Capacity Consump'
    TCAPACONSEND : Integer;
    @sap.label : 'Start Period of Capacity Consump'
    TCAPACONSSTART : Integer;
    @sap.label : 'Trans Capacity Consumption Rate'
    TCAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Ratio TS'
    TCONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDTRANSPORTATIONRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDTRANSPORTATIONRESOURCE : Association to many SDTRANSPORTATIONRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDTRANSPORTATIONRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDTRANSPORTATIONRESOURCE : Association to SDTRANSPORTATIONRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPUOMCONVERSIONFACTOR {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCPUOMCONVERSIONFACTOR_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPUOMCONVERSIONFACTORTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPUOMCONVERSIONFACTOR : Association to many VCPUOMCONVERSIONFACTOR_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPUOMCONVERSIONFACTORMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPUOMCONVERSIONFACTOR : Association to VCPUOMCONVERSIONFACTOR {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHLOCATIONPRODUCTSUBR {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Loc-Prod Subst Valid-From Date'
    key LPSVALIDFR : DateTime not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Loc Prod Ref'
    MANDATTRLOCPRODSUBR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDSOURCELOCATIONR {
    @sap.label : 'Ship-To Location ID'
    key LOCTO : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Source Location Reference'
    MATTRSOURCELOCATIONR : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONSOURCEITMVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRODUCTIONSOURCEITMVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRODUCTIONSOURCEITMVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRODUCTIONSOURCEITMVALIDITY : Association to many SDPRODUCTIONSOURCEITMVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRODUCTIONSOURCEITMVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRODUCTIONSOURCEITMVALIDITY : Association to SDPRODUCTIONSOURCEITMVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHGRPATTRVAL {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHGRPATTRVAL_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHGRPATTRVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHGRPATTRVAL : Association to many SHGRPATTRVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHGRPATTRVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHGRPATTRVAL : Association to SHGRPATTRVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQRESOURCELOCATIONPRODUCT {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQRESOURCELOCATIONPRODUCT_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Capacity Consumption Rate'
    CAPACONSUMPTION : Decimal(18, 6);
    @sap.label : 'Capacity Consumption Rate Time Series Indicator'
    CONSUMPTIONTS : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQRESOURCELOCATIONPRODUCTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQRESOURCELOCATIONPRODUCT : Association to many SQRESOURCELOCATIONPRODUCT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQRESOURCELOCATIONPRODUCTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQRESOURCELOCATIONPRODUCT : Association to SQRESOURCELOCATIONPRODUCT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPEXCHANGERATE {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SOPEXCHANGERATE_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPEXCHANGERATETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPEXCHANGERATE : Association to many SOPEXCHANGERATE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPEXCHANGERATEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPEXCHANGERATE : Association to SOPEXCHANGERATE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCEPRODUCTIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSOURCEPRODUCTIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSOURCEPRODUCTIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSOURCEPRODUCTIONVALIDITY : Association to many SDSOURCEPRODUCTIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSOURCEPRODUCTIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSOURCEPRODUCTIONVALIDITY : Association to SDSOURCEPRODUCTIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSERVICELEVELCLASS {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSERVICELEVELCLASS_VI {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSERVICELEVELCLASSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSERVICELEVELCLASS : Association to many SBPSERVICELEVELCLASS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSERVICELEVELCLASSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSERVICELEVELCLASS : Association to SBPSERVICELEVELCLASS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity VCPCURRENCYTO {
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Currency Desc.'
    CURRTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSERVICELEVELCLASS {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSERVICELEVELCLASS_VI {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSERVICELEVELCLASSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSERVICELEVELCLASS : Association to many SQSERVICELEVELCLASS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSERVICELEVELCLASSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSERVICELEVELCLASS : Association to SQSERVICELEVELCLASS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDGRPATTRVAL {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDGRPATTRVAL_VI {
    @sap.label : 'Production Group Attribute Value'
    key GRPATTRVAL : String(60) not null;
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDGRPATTRVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDGRPATTRVAL : Association to many SDGRPATTRVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDGRPATTRVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDGRPATTRVAL : Association to SDGRPATTRVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRIORITY {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPRIORITY_VI {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRIORITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRIORITY : Association to many SDPRIORITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRIORITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRIORITY : Association to SDPRIORITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCAUOMCONVERSIONFACTOR {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity VCAUOMCONVERSIONFACTOR_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'UOM Conversion Factor'
    UOMCONVERSIONFACTOR : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCAUOMCONVERSIONFACTORTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCAUOMCONVERSIONFACTOR : Association to many VCAUOMCONVERSIONFACTOR_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCAUOMCONVERSIONFACTORMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCAUOMCONVERSIONFACTOR : Association to VCAUOMCONVERSIONFACTOR {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQINTERVAL {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQINTERVAL_VI {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQINTERVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQINTERVAL : Association to many SQINTERVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQINTERVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQINTERVAL : Association to SQINTERVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPINTERVAL {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPINTERVAL_VI {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPINTERVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPINTERVAL : Association to many SOPINTERVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPINTERVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPINTERVAL : Association to SOPINTERVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDGRPATTRHEADER {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDGRPATTRHEADER_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDGRPATTRHEADERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDGRPATTRHEADER : Association to many SDGRPATTRHEADER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDGRPATTRHEADERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDGRPATTRHEADER : Association to SDGRPATTRHEADER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPUOMTO {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPUOMTO_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPUOMTOTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPUOMTO : Association to many SBPUOMTO_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPUOMTOMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPUOMTO : Association to SBPUOMTO {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPCURRENCY : Association to many VCPCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPCURRENCY : Association to VCPCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCEPRODUCTIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCEPRODUCTIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCEPRODUCTIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCEPRODUCTIONVALIDITY : Association to many SOPSOURCEPRODUCTIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCEPRODUCTIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCEPRODUCTIONVALIDITY : Association to SOPSOURCEPRODUCTIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPEXCHANGERATE {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPEXCHANGERATE_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPEXCHANGERATETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPEXCHANGERATE : Association to many SBPEXCHANGERATE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPEXCHANGERATEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPEXCHANGERATE : Association to SBPEXCHANGERATE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSERVICELEVELCLASS {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSERVICELEVELCLASS_VI {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSERVICELEVELCLASSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSERVICELEVELCLASS : Association to many SOPSERVICELEVELCLASS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSERVICELEVELCLASSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSERVICELEVELCLASS : Association to SOPSERVICELEVELCLASS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPPRODUCTIONSOURCEITMR {
    @sap.label : 'Component Product ID'
    key PRDFR : String(40) not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Mandatory Attribute Production Source Item Reference'
    MATTRPRODUCTIONSOURCEITMR : String(1);
    @sap.label : 'Time-Series Component Coefficient Indicator'
    COMPONENTCOEFFICIENTTS : String(1);
    @sap.label : 'Component Offset'
    COMPONENTOFFSET : Integer;
    @sap.label : 'Component Coefficient'
    COMPONENTCOEFFICIENT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSHELFLIFE {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPSHELFLIFE_VI {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPSHELFLIFETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPSHELFLIFE : Association to many SBPSHELFLIFE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPSHELFLIFEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPSHELFLIFE : Association to SBPSHELFLIFE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity VCALOCATIONFR {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-From Loc. Desc.'
    LOCFRDESCR : String(60);
    @sap.label : 'Ship-From Loc. Region'
    LOCFRREGION : String(20);
    @sap.label : 'Ship-From Loc. Type'
    LOCFRTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONSOURCEITMVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRODUCTIONSOURCEITMVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid From'
    key COMPVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Component Valid To'
    COMPVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRODUCTIONSOURCEITMVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRODUCTIONSOURCEITMVALIDITY : Association to many SHPRODUCTIONSOURCEITMVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRODUCTIONSOURCEITMVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRODUCTIONSOURCEITMVALIDITY : Association to SHPRODUCTIONSOURCEITMVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRIORITY {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHPRIORITY_VI {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHPRIORITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHPRIORITY : Association to many SHPRIORITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHPRIORITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHPRIORITY : Association to SHPRIORITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDCURRENCYTO {
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Currency Desc.'
    CURRTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPROPTYPE {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPROPTYPE_VI {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPROPTYPETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPROPTYPE : Association to many SOPROPTYPE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPROPTYPEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPROPTYPE : Association to SOPROPTYPE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCELOCATIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPSOURCELOCATIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid From'
    key TVALIDFR : DateTime not null;
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Location Sourcing Valid To'
    TVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPSOURCELOCATIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPSOURCELOCATIONVALIDITY : Association to many SOPSOURCELOCATIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPSOURCELOCATIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPSOURCELOCATIONVALIDITY : Association to SOPSOURCELOCATIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHASSUMPTIONCATEGORY {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHASSUMPTIONCATEGORY_VI {
    @sap.label : 'Assumption Category ID'
    key ASSUMPTIONCATID : String(20) not null;
    @sap.label : 'Assumption Category'
    ASSUMPTIONCATDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHASSUMPTIONCATEGORYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHASSUMPTIONCATEGORY : Association to many SHASSUMPTIONCATEGORY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHASSUMPTIONCATEGORYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHASSUMPTIONCATEGORY : Association to SHASSUMPTIONCATEGORY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity VCPLOCATIONFR {
    @sap.label : 'Ship-From Loc. ID'
    key LOCFR : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Ship-From Loc. Desc.'
    LOCFRDESCR : String(60);
    @sap.label : 'Ship-From Loc. Region'
    LOCFRREGION : String(20);
    @sap.label : 'Ship-From Loc. Type'
    LOCFRTYPE : String(10);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPLANNINGUNIT {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPPLANNINGUNIT_VI {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPPLANNINGUNITTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPPLANNINGUNIT : Association to many SBPPLANNINGUNIT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPPLANNINGUNITMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPPLANNINGUNIT : Association to SBPPLANNINGUNIT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPSPRODUCTTO {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSERVICELEVELCLASS {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDSERVICELEVELCLASS_VI {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    @sap.label : 'Target Service Level for ABC Class'
    ABCSERVICELEVEL : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDSERVICELEVELCLASSTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDSERVICELEVELCLASS : Association to many SDSERVICELEVELCLASS_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDSERVICELEVELCLASSMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDSERVICELEVELCLASS : Association to SDSERVICELEVELCLASS {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQAGGCONSTRAINT {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQAGGCONSTRAINT_VI {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQAGGCONSTRAINTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQAGGCONSTRAINT : Association to many SQAGGCONSTRAINT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQAGGCONSTRAINTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQAGGCONSTRAINT : Association to SQAGGCONSTRAINT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSHELFLIFE {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSHELFLIFE_VI {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSHELFLIFETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSHELFLIFE : Association to many SHSHELFLIFE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSHELFLIFEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSHELFLIFE : Association to SHSHELFLIFE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPCURRENCYTO {
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Currency Desc.'
    CURRTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQPRODUCTTO {
    @sap.label : 'Product To'
    key PRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Product To Desc'
    PRDTODESCR : String(60);
    @sap.label : 'Product-To Family'
    PRDTOFAMILY : String(40);
    @sap.label : 'Product-To Series'
    PRDTOSERIES : String(40);
    @sap.label : 'Product-To Sub Family'
    PRDTOSUBFAMILY : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQGRPATTRHEADER {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQGRPATTRHEADER_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQGRPATTRHEADERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQGRPATTRHEADER : Association to many SQGRPATTRHEADER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQGRPATTRHEADERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQGRPATTRHEADER : Association to SQGRPATTRHEADER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SQLOCRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQLOCRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    NavSQLOCRISKOPP : Association to many SQLOCRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQLOCRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQLOCRISKOPP : Association to SQLOCRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPGRPATTRHEADER {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPGRPATTRHEADER_VI {
    @sap.label : 'Production Group Attribute ID'
    key GRPATTRID : String(40) not null;
    @sap.label : 'Production Group Attribute Description'
    GRPATTRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPGRPATTRHEADERTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPGRPATTRHEADER : Association to many SBPGRPATTRHEADER_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPGRPATTRHEADERMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPGRPATTRHEADER : Association to SBPGRPATTRHEADER {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDEXCHANGERATE {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDEXCHANGERATE_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    @sap.label : 'Exchange rate'
    EXCHANGERATE : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDEXCHANGERATETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDEXCHANGERATE : Association to many SDEXCHANGERATE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDEXCHANGERATEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDEXCHANGERATE : Association to SDEXCHANGERATE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDPRODUCTSUBSTITUTION {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDPRODUCTSUBSTITUTION_VI {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPRODUCTSUBSTITUTIONTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPRODUCTSUBSTITUTION : Association to many SDPRODUCTSUBSTITUTION_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPRODUCTSUBSTITUTIONMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPRODUCTSUBSTITUTION : Association to SDPRODUCTSUBSTITUTION {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQLAG : Association to many SQLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQLAG : Association to SQLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBP {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBP_VI {
    @sap.label : 'ABC Code'
    key ABCID : String(3) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBP : Association to many SBP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBP : Association to SBP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDLOCATIONPRODUCTCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SDLOCATIONPRODUCTCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @sap.label : 'Product ID'
    key PRDID : String(40) not null;
    @sap.label : 'Cost per Unit of Inventory'
    COSTPERUNIT : Decimal(18, 6);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDLOCATIONPRODUCTCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDLOCATIONPRODUCTCURRENCY : Association to many SDLOCATIONPRODUCTCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDLOCATIONPRODUCTCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDLOCATIONPRODUCTCURRENCY : Association to SDLOCATIONPRODUCTCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPCURRENCY {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPCURRENCY_VI {
    @sap.label : 'Currency ID'
    key CURRID : String(5) not null;
    @sap.label : 'Currency Desc.'
    CURRDESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPCURRENCYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPCURRENCY : Association to many SBPCURRENCY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPCURRENCYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPCURRENCY : Association to SBPCURRENCY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQSPRODUCT {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCEPRODUCTIONVALIDITY {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHSOURCEPRODUCTIONVALIDITY_VI {
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid From'
    key PVALIDFR : DateTime not null;
    @sap.label : 'Source ID'
    key SOURCEID : String(66) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Production Sourcing Valid To'
    PVALIDTO : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHSOURCEPRODUCTIONVALIDITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHSOURCEPRODUCTIONVALIDITY : Association to many SHSOURCEPRODUCTIONVALIDITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHSOURCEPRODUCTIONVALIDITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHSOURCEPRODUCTIONVALIDITY : Association to SHSOURCEPRODUCTIONVALIDITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQRESOURCE {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQRESOURCE_VI {
    @sap.label : 'Resource ID'
    key RESID : String(40) not null;
    @sap.label : 'Resource Desc.'
    RESDESCR : String(60);
    @sap.label : 'Capacity Utilization Buffer - Green in Percentage'
    CAPACITYBUFFERGREENPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Red in Percentage'
    CAPACITYBUFFERREDPCT : Integer;
    @sap.label : 'Capacity Utilization Buffer - Yellow in Percentage'
    CAPACITYBUFFERYELLOWPCT : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQRESOURCETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQRESOURCE : Association to many SQRESOURCE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQRESOURCEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQRESOURCE : Association to SQRESOURCE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHDSFULFILLMENT {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHDSFULFILLMENT_VI {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHDSFULFILLMENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHDSFULFILLMENT : Association to many SHDSFULFILLMENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHDSFULFILLMENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHDSFULFILLMENT : Association to SHDSFULFILLMENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHCURRENCYTO {
    @sap.label : 'Target Currency'
    key CURRTOID : String(5) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target Currency Desc.'
    CURRTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPDSFULFILLMENT {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPDSFULFILLMENT_VI {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPDSFULFILLMENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPDSFULFILLMENT : Association to many SBPDSFULFILLMENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPDSFULFILLMENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPDSFULFILLMENT : Association to SBPDSFULFILLMENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPLOCRISKOPP {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Compound'
  entity SBPLOCRISKOPP_VI {
    @sap.label : 'Risk/Opp ID'
    key ROPID : String(36) not null;
    @sap.label : 'Location ID'
    key LOCID : String(20) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPLOCRISKOPPTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPLOCRISKOPP : Association to many SBPLOCRISKOPP_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPLOCRISKOPPMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPLOCRISKOPP : Association to SBPLOCRISKOPP {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPLANNINGUNIT {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDPLANNINGUNIT_VI {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDPLANNINGUNITTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDPLANNINGUNIT : Association to many SDPLANNINGUNIT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDPLANNINGUNITMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDPLANNINGUNIT : Association to SDPLANNINGUNIT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRIORITY {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPPRIORITY_VI {
    @sap.label : 'Priority ID'
    key PRIORITYID : String(20) not null;
    @sap.label : 'Priority Desc'
    PRIORITYDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPPRIORITYTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPPRIORITY : Association to many SOPPRIORITY_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPPRIORITYMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPPRIORITY : Association to SOPPRIORITY {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPROPTYPE {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPROPTYPE_VI {
    @sap.label : 'Risk/Opp Type'
    key ROPTYPEID : String(20) not null;
    @sap.label : 'Risk/Opp Type Descr'
    ROPTYPEDESCR : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPROPTYPETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPROPTYPE : Association to many SBPROPTYPE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPROPTYPEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPROPTYPE : Association to SBPROPTYPE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSHELFLIFE {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQSHELFLIFE_VI {
    @sap.label : 'Shelf-Life Periods'
    key SHELFLIFEID : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQSHELFLIFETrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQSHELFLIFE : Association to many SQSHELFLIFE_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQSHELFLIFEMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQSHELFLIFE : Association to SQSHELFLIFE {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHLAG : Association to many SHLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHLAG : Association to SHLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPLANNINGUNIT {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQPLANNINGUNIT_VI {
    @sap.label : 'Subnetwork ID'
    key PLUNITID : String(20) not null;
    @sap.label : 'Subnetwork Description'
    PLUNITDESCR : String(40);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQPLANNINGUNITTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQPLANNINGUNIT : Association to many SQPLANNINGUNIT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQPLANNINGUNITMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQPLANNINGUNIT : Association to SQPLANNINGUNIT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SQSPRODUCTTO {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDAGGCONSTRAINT {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDAGGCONSTRAINT_VI {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDAGGCONSTRAINTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDAGGCONSTRAINT : Association to many SDAGGCONSTRAINT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDAGGCONSTRAINTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDAGGCONSTRAINT : Association to SDAGGCONSTRAINT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPAGGCONSTRAINT {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SBPAGGCONSTRAINT_VI {
    @sap.label : 'Aggregate'
    key AGGREGATE : String(4) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SBPAGGCONSTRAINTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSBPAGGCONSTRAINT : Association to many SBPAGGCONSTRAINT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SBPAGGCONSTRAINTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSBPAGGCONSTRAINT : Association to SBPAGGCONSTRAINT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPSPRODUCT {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPDSFULFILLMENT {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPDSFULFILLMENT_VI {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPDSFULFILLMENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPDSFULFILLMENT : Association to many SOPDSFULFILLMENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPDSFULFILLMENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPDSFULFILLMENT : Association to SOPDSFULFILLMENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPUOMTO {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SOPUOMTO_VI {
    @sap.label : 'Target UoM'
    key UOMTOID : String(3) not null;
    @sap.label : 'Target UoM Desc.'
    UOMTODESCR : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SOPUOMTOTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSOPUOMTO : Association to many SOPUOMTO_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SOPUOMTOMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSOPUOMTO : Association to SOPUOMTO {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHSPRODUCTTO {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SBPSPRODUCTTO {
    @sap.label : 'Leading Product'
    key SPRDTO : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPLAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCPLAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCPLAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCPLAG : Association to many VCPLAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCPLAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCPLAG : Association to VCPLAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SOPSPRODUCT {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDDSFULFILLMENT {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SDDSFULFILLMENT_VI {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SDDSFULFILLMENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSDDSFULFILLMENT : Association to many SDDSFULFILLMENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SDDSFULFILLMENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSDDSFULFILLMENT : Association to SDDSFULFILLMENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHINTERVAL {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SHINTERVAL_VI {
    @sap.label : 'Lead Time Interval'
    key LEADTIMEINTERVAL : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SHINTERVALTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSHINTERVAL : Association to many SHINTERVAL_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SHINTERVALMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSHINTERVAL : Association to SHINTERVAL {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SDSPRODUCT {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQDSFULFILLMENT {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity SQDSFULFILLMENT_VI {
    @sap.label : 'Demand Sensing Order Fulfillment Days'
    key DSFULFILLMENTDAYS : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SQDSFULFILLMENTTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavSQDSFULFILLMENT : Association to many SQDSFULFILLMENT_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity SQDSFULFILLMENTMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavSQDSFULFILLMENT : Association to SQDSFULFILLMENT {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCALAG {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Simple'
  entity VCALAG_VI {
    @sap.label : 'Lag'
    key LAG : Integer not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity VCALAGTrans {
    key TransactionID : String not null;
    TransactionName : String(60);
    DoCommit : Boolean;
    RequestedAttributes : String;
    DeleteEntries : Boolean;
    PlanningAreaID : String(10);
    VersionID : String(10);
    NavVCALAG : Association to many VCALAG_VI {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.requires.filter : 'true'
  @sap.content.version : '1'
  entity VCALAGMessage {
    key TransactionID : String not null;
    key MessageID : String not null;
    MessageText : String;
    NavVCALAG : Association to VCALAG {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.configuration.type : 'Reference'
  entity SHSPRODUCT {
    @sap.label : 'Substitute Product ID'
    key SPRDID : String(40) not null;
    key PlanningAreaID : String not null;
    key VersionID : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Creation Date'
    CREATEDDATE : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Last Modified Date'
    LASTMODIFIEDDATE : DateTime;
  };

  @cds.external : true
  action Commit(
    P_TransactionID : String
  ) returns ValueResultSet;

  @cds.external : true
  function GetExportResult(
    P_TransactionID : String
  ) returns many ValueResultSet;

  @cds.external : true
  function GetTransactionID() returns ValueResultSet;

  @cds.external : true
  action InitiateParallelProcess(
    TransactionName : String(60),
    VersionID : String,
    @sap.label : 'Transaction ID'
    TransactionID : String(32),
    MasterDataTypeID : String(32),
    PlanningArea : String
  ) returns ValueResultSet;
};

