<GlobalFunctions>
  <JavascriptQuery
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="JavascriptQuery"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="getProducts"
    playgroundQueryUuid="92475b70-7a2c-46d8-86da-1e2cc8cb08f3"
    query={include("./lib/query2.sql", "string")}
    resourceDisplayName="onboarding_db"
    resourceName="onboarding_db"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query3"
    query={include("./lib/query3.sql", "string")}
    queryDisabled={
      '{{ current_user.email == "alice.heber+something1@gmail.com" }}'
    }

    resourceDisplayName="retool db production"
    resourceName="35d1bdeb-0ee9-46d1-a495-8a94414cc574"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
</GlobalFunctions>
