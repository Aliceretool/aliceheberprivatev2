<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    addingNewFieldForMigration={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    query={include("./lib/query1.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="query2"
    isHidden={false}
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
  />
</GlobalFunctions>
