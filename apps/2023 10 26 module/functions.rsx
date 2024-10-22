<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/query1.sql", "string")}
    resourceDisplayName="onboarding_db"
    resourceName="onboarding_db"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
