<GlobalFunctions>
  <SqlQueryUnified
    id="getLonLat"
    query={include("./lib/getLonLat.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="hardcode"
    query={include("./lib/hardcode.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  />
</GlobalFunctions>
