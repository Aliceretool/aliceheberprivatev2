<GlobalFunctions>
  <RESTQuery
    id="getAll"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="albums/{{text1.value}}"
    resourceName="aba900e4-042b-42a3-97aa-0ab7a04c42e3"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
