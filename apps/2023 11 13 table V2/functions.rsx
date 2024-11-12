<GlobalFunctions>
  <SqlQueryUnified
    id="addDepartment"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration="20"
    query={include("./lib/addDepartment.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getAll"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="bulkUpdate"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration="2"
    query={include("./lib/bulkUpdate.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <RESTQuery
    id="getAll"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="artists"
    queryDisabled="true"
    queryDisabledMessage="Nope - can not!"
    resourceDisplayName="Spotify"
    resourceName="a4ea52d8-671e-441f-8fa5-a8e8cc879f72"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="getAllAliceUser"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getAllAliceUser.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="getAllAliceUserWHERE"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getAllAliceUserWHERE.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <JavascriptQuery
    id="query6"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/query6.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// Query results are available as the `data` variable
return data"
    workflowBlockPluginId={null}
  />
  <RetoolAIQuery
    id="query7"
    defaultModelInitialized={false}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    model="gpt-4o"
    notificationDuration={4.5}
    providerId="retoolAIBuiltIn::openAI"
    providerName="openAI"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    transformer="// Query results are available as the `data` variable
return data"
  />
  <JavascriptQuery
    id="query8"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    transformer="// Query results are available as the `data` variable
return data"
  />
</GlobalFunctions>