<GlobalFunctions>
  <SqlQueryUnified
    id="getData"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    pluginType="SqlQueryUnified"
    query={include("./lib/getData.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    resourceTypeOverride=""
    tableName="access_control_list_members"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="addRow"
    actionType="INSERT"
    changeset={
      '[{"key":"createdAt","value":"{{form_dateTime1.value}}"},{"key":"updatedAt","value":"{{form_dateTime2.value}}"},{"key":"aclId","value":"{{form_textInput3.value}}"},{"key":"memberType","value":"{{form_textInput4.value}}"},{"key":"memberId","value":"{{form_textInput5.value}}"},{"key":"addedByUser","value":"{{form_numberInput6.value}}"},{"key":"reasonMetadata","value":"{{form_textInput7.value}}"},{"key":"id","value":"{{form_textInput8.value}}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    pluginType="SqlQueryUnified"
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    runWhenModelUpdates={false}
    tableName="access_control_list_members"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRow"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"createdAt","value":"{{form_dateTime1.value}}"},{"key":"updatedAt","value":"{{form_dateTime2.value}}"},{"key":"aclId","value":"{{form_textInput3.value}}"},{"key":"memberType","value":"{{form_textInput4.value}}"},{"key":"memberId","value":"{{form_textInput5.value}}"},{"key":"addedByUser","value":"{{form_numberInput6.value}}"},{"key":"reasonMetadata","value":"{{form_textInput7.value}}"},{"key":"id","value":"{{form_textInput8.value}}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"id","value":"{{table1.selectedRow.data.id}}","operation":"="}]'
    }
    pluginType="SqlQueryUnified"
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    runWhenModelUpdates={false}
    tableName="access_control_list_members"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getAllSpacesOrgs"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/getAllSpacesOrgs.sql", "string")}
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getAllResources"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/getAllResources.sql", "string")}
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getAllSCMrepoVersionMigration"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/getAllSCMrepoVersionMigration.sql", "string")}
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getAllSpaces"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/getAllSpaces.sql", "string")}
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getAllAuditTrail"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/getAllAuditTrail.sql", "string")}
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getAllFolders"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getAllFolders.sql", "string")}
    resourceDisplayName="main DB spaces balloon instance"
    resourceName="c25a1393-d58e-464c-9e1a-2feb2e0d14e2"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
