<GlobalFunctions>
  <SqlQueryUnified
    id="getAll"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getAll.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="insertRecord"
    actionType="INSERT"
    changeset={
      '[{"key":"consultation_Day","value":"Friday"},{"key":"patient_name","value":"Sophie"},{"key":"patient_id","value":"4"},{"key":"doctor_id","value":"40"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/insertRecord.sql", "string")}
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="consultations"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getAll"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="query3"
    notificationDuration={4.5}
    query={include("./lib/query3.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="query4"
    notificationDuration={4.5}
    query={include("./lib/query4.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
