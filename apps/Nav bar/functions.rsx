<GlobalFunctions>
  <Folder id="login">
    <RESTQuery
      id="api_login"
      body={'[{"key":"token","value":"OAUTH2_TOKEN"}]'}
      bodyType="json"
      query="api/login/superuser"
      resourceName="fb17e787-54f7-4616-87f8-8c41992d7e01"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      workflowBlockPluginId={null}
    />
    <JavascriptQuery
      id="check_capital_ops_group_query"
      query={include("./lib/check_capital_ops_group_query.js", "string")}
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowBlockPluginId={null}
    />
    <JavascriptQuery
      id="logout_query"
      query={include("./lib/logout_query.js", "string")}
      resourceName="JavascriptQuery"
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowBlockPluginId={null}
    />
  </Folder>
</GlobalFunctions>
