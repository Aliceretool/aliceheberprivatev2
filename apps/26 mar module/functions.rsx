<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
  />
  <RESTQuery
    id="query2"
    isMultiplayerEdited={false}
    resourceDisplayName="delete me"
    resourceName="f0e56132-a402-490d-ac41-3af698c2202d"
    resourceNameOverride="{{ query3.data }}"
    resourceTypeOverride="restapi"
  />
  <Function
    id="transformer1"
    funcBody={include("./lib/transformer1.js", "string")}
  />
  <JavascriptQuery
    id="query3"
    notificationDuration={4.5}
    query={include("./lib/query3.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
