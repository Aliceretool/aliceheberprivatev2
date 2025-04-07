<GlobalFunctions>
  <JavascriptQuery
    id="query1"
    notificationDuration={4.5}
    query={include("./lib/query1.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <RetoolStorageQuery
    id="retoolStorageUpload_query1"
    actionType="upload"
    data="{{ file.base64Data }}"
    fileName="{{ file.name }}"
    resourceDisplayName="retool_storage"
    resourceName="retool_storage"
    runWhenModelUpdates={false}
    uploadBy="programmatic"
  />
  <JavascriptQuery
    id="uploadManager_query2"
    query={include("./lib/uploadManager_query2.js", "string")}
    resourceName="JavascriptQuery"
  />
</GlobalFunctions>
