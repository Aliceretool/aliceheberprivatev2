<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="demo usage 0"
    playgroundQueryUuid="f9ebd61e-9d2f-4ec9-a40b-952ce41fb74f"
    query={include("./lib/query1.sql", "string")}
    resourceDisplayName="onboarding_db"
    resourceName="onboarding_db"
    retoolVersion="3.36.0"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
