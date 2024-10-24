<GlobalFunctions>
  <SqlQueryUnified
    id="getRows"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getRows.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowBlockPluginId={null}
  />
  <State
    id="scannerDisable"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="false"
  />
</GlobalFunctions>
