<GlobalFunctions>
  <SqlQueryUnified
    id="query3"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/query3.sql", "string")}
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="query4"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    imageModel="dall-e-2"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="query5"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    imageModel="dall-e-2"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="query6"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/query6.js", "string")}
    queryDisabled="{{switch1.value === true}}"
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="query7"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="browse/new-releases"
    resourceName="7eb3d4de-b99b-47bf-a231-24189eb310a4"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query8"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/query8.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query9"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="query9"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/query9.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
