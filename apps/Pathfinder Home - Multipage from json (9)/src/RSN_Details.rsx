<Screen
  id="RSN_Details"
  _hashParams={[]}
  _searchParams={[]}
  title="RSN Details"
  urlSlug="RSN_Details"
>
  <Folder id="issue">
    <SqlQueryUnified
      id="refresh_results2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/refresh_results2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_test"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"test","value":"{{ textInput_test2.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_test.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_pHMeter"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"phMeter","value":"{{ segmentedControl4.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_pHMeter.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_sf"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"SF","value":"{{ textInput27.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_sf.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_dueDate6"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"due_date","value":"{{ date_due_detail6.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      doNotThrowOnNoOp={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_dueDate6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getIssue13"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getIssue13.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_assignToMe6"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ current_user.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_assignToMe6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_description6"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"description","value":"{{richTextEditor11.value == \'<p><br></p>\' ? null : richTextEditor11.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_description6.sql", "string")}
      queryDisabled="{{ richTextEditor11.value ==  '<p>undefined</p>' || richTextEditor11.value ==  '<p>null</p>' }}"
      queryDisabledMessage="Description could not be saved."
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="upd_assignto_supervisor2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ select42.selectedItem.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_assignto_supervisor2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_productName"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"product_name","value":"{{ select_productName.selectedItem.id }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_productName.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_balanceSlip"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"balance_slip","value":"{{ segmentedControl5.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_balanceSlip.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_PrepExpiry"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"prep_expiry","value":"{{ segmentedControl3.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_PrepExpiry.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getDeviationIssues4"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getDeviationIssues4.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_Method"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"method_t","value":"{{ textInput23.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_Method.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_dilution"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"dilution","value":"{{ textInput26.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_dilution.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="upd_assignto_reporter2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ getIssue13.data.created_by[0] }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_assignto_reporter2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_prepExpiryReason"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"prep_expiry_reason","value":"{{ textInput21.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_prepExpiryReason.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_pHMeterCalibDate"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"phMeter_Calibration_Expiry","value":"{{ date1.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_pHMeterCalibDate.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_testing5"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == \'Modification Accepted\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Modification Accepted"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_testing5.sql", "string")}
      queryDisabled="{{ getIssue13.data.status_value[0] == 'CAPA Created' }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_assign6"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ select44.selectedItem.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_assign6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="select26"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_assign"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_name"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"name","value":"{{ textInput22.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_name.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_prepExpiryDate"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"prep_expiry_date","value":"{{ date2.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_prepExpiryDate.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_pHMeterID"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"phMeterID","value":"{{ textInput28.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_pHMeterID.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_summary6"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"issue","value":"{{ editableText6.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_summary6.sql", "string")}
      queryDisabled="{{ richTextEditor11.value ==  '<p>undefined</p>' || richTextEditor11.value ==  '<p>null</p>' }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_LPR"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"lpr","value":"{{ textInput29.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_LPR.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUser11"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/getUser11.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getUsers7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers7.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getUsers_filteredProjectRoleActive6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getUsers_filteredProjectRoleActive6.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getUsers_qc_supervisors2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers_qc_supervisors2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getUsers_QP6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers_QP6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getUser_FilteredProject6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_FilteredProject6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getUser_ProjectRoles7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_ProjectRoles7.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getUsers_filteredProjectRole_manager6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getUsers_filteredProjectRole_manager6.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="field_relationship">
    <SqlQueryUnified
      id="getField_relationship6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getField_relationship6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="project">
    <SqlQueryUnified
      id="getProject12"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject12.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <State
      id="current_project_id6"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="'84fa9a1f-c51f-433d-8f0b-d70220d4ddf3'"
    />
  </Folder>
  <Folder id="transitions">
    <SqlQueryUnified
      id="updIssue_done5"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == \'Complete\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Complete"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_done5.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_rejected3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == \'Invalid\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Invalid"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_rejected3.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_approved4"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == \'Approved\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Approved"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_approved4.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_under_review"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == \'Under Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Under Review"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_under_review.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_open2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == \'Open\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Open"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_open2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue13"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="projectField">
    <SqlQueryUnified
      id="getProject_field_status_values6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_status_values6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProject_field_chooseQP_values5"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_chooseQP_values5.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProject_field_type_of_analysis2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_type_of_analysis2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProducts"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProducts.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="S3">
    <S3Query
      id="query100"
      actionType="upload"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      uploadData="{{url.searchParams.issueID}}/{{signature3.value}}"
      uploadFileName="{{uuid.v4()}}-signature.png"
      uploadFileType="png"
      useRawUploadFileType={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="downloadS3File6"
      actionType="download"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{ getS3Files6.data.Contents.filter(x => x.ETag == table20.selectedRow.ETag)[0].Key }}"
      prefix="{{ getProject12.data.project['0'].toLowerCase()}}/{{ localStorage.values.deviation_issue_id }}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="readFile12"
      actionType="read"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{table20.selectedRow.Key}}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      runWhenPageLoadsDelay="2000"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="getS3Files6"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      prefix="rsn/{{url.searchParams.issueID}}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      runWhenPageLoadsDelay="2000"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="watchers">
    <SqlQueryUnified
      id="getWatchers6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getWatchers6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insWatchers6"
      actionType="INSERT"
      changeset={
        '[{"key":"watchersID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == current_user.email)[0].userID }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insWatchers6.sql", "string")}
      queryDisabled="{{ getWatchers6.data.userID.includes(formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == current_user.email)[0].userID) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="watchers"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getWatchers6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delWatchers6"
      actionType="DELETE_BY"
      doNotThrowOnNoOp={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"watchersID","value":"{{ formatDataAsArray(getWatchers6.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == current_user.email)[0].userID)[0].watchersID }} ","operation":"="}]'
      }
      query={include("../lib/delWatchers6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="watchers"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getWatchers6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="comments">
    <SqlQueryUnified
      id="getComments12"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getComments12.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data).map(x => {x.comment_display = '<b>' + x.created_by + '</b> ' + x.comment; return x});"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insComments_sendforreview2"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{textArea18.value}}"},{"key":"ip_address","value":"{{get_user_ip_address.data.ip}}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_sendforreview2.sql", "string")}
      records="{{ transformer1.value }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="comments"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getComments12"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments_moreInfoNeeded2"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{textArea19.value}}"},{"key":"ip_address","value":"{{get_user_ip_address.data.ip}}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_moreInfoNeeded2.sql", "string")}
      records="{{ transformer1.value }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="comments"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getComments12"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="projectType">
    <SqlQueryUnified
      id="getProjectType_filtered12"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProjectType_filtered12.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <State
    id="transitionNameTemp6"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <Function
    id="is_current_user_assignee6"
    funcBody={include("../lib/is_current_user_assignee6.js", "string")}
  />
  <Function
    id="is_current_user_QC_supervisor2"
    funcBody={include("../lib/is_current_user_QC_supervisor2.js", "string")}
  />
  <Function
    id="has_comment5"
    funcBody={include("../lib/has_comment5.js", "string")}
  />
  <Frame
    id="$main15"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer34.rsx" />
  </Frame>
  <Include src="./drawerFrame7.rsx" />
  <Include src="./modal_results2.rsx" />
  <Include src="./modalassign2.rsx" />
  <Include src="./modalFrameWatchers2.rsx" />
  <Include src="./modalmoreinfoNeeded2.rsx" />
  <Include src="./modalSendForReview2.rsx" />
  <Include src="./modalSignFrame2.rsx" />
</Screen>
