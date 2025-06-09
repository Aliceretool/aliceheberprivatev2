<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    query={include("./lib/query1.sql", "string")}
    resourceDisplayName="main DB"
    resourceName="730be827-73b8-4ab6-a896-25d124c7df31"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="query2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="function1"
    isFunction={true}
    resourceName="JavascriptQuery"
  />
  <JavascriptQuery
    id="query2"
    notificationDuration={4.5}
    query={include("./lib/query2.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
