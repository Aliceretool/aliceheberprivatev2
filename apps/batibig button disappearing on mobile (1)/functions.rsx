<GlobalFunctions>
  <SqlQueryUnified
    id="getRows"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getRows.sql", "string")}
    queryTimeout="10001"
    resourceName="4465247e-0868-4261-ae6b-789273d5a26a"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
