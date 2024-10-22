<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/query1.sql", "string")}
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="query2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceDisplayName="[demo resource] PostgreSQL"
    resourceName="[demo resource] PostgreSQL"
    transformer="// Query results are available as the `data` variable
return data"
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="query3"
    query={include("./lib/query3.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    warningCodes={[]}
  />
</GlobalFunctions>
