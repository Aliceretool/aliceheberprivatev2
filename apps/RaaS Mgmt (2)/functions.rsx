<GlobalFunctions>
  <Folder id="Types">
    <Function
      id="transfer_of_risk_options"
      funcBody={include("./lib/transfer_of_risk_options.js", "string")}
      runBehavior="debounced"
    />
    <Function
      id="defleeting_logistics_options"
      funcBody={include("./lib/defleeting_logistics_options.js", "string")}
      runBehavior="debounced"
    />
    <Function
      id="price_inclusion_types"
      funcBody={include("./lib/price_inclusion_types.js", "string")}
      runBehavior="debounced"
    />
    <Function
      id="supply_order_types"
      funcBody={include("./lib/supply_order_types.js", "string")}
      runBehavior="debounced"
    />
    <Function
      id="car_lifecycle_status"
      funcBody={include("./lib/car_lifecycle_status.js", "string")}
      runBehavior="debounced"
    />
    <Function
      id="remarketing_end_triggers"
      funcBody={include("./lib/remarketing_end_triggers.js", "string")}
      runBehavior="debounced"
    />
  </Folder>
  <SqlQueryUnified
    id="cars_missing_supply_trade"
    clonedDemoResourceType="bigquery"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("./lib/cars_missing_supply_trade.sql", "string")}
    resourceName="91cfda32-6f09-45f1-b049-0419d032b5da"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="count"
    clonedDemoResourceType="bigquery"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("./lib/count.sql", "string")}
    resourceName="91cfda32-6f09-45f1-b049-0419d032b5da"
    runWhenModelUpdates={false}
    transformer="return formatDataAsArray(data)"
    warningCodes={[]}
  />
</GlobalFunctions>
