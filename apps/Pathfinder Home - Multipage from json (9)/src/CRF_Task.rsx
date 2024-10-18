<Screen
  id="CRF_Task"
  _hashParams={[]}
  _searchParams={[
    {
      ordered: [{ key: "issueID" }, { value: "{{url.searchParams.issueID}}" }],
    },
  ]}
  title="CRF Task"
  urlSlug=""
>
  <Folder id="comments">
    <SqlQueryUnified
      id="insComments11"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{ url.searchParams.issueID }}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"comment","value":"{{ textArea_commentBox.value }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments11.sql", "string")}
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
        pluginId="getComments15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{ ordered: [{ src: "textArea_commentBox.clearValue()" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments12"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{ url.searchParams.issueID }}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea_rejectionComment.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments12.sql", "string")}
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
        pluginId="getComments15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getComments15"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getComments15.sql", "string")}
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
      id="insComments_approval2"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{ url.searchParams.issueID }}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea_approvalComment.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_approval2.sql", "string")}
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
        pluginId="getComments15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments_parent_reopen"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{ getIssue16.data.reference_issueID[0] }}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ re_open_comment.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_parent_reopen.sql", "string")}
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
        pluginId="getComments15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "transitionNameTemp8.setValue(null)\nmodal_addCommentTransition3.close()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments_parent_closue"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{ getIssue16.data.reference_issueID[0] }}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ closure_comment.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_parent_closue.sql", "string")}
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
        pluginId="getComments15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "transitionNameTemp8.setValue(null)\nmodal_addCommentTransition3.close()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <State
      id="re_open_comment"
      value="'This is an automated comment. The status of {{ getReferenceIssue.data.issue_index[0] }} has been change to In Progress due to {{getIssue16.data.issue_index[0] }} being Reopened'"
    />
    <State
      id="closure_comment"
      value="'This is an automated comment. All Tasks part of {{ getReferenceIssue.data.issue_index[0] }} are now Closed'"
    />
  </Folder>
  <Folder id="issue">
    <SqlQueryUnified
      id="getReferenceIssue"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getReferenceIssue.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)[0]"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updIssue_dueDate8"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"due_date","value":"{{ date_due_detail8.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      doNotThrowOnNoOp={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_dueDate8.sql", "string")}
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
      id="getCRFIssuesAll"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("../lib/getCRFIssuesAll.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
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
      id="updIssue_assignToMe8"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ current_user.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_assignToMe8.sql", "string")}
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
        pluginId="getIssue16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_closureRef"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"closure_ref","value":"{{ textInput78.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_closureRef.sql", "string")}
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
        pluginId="getIssue16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getIssue16"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getIssue16.sql", "string")}
      queryRefreshTime="30000"
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
      id="updIssue_description8"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"description","value":"{{richTextEditor15.value == \'<p><br></p>\' ? null : richTextEditor15.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_description8.sql", "string")}
      queryDisabled="{{ richTextEditor15.value ==  '<p>undefined</p>' || richTextEditor15.value ==  '<p>null</p>' }}"
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
      id="getCRFIssues2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("../lib/getCRFIssues2.sql", "string")}
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
      id="updIssue_assign8"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ select67.selectedItem.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_assign8.sql", "string")}
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
        pluginId="getIssue16"
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
  </Folder>
  <Folder id="transitions">
    <SqlQueryUnified
      id="updIssue_reopen2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values8.data).filter(x => x.field_value == \'TO DO\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"TO DO"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_reopen2.sql", "string")}
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
        pluginId="getIssue16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ getReferenceIssue.data.status_value[0] === 'Done'}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_parentReopen"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_done7"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values8.data).filter(x => x.field_value == \'Pending Verification\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending Verification"},{"key":"closure_ref","value":"{{ textInput_closureRe2.value }}"},{"key":"assigned_to","value":"{{ getUsers_filteredProjectRole_CRFAdmin.data.email[0] }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_done7.sql", "string")}
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
        pluginId="getIssue16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "textInput_closureRe2.resetValue()\nmodal_AddCommentNew2.hide()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_verifiedAndCompleted"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values8.data).filter(x => x.field_value == \'Closed\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Closed"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_verifiedAndCompleted.sql", "string")}
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
        pluginId="getIssue16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ (getSiblingTasksProgress.data.closed[0] == getSiblingTasksProgress.data.all_records[0]) && getReferenceIssue.data.status_value[0] === 'In Progress' }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_parentDone"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_parentReopen"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_parent_status_values.data).filter(x => x.field_value == \'In Progress\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"In Progress"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ getIssue16.data.reference_issueID[0] }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_parentReopen.sql", "string")}
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
        pluginId="getReferenceIssue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { title: "CRF Reopened" },
                  {
                    description:
                      "The CRF {{ getReferenceIssue.data.issue_index  }} has been changed to 'In Progress'",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_parent_reopen"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_parentDone"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_parent_status_values.data).filter(x => x.field_value == \'Done\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Done"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ getIssue16.data.reference_issueID[0] }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_parentDone.sql", "string")}
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
        pluginId="getReferenceIssue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "All CRF Task are now 'Closed'" },
                  {
                    description:
                      "The CRF {{ getReferenceIssue.data.issue_index  }} has been changed to 'Done'",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_parent_closue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_reopen_pendingVerification"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values8.data).filter(x => x.field_value == \'TO DO\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"TO DO"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ url.searchParams.issueID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include(
        "../lib/updIssue_reopen_pendingVerification.sql",
        "string"
      )}
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
        pluginId="getIssue16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="projectType">
    <State id="projectType_id" value="'0e19cf5d-e23e-4fde-8624-852a9867ccb4'" />
    <SqlQueryUnified
      id="getProjectType2"
      notificationDuration={null}
      query={include("../lib/getProjectType2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="project">
    <SqlQueryUnified
      id="getProject16"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject16.sql", "string")}
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
      id="parent_project_id"
      value="'a026255a-3934-4889-8712-63348dac8d74'"
    />
    <State id="project_id8" value="'ac347935-ad6f-4413-939f-aaad8a99c6db'" />
  </Folder>
  <Folder id="projectField">
    <SqlQueryUnified
      id="getProject_field_status_values8"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_status_values8.sql", "string")}
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
      id="getProject_field_typeOfChange_values2"
      notificationDuration={null}
      query={include(
        "../lib/getProject_field_typeOfChange_values2.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProject_field_sourceOfChange_values2"
      notificationDuration={null}
      query={include(
        "../lib/getProject_field_sourceOfChange_values2.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProject_field_parent_status_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_parent_status_values.sql",
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
  <Folder id="watchers">
    <SqlQueryUnified
      id="getWatchers8"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getWatchers8.sql", "string")}
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
      id="insWatchers8"
      actionType="INSERT"
      changeset={
        '[{"key":"watchersID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{ url.searchParams.issueID }}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insWatchers8.sql", "string")}
      queryDisabled="{{ getWatchers8.data.userID.includes(formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID) }}"
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
        pluginId="getWatchers8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delWatchers8"
      actionType="DELETE_BY"
      doNotThrowOnNoOp={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"watchersID","value":"{{ formatDataAsArray(getWatchers8.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID)[0].watchersID }} ","operation":"="}]'
      }
      query={include("../lib/delWatchers8.sql", "string")}
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
        pluginId="getWatchers8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUsers_filteredProjectRole_CRFAdmin"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getUsers_filteredProjectRole_CRFAdmin.sql",
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
      id="getUsers10"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers10.sql", "string")}
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
      id="getUser_FilteredProject8"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getUser_FilteredProject8.sql", "string")}
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
      id="getUser_ProjectRoles9"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_ProjectRoles9.sql", "string")}
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
  <Folder id="field_relationship">
    <SqlQueryUnified
      id="getField_relationship10"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getField_relationship10.sql", "string")}
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
  <Folder id="S3">
    <S3Query
      id="downloadS3File8"
      actionType="download"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{ getS3Files9.data.Contents.filter(x => x.ETag == table42.selectedRow.ETag)[0].Key }}"
      prefix="{{ getProject16.data.project['0'].toLowerCase()}}/{{ localStorage.values.deviation_issue_id }}"
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
      id="getS3Files9"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      prefix="task/{{ url.searchParams.issueID }}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="siblingTasks">
    <SqlQueryUnified
      id="getSiblingTasksProgress"
      isMultiplayerEdited={false}
      query={include("../lib/getSiblingTasksProgress.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      warningCodes={[]}
    />
    <State
      id="parentIssueID"
      value="{{getIssue16.data.reference_issueID[0]}}"
    />
    <SqlQueryUnified
      id="query891"
      query={include("../lib/query891.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      warningCodes={[]}
    />
  </Folder>
  <Function
    id="is_current_user_CRFAdmin2"
    funcBody={include("../lib/is_current_user_CRFAdmin2.js", "string")}
  />
  <State
    id="transitionNameTemp8"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <Function
    id="is_current_user_assignee8"
    funcBody={include("../lib/is_current_user_assignee8.js", "string")}
  />
  <Function
    id="is_current_user_qaManager5"
    funcBody={include("../lib/is_current_user_qaManager5.js", "string")}
  />
  <Function
    id="is_current_user_qualifiedPerson4"
    funcBody={include("../lib/is_current_user_qualifiedPerson4.js", "string")}
  />
  <Frame
    id="$main23"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer50.rsx" />
    <DropdownButton
      id="dropdownButton9"
      _colorByIndex={["", "", "", "", "", "", "", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", "", "", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", "", "", "", "", "", "", ""]}
      _values={[
        "",
        "",
        "Action 12",
        "Action 3",
        "Action 4",
        "Action 5",
        "Action 6",
        "Action 7",
        "Action 8",
        "Action 9",
        "Action 9",
        "Action 11",
      ]}
      hidden="true"
      iconPosition="replace"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      style={{
        ordered: [
          { background: "canvas" },
          { border: "rgba(218, 218, 218, 1)" },
        ],
      }}
      styleVariant="outline"
      text="{{ i18n.t('Actions') }}"
    >
      <Option
        id="bf019"
        icon="line/interface-add-1"
        label="{{ i18n.t('Add Task') }}"
      >
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal_addTask"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="f6e02"
        icon="line/interface-user-single"
        label="{{ i18n.t('Assign') }}"
      >
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal_assign"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="8c6ba"
        disabled={false}
        hidden={false}
        icon="bold/mail-chat-bubble-oval-question-alternate"
        label="{{ i18n.t('More Information Needed') }}"
      />
      <Option
        id="6957e"
        disabled={false}
        hidden={
          '{{get_issue_details.data.status[0] == "Rejected" ? true : false}}'
        }
        icon="line/interface-file-block"
        label="{{ i18n.t('Reject') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="reject_crf"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="bda3e"
        disabled={false}
        hidden={
          '{{get_issue_details.data.status[0] != "Pending Department Review"}}'
        }
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t('Approve') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="send_for_review"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="a8661"
        disabled={false}
        hidden={'{{get_issue_details.data.status[0] != "Pending"}}'}
        icon="line/image-picture-portrait-view"
        label="{{ i18n.t('Send for review') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="send_for_review"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e4690"
        disabled={false}
        hidden={'{{get_issue_details.data.status[0] != "Awaiting QA Review"}}'}
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t('QA Approved') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="qa_approved"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="9a423"
        disabled={false}
        hidden={'{{get_issue_details.data.status[0] != "Rejected"}}'}
        icon="line/natrue-ecology-recycle-2"
        label="{{ i18n.t('Reopen') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="reopen"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="164ef"
        disabled={false}
        hidden={'{{get_issue_details.data.status[0] != "Risk Analysed"}}'}
        icon="line/interface-time-clock-circle"
        label="{{ i18n.t('Send for CCC Approval') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="ccc_reivew"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e5502"
        disabled={false}
        hidden={'{{get_issue_details.data.status[0] != "Awaiting CCC Review"}}'}
        icon="line/interface-file-check"
        label="{{ i18n.t('CCC Approved') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="ccc_approved"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="7a1aa"
        disabled={false}
        hidden={'{{get_issue_details.data.status[0] != "CCC Approved"}}'}
        icon="line/interface-file-check"
        label="{{ i18n.t('Send to QA') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="send_for_QA_ccc"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="267fe"
        disabled={false}
        hidden={'{{get_issue_details.data.status[0] != "QA Approved"}}'}
        label="{{ i18n.t('Approve QA') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="approve"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </DropdownButton>
    <Modal
      id="modal_addCommentTransition3"
      buttonText="{{ i18n.t('Open Modal') }}"
      hidden="true"
      modalHeightType="auto"
    >
      <Form
        id="form48"
        footerPaddingType="normal"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle46"
            marginType="normal"
            value="#### {{ transitionNameTemp8.value }}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput_closureReF"
            label="{{ i18n.t('Closure REF') }}"
            labelPosition="top"
            marginType="normal"
            required={true}
            value="{{ getIssue16.data.closure_ref[0] }}"
          />
        </Body>
        <Footer>
          <Button
            id="button149"
            marginType="normal"
            style={{ ordered: [] }}
            styleVariant="outline"
            text="{{ i18n.t('Cancel') }}"
          >
            <Event
              event="click"
              method="close"
              params={{ ordered: [] }}
              pluginId="modal_addCommentTransition3"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button148"
            disabled={
              '{{ has_rejection_comment.value && textArea_rejectionComment.value == "" }}'
            }
            hidden=""
            marginType="normal"
            submit={true}
            submitTargetId="form48"
            text="{{ i18n.t('{{ transitionNameTemp.value }}') }}"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_done7"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Frame>
  <Include src="./drawerFrame10.rsx" />
  <Include src="./modal_AddCommentNew2.rsx" />
</Screen>
