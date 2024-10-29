<GlobalFunctions>
  <SqlQueryUnified
    id="getLonLat"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getLonLat.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="hardcode"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/hardcode.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  />
</GlobalFunctions>
