<GlobalFunctions>
  <SqlQueryUnified
    id="getRows"
    query={include("./lib/getRows.sql", "string")}
    queryTimeout="10001"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
  />
  <State id="selectedItem" />
</GlobalFunctions>
