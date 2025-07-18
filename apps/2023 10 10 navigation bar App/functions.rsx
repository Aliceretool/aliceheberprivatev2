<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    query={include("./lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
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
    isHidden={false}
    resourceName="[demo resource] PostgreSQL"
    transformer="// Query results are available as the `data` variable
return data"
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="query4"
    isHidden={false}
    query={include("./lib/query4.sql", "string")}
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    warningCodes={[]}
  />
  <GraphQLQuery
    id="query5"
    body={include("./lib/query5.gql", "string")}
    isHidden={false}
    resourceDisplayName="Alice GraphQL test"
    resourceName="6cf498fb-1859-42dd-add7-4871824ad324"
  />
</GlobalFunctions>
