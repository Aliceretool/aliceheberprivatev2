<GlobalFunctions>
  <SqlQueryUnified
    id="getIssues"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/getIssues.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getTimeAccount"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/getTimeAccount.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="insTime"
    actionType="INSERT"
    changeset={
      '[{"key":"timeID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{ select32.value }}"},{"key":"userID","value":"{{ formatDataAsArray(getUser.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"description","value":"{{textArea_planTimeDescription2.value}}"},{"key":"is_period","value":"{{checkbox_planTimePeriod2.value}}"},{"key":"time","value":"{{ numberInput_time2.value }}"},{"key":"date_start","value":"{{ dateRange_planTime2.value.start }}"},{"key":"date_end","value":"{{ dateRange_planTime2.value.end}}"},{"key":"is_logged","value":"1"},{"key":"accountID","value":"{{ select33.value }}"},{"key":"date_logged","value":"{{moment().format()}}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="time"
    transformer="// Query results are available as the `data` variable
return data"
    updateSetValueDynamically={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getUser"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/getUser.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <GlobalWidgetQuery
    id="close"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
</GlobalFunctions>
