<Screen
  id="SPL_Detail"
  _hashParams={[]}
  _searchParams={[
    {
      ordered: [{ key: "issueID" }, { value: "{{url.searchParams.issueID}}" }],
    },
  ]}
  title="SPL Details"
  urlSlug="SPL_Detail"
>
  <Folder id="issue">
    <SqlQueryUnified
      id="updIssue_summary7"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"issue","value":"{{ editableText7.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_summary7.sql", "string")}
      queryDisabled="{{ richTextEditor12.value ==  '<p>undefined</p>' || richTextEditor12.value ==  '<p>null</p>' }}"
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_ebn"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"external_batch_no","value":"{{ textInput_ebn.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_ebn.sql", "string")}
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
      id="updIssue_dueDate7"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"due_date","value":"{{ date_due_detail7.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
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
      query={include("../lib/updIssue_dueDate7.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_testing_reqd"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"test","value":"{{ textInput_testing_req.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_testing_reqd.sql", "string")}
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
      id="updIssue_assignToMe7"
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
      query={include("../lib/updIssue_assignToMe7.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_ref_ret"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"reference_retention","value":"{{ textInput_ref_ret.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_ref_ret.sql", "string")}
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
      id="updIssue_ibn"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"internal_batch_no","value":"{{ textInput_ibn.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_ibn.sql", "string")}
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
      id="getIssue15"
      enableErrorTransformer={true}
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getIssue15.sql", "string")}
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
      id="updIssue_productName2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"product_name","value":"{{ select_productName2.selectedItem.id }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_productName2.sql", "string")}
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
      id="updIssue_description7"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"description","value":"{{richTextEditor12.value == \'<p><br></p>\' ? null : richTextEditor12.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_description7.sql", "string")}
      queryDisabled="{{ richTextEditor12.value ==  '<p>undefined</p>' || richTextEditor12.value ==  '<p>null</p>' }}"
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_Dose"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"dose","value":"{{ textInput31.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_Dose.sql", "string")}
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
      id="upd_assignto_supervisor3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ select46.selectedItem.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_assignto_supervisor3.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_stb_cond"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"stb_conditions","value":"{{ textInput_stb_cond.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_stb_cond.sql", "string")}
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
      id="getDeviationIssues5"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getDeviationIssues5.sql", "string")}
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
      id="upd_assignto_reporter3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ getIssue15.data.created_by[0] }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_assignto_reporter3.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_stb_prot"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"stb_protocols","value":"{{ textInput_stb_protocols.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_stb_prot.sql", "string")}
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
      id="updIssue_GRN"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"good_recv_note","value":"{{ textInput30.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_GRN.sql", "string")}
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
      id="updIssue_code2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"product_code","value":"{{ textInput_code.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_code2.sql", "string")}
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
      id="updIssue_qty_rcvd"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"qty_rcvd","value":"{{ textInput_qtyrcvd.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_qty_rcvd.sql", "string")}
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
      id="updIssue_assign7"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ select48.selectedItem.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_assign7.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_product_type"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"product_type","value":"{{ textInput_type.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_product_type.sql", "string")}
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
  <Folder id="project_field_translation">
    <SqlQueryUnified
      id="getProject_field_translation2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_translation2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
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
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { onSuccess: null },
                  { onFailure: null },
                  { additionalScope: null },
                ],
              },
            },
          ],
        }}
        pluginId="formattedProjectFieldValues2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <JavascriptQuery
      id="formattedProjectFieldValues2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/formattedProjectFieldValues2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUser13"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/getUser13.sql", "string")}
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
      id="getUsers8"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers8.sql", "string")}
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
      id="getUsers_filteredProjectRoleActive7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getUsers_filteredProjectRoleActive7.sql",
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
      id="getUsers_qc_supervisors3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers_qc_supervisors3.sql", "string")}
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
      id="getUsers_QP7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers_QP7.sql", "string")}
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
      id="getUser_FilteredProject7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_FilteredProject7.sql", "string")}
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
      id="getUser_ProjectRoles8"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_ProjectRoles8.sql", "string")}
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
      id="getUsers_filteredProjectRole_manager7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getUsers_filteredProjectRole_manager7.sql",
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
  <Folder id="related_tests">
    <SqlQueryUnified
      id="getProject_field_test_status_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include(
        "../lib/getProject_field_test_status_values.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="upd_relatedTasks_Reject"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="issueID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      records="{{ formatDataAsArray(getRalatedTests_simplified.data).filter(x => x.status_value == 'Pending').map((y) => {y.statusID = formatDataAsArray(getProject_field_test_status_values.data).filter(x => x.field_value == 'Rejected')[0].project_field_type_valueID; y.status_value = 'Rejected'; return y})}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRalatedTests"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getRalatedTests"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getRalatedTests.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getRalatedTests_simplified"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getRalatedTests_simplified.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="transitions">
    <SqlQueryUnified
      id="updIssue_under_review2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == \'Pending Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending Review"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_under_review2.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_done6"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == \'Complete\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Complete"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_done6.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_rejected4"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == \'Rejected\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Rejected"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_rejected4.sql", "string")}
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
        pluginId="upd_relatedTasks_Reject"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRalatedTests"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_close"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == \'Closed\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Closed"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_close.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getTests"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getTests.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_accepted"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == \'Accepted\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Accepted"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_accepted.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_pending_testing2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == \'Pending Testing\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending Testing"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_pending_testing2.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_open3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == \'Open\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Open"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_open3.sql", "string")}
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
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="field_relationship">
    <SqlQueryUnified
      id="getField_relationship7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getField_relationship7.sql", "string")}
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
      id="getProject14"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject14.sql", "string")}
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
      id="current_project_id7"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="'65ecccb8-2886-4361-a2e0-6f87c98569cf'"
    />
    <State
      id="test_task_type_id"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="'d00799b2-9352-4851-83f1-a83bfd8810b9'"
    />
    <State
      id="test_tasks_project_id"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="'ac347935-ad6f-4413-939f-aaad8a99c6db'"
    />
  </Folder>
  <Folder id="projectField">
    <SqlQueryUnified
      id="getProject_field_status_values7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_status_values7.sql", "string")}
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
      id="getProject_field_chooseQP_values6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_chooseQP_values6.sql", "string")}
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
      id="getProject_field_type_of_analysis3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_type_of_analysis3.sql", "string")}
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
      id="getProducts2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProducts2.sql", "string")}
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
      id="query101"
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
      uploadData="{{url.searchParams.issueID}}/{{signature4.value}}"
      uploadFileName="{{uuid.v4()}}-signature.png"
      uploadFileType="png"
      useRawUploadFileType={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="downloadS3File7"
      actionType="download"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{ getS3Files7.data.Contents.filter(x => x.ETag == table24.selectedRow.ETag)[0].Key }}"
      prefix="{{ getProject14.data.project['0'].toLowerCase()}}/{{ localStorage.values.deviation_issue_id }}"
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
      id="readFile14"
      actionType="read"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{table24.selectedRow.Key}}"
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
      id="getS3Files7"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      prefix="spl/{{url.searchParams.issueID}}"
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
      id="getWatchers7"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getWatchers7.sql", "string")}
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
      id="insWatchers7"
      actionType="INSERT"
      changeset={
        '[{"key":"watchersID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject7.data).filter(x => x.email == current_user.email)[0].userID }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insWatchers7.sql", "string")}
      queryDisabled="{{ getWatchers7.data.userID.includes(formatDataAsArray(getUser_FilteredProject7.data).filter(x => x.email == current_user.email)[0].userID) }}"
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
        pluginId="getWatchers7"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delWatchers7"
      actionType="DELETE_BY"
      doNotThrowOnNoOp={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"watchersID","value":"{{ formatDataAsArray(getWatchers7.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject7.data).filter(x => x.email == current_user.email)[0].userID)[0].watchersID }} ","operation":"="}]'
      }
      query={include("../lib/delWatchers7.sql", "string")}
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
        pluginId="getWatchers7"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="projectType">
    <SqlQueryUnified
      id="getTestProjectType"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("../lib/getTestProjectType.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProjectType_filtered14"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProjectType_filtered14.sql", "string")}
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
  <Folder id="comments">
    <SqlQueryUnified
      id="getComments14"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getComments14.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data).map(x => {x.comment_display = '<b>' + x.created_by + '</b> ' + x.comment; return x});"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insComments_sendforreview3"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject7.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{textArea21.value}}"},{"key":"ip_address","value":"{{get_user_ip_address.data.ip}}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_sendforreview3.sql", "string")}
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
        pluginId="getComments14"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments_moreInfoNeeded3"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject7.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{textArea22.value}}"},{"key":"ip_address","value":"{{get_user_ip_address.data.ip}}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_moreInfoNeeded3.sql", "string")}
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
        pluginId="getComments14"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <JavascriptQuery
    id="close8"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("../lib/close8.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State
    id="transitionNameTemp7"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <Function
    id="is_current_user_assignee7"
    funcBody={include("../lib/is_current_user_assignee7.js", "string")}
  />
  <Function
    id="is_current_user_QC_supervisor3"
    funcBody={include("../lib/is_current_user_QC_supervisor3.js", "string")}
  />
  <Function
    id="has_comment6"
    funcBody={include("../lib/has_comment6.js", "string")}
  />
  <JavascriptQuery
    id="refresh8"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("../lib/refresh8.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Frame
    id="$main17"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer41.rsx" />
  </Frame>
  <Include src="./drawerFrame9.rsx" />
  <Include src="./modal_addtask.rsx" />
  <Include src="./modal_Rejection_comments.rsx" />
  <Include src="./modalassign3.rsx" />
  <Include src="./modalFrameWatchers3.rsx" />
  <Include src="./modalmoreinfoNeeded3.rsx" />
  <Include src="./modalSendForReview3.rsx" />
  <Include src="./modalSignFrame3.rsx" />
</Screen>
