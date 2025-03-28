<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    cacheKeyTtl={300}
    enableCaching={true}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/query1.sql", "string")}
    resourceDisplayName="main DB"
    resourceName="730be827-73b8-4ab6-a896-25d124c7df31"
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query2"
    notificationDuration={4.5}
    query={include("./lib/query2.sql", "string")}
    resourceDisplayName="main DB"
    resourceName="730be827-73b8-4ab6-a896-25d124c7df31"
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query3"
    notificationDuration={4.5}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
  />
  <JavascriptQuery
    id="query4"
    notificationDuration={4.5}
    query={include("./lib/query4.js", "string")}
    resourceName="JavascriptQuery"
  />
</GlobalFunctions>
