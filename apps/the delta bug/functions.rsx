<GlobalFunctions>
  <State
    id="arrayOfObjects"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value={
      '[\n  { name: "Alice" },\n  { date: "19-03-2024" },\n  { Postcode: "12345" }\n]'
    }
  />
  <JavascriptQuery
    id="returnTransformer"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/returnTransformer.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="transformer1"
    funcBody={include("./lib/transformer1.js", "string")}
  />
</GlobalFunctions>
