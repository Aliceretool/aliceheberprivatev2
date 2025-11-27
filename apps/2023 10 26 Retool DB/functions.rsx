<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    cacheKeyTtl={300}
    enableCaching={true}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/query1.sql", "string")}
    resourceName="730be827-73b8-4ab6-a896-25d124c7df31"
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query2"
    isHidden={false}
    notificationDuration={4.5}
    query={include("./lib/query2.sql", "string")}
    resourceName="730be827-73b8-4ab6-a896-25d124c7df31"
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query3"
    isHidden={false}
    notificationDuration={4.5}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
  />
  <JavascriptQuery
    id="query4"
    isHidden={false}
    notificationDuration={4.5}
    query={include("./lib/query4.js", "string")}
    resourceName="JavascriptQuery"
  />
  <SqlQueryUnified
    id="query5"
    isHidden={false}
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="permTestQueryRetoolDB"
    playgroundQueryUuid="2b17f086-2ce6-4f66-8750-5db0e3a49001"
    query={include("./lib/query5.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    retoolVersion="3.75.7"
    warningCodes={[]}
  />
</GlobalFunctions>
