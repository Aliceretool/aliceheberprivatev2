<GlobalFunctions>
  <RESTQuery
    id="query1"
    bodyType="json"
    headers={
      '[{"key":"accept","value":"application/json"},{"key":"Authorization","value":"old_token"}]'
    }
    query="https://httpbin.org/post"
    resourceDisplayName="blank rest api"
    resourceName="e4fe7db9-f97e-4031-aa5b-929fec8863e6"
    runWhenModelUpdates={false}
    type="POST"
  />
  <SqlQueryUnified
    id="query2"
    query={include("./lib/query2.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    warningCodes={[]}
  />
</GlobalFunctions>
