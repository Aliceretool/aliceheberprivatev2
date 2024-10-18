<Screen
  id="CRF_Issue"
  _hashParams={[]}
  _searchParams={[
    {
      ordered: [{ key: "issueID" }, { value: "{{url.searchParams.issueID}}" }],
    },
  ]}
  title="Page page2"
  urlSlug=""
>
  <Folder id="comments">
    <SqlQueryUnified
      id="insComments_approval"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea_approvalComment2.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_approval.sql", "string")}
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
        pluginId="getComments6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments_committeeApproval"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ table_crfApprovers.selectedRow.approver }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea11.value }}"}]'
      }
      changesetObject="{{ getRelatedCRFTasks.data.issueID.map((x) => {return Object.assign({issueID: x},{commentsID: uuid.v4(), userID: formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID, created_at: moment().format(), created_by: current_user.email, comment: textArea_rejectionComment.value })}) }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_committeeApproval.sql", "string")}
      records="{{ getRelatedCRFTasks.data.issueID.map((x) => {return Object.assign({issueID: x},{commentsID: uuid.v4(), userID: formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID, created_at: moment().format(), created_by: current_user.email, comment: textArea_rejectionComment.value })}) }}"
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
        pluginId="getComments6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="textArea11"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments_relatedTasksRejection"
      actionType="BULK_INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{urlparams.hash.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea_rejectionComment.value }}"}]'
      }
      changesetIsObject={true}
      changesetObject="{{ getRelatedCRFTasks.data.issueID.map((x) => {return Object.assign({issueID: x},{commentsID: uuid.v4(), userID: formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID, created_at: moment().format(), created_by: current_user.email, comment: textArea_rejectionComment.value })}) }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_relatedTasksRejection.sql", "string")}
      records="{{ getRelatedCRFTasks.data.issueID.map((x) => {return Object.assign({issueID: x},{commentsID: uuid.v4(), userID: formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID, created_at: moment().format(), created_by: current_user.email, comment: textArea_rejectionComment2.value })}) }}"
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
        pluginId="getComments6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insComments_rejection"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea_rejectionComment2.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_rejection.sql", "string")}
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
        pluginId="insComments_relatedTasksRejection"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getComments6"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getComments6.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data).map(x => {x.comment_display =  x.firstName + '&nbsp;' + x.lastName + '&nbsp;' + 'added -' + '</br>' + x.comment; return x});"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insComments5"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"comment","value":"{{ textArea_commentBox6.value }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"ip_address","value":"{{get_ip_address4.data.ip}}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments5.sql", "string")}
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
        pluginId="getComments6"
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
  </Folder>
  <Folder id="projectField">
    <SqlQueryUnified
      id="getProject_field_inform_external"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_inform_external.sql", "string")}
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
      id="getProject_field_responsibleDepartment_person2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_responsibleDepartment_person2.sql",
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
      id="getProject_field_status_values3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_status_values3.sql", "string")}
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
    <SqlTransformQuery
      id="crfApprovers_list"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/crfApprovers_list.sql", "string")}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProject_field_crfApprovers_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_crfApprovers_values.sql",
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
      id="getProject_field_regulatroy_affairs"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_regulatroy_affairs.sql",
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
      id="getProject_field_materials"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_materials.sql", "string")}
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
      id="getProject_field_premisisAndEquipment_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_premisisAndEquipment_values.sql",
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
      id="getProject_field_quality_assurance"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_quality_assurance.sql", "string")}
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
      id="getProject_field_occuranceLikelyhood_values3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_occuranceLikelyhood_values3.sql",
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
      id="getProject_field_riskArea_values3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_riskArea_values3.sql", "string")}
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
      id="getProject_field_severity_values3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_severity_values3.sql", "string")}
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
      id="getProject_field_validation_and_qualifications"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_validation_and_qualifications.sql",
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
      id="getProject_field_documentation"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_documentation.sql", "string")}
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
      id="getProject_field_responsibleDepartment_values3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_responsibleDepartment_values3.sql",
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
      id="getProject_field_production"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_production.sql", "string")}
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
      id="getProject_field_quality_control"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_quality_control.sql", "string")}
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
      id="getProject_field_CRF_task_status_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_CRF_task_status_values.sql",
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
      id="getProject_field_sourceOfChange_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_sourceOfChange_values.sql",
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
      id="getProject_field_typeOfChange_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_typeOfChange_values.sql",
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
      id="getProject_field_personnel"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_personnel.sql", "string")}
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
  <Folder id="issue">
    <SqlQueryUnified
      id="updIssue_dueDate3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"due_date","value":"{{ date_due_detail3.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
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
      query={include("../lib/updIssue_dueDate3.sql", "string")}
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
      id="updIssue_assignToMe3"
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
      query={include("../lib/updIssue_assignToMe3.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_ReporterToMe"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"created_by","value":"{{ current_user.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_ReporterToMe.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_description3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"description","value":"{{richTextEditor8.value == \'<p><br></p>\' ? null : richTextEditor8.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_description3.sql", "string")}
      queryDisabled="{{ richTextEditor8.value ==  '<p>undefined</p>' || richTextEditor8.value ==  '<p>null</p>' }}"
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
      id="updIssue_departmentManager3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"department_manager","value":"{{ getProject_field_responsibleDepartment_person2.data.responsible_user[0] }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_departmentManager3.sql", "string")}
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
      id="updIssue_source2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"sourceID","value":"{{ multiselect_sourceOfChange.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"source_value","value":"{{ multiselect_sourceOfChange.selectedLabels }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_source2.sql", "string")}
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
      id="updIssue_type"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"typeID","value":"{{ select_type.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"type_value","value":"{{ select_type.selectedLabel }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_type.sql", "string")}
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
      id="updIssue_testing3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Awaiting Committee Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Awaiting Committee Review"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_testing3.sql", "string")}
      queryDisabled="{{ getIssue6.data.status_value[0] == 'CAPA Created' }}"
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
      id="getIssue6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getIssue6.sql", "string")}
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
      id="updIssue_assign3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ select33.selectedItem.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_assign3.sql", "string")}
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
        pluginId="getIssue6"
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
      id="updIssue_responsibleDepartment3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"responsible_departmentID","value":"{{ select_responsibleDepartment3.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"responsible_department_value","value":"{{ select_responsibleDepartment3.selectedLabel }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_responsibleDepartment3.sql", "string")}
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
        pluginId="updIssue_departmentManager3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getCRFIssues"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("../lib/getCRFIssues.sql", "string")}
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
      id="updIssue_summary3"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"issue","value":"{{ editableText3.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_editSummary"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="field_relationship">
    <SqlQueryUnified
      id="getField_relationship3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getField_relationship3.sql", "string")}
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
  <Folder id="transitions">
    <SqlQueryUnified
      id="updIssue_done2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Done\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Done"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_done2.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_sendForCommitteeReview"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Awaiting Committee Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Awaiting Committee Review"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_sendForCommitteeReview.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insIssueApproval_sendForCommitteeReview"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_committeeApproved"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Committee Approved\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Committee Approved"},{"key":"assigned_to","value":"{{ getUsers_filteredProjectRole_manager3.data.email[0] }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_committeeApproved.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insIssueApproval_sendForCommitteeReview"
      actionType="BULK_INSERT"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Awaiting Committee Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Awaiting Committee Review"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{urlparams.hash.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include(
        "../lib/insIssueApproval_sendForCommitteeReview.sql",
        "string"
      )}
      records="{{ multiselect7.value.map((x) => {return Object.assign({approver: x, issue_approvalID: uuid.v4(), issueID: url.searchParams.issueID})})}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue_approval"
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
        pluginId="getIssue_approval"
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
              src: "multiselect7.resetValue()\nmodal_AddCommentTransitionNew2.hide()",
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
      id="updIssue_startImplementation"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'In Progress\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"In Progress"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_startImplementation.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="upd_relatedTasks_toDo2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_sendForReview"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Pending Department Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending Department Review"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.userID == getIssue6.data.department_manager[0])[0].email }}"}]'
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
      query={include("../lib/updIssue_sendForReview.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_approved2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Awaiting QA Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Awaiting QA Review"},{"key":"assigned_to","value":"{{ getUsers_filteredProjectRole_manager3.data.email[0] }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_approved2.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_AddCommentTransitionNew2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_reopen"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Pending\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_reopen.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_committeeRejected"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Pending Department Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending Department Review"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.userID == getIssue6.data.department_manager[0])[0].email }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_committeeRejected.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_reject"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'CR Rejected\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"CR Rejected"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == getIssue6.data.created_by[0])[0].email }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_reject.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="upd_relatedTasks_reject2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_reject_pendingDepartmentReview"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Pending Department Review\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending Department Review"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.userID == getIssue6.data.department_manager[0])[0].email }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include(
        "../lib/updIssue_reject_pendingDepartmentReview.sql",
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
        pluginId="getIssue6"
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
              src: "textArea_rejectionComment2.clearValue()\nmodal_AddCommentTransitionNew2.hide()",
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
      id="updIssue_impactAndRiskAnalysed2"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'QA Reviewed\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"QA Reviewed"},{"key":"updated_by","value":"{{current_user.email}}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"premises_and_equipmentID","value":"{{ multiselect_premisisEquipment3.value }}"},{"key":"premises_and_equipment_value","value":"{{ multiselect_premisisEquipment3.selectedLabels }}"},{"key":"materialsID","value":"{{materials_multiselect3.value}}"},{"key":"materials_value","value":"{{materials_multiselect3.selectedLabels}}"},{"key":"personnelID","value":"{{personnel_multiselect3.value}}"},{"key":"personnel_value","value":"{{personnel_multiselect3.selectedLabels}}"},{"key":"productionID","value":"{{production_multiselect3.value}}"},{"key":"production_value","value":"{{production_multiselect3.selectedLabels}}"},{"key":"quality_controlID","value":"{{quality_control_multiselect3.value}}"},{"key":"quality_control_value","value":"{{quality_control_multiselect3.selectedLabels}}"},{"key":"quality_assuranceID","value":"{{quality_assurance_multiselect3.value}}"},{"key":"quality_assurance_value","value":"{{quality_assurance_multiselect3.selectedLabels}}"},{"key":"regulatory_affairsID","value":"{{regulatory_affairs_multiselect3.value}}"},{"key":"regulatory_affairs_value","value":"{{regulatory_affairs_multiselect3.selectedLabels}}"},{"key":"documentationID","value":"{{documentation_multiselect3.value}}"},{"key":"documentation_value","value":"{{documentation_multiselect3.selectedLabels}}"},{"key":"validation_and_qualificationID","value":"{{validation_and_qualifications_multiselect3.value}}"},{"key":"validation_and_qualification_value","value":"{{validation_and_qualifications_multiselect3.selectedLabels}}"},{"key":"inform_external_partiesID","value":"{{inform_external_multiselect3.value}}"},{"key":"inform_external_parties_value","value":"{{inform_external_multiselect3.selectedLabels}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_impactAndRiskAnalysed2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
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
        method="run"
        params={{
          ordered: [
            {
              src: "modal_Risk_Impact_New.hide()\nsteppedContainer2.setCurrentViewIndex(1)",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_QAApproved"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'QA Approved\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"QA Approved"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_QAApproved.sql", "string")}
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
        pluginId="getIssue6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_moreIInformationNeeded"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == \'Pending\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Pending"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_moreIInformationNeeded.sql", "string")}
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
        pluginId="getIssue6"
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
              src: "textArea_approvalComment2.resetValue()\nmodal_AddCommentTransitionNew2.hide()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="riskAnalysis">
    <SqlQueryUnified
      id="getRiskAnalysis"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getRiskAnalysis.sql", "string")}
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
      id="delRisk1"
      actionType="DELETE_BY"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"risk_analysisID","value":"{{ table13.selectedRow.risk_analysisID }}","operation":"="}]'
      }
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      tableName="risk_analysis"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRiskAnalysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delRisk2"
      actionType="DELETE_BY"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"risk_analysisID","value":"{{ table11.selectedRow.risk_analysisID }}","operation":"="}]'
      }
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="risk_analysis"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRiskAnalysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insRiskAnalysisFromTransition"
      actionType="INSERT"
      changeset={
        '[{"key":"risk_analysisID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"risk_areaID","value":"{{ risk_area_select2.value }}"},{"key":"risk_area_value","value":"{{ risk_area_select2.selectedLabel }}"},{"key":"severityID","value":"{{ severity_select2.value }}"},{"key":"severity_value","value":"{{ parseInt(formatDataAsArray(getProject_field_severity_values3.data).filter(x => x.project_field_type_valueID == severity_select2.value)[0].field_value) }}"},{"key":"occuranceID","value":"{{ occurance_select2.value }}"},{"key":"occurance_value","value":"{{ parseInt(formatDataAsArray(getProject_field_occuranceLikelyhood_values3.data).filter(x => x.project_field_type_valueID == occurance_select2.value)[0].field_value) }}"},{"key":"intrinsic_risk","value":"{{ intrinsic_risk_number_input2.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="risk_analysis"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRiskAnalysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clear"
        params={{ ordered: [] }}
        pluginId="riskAnalysisFromTransitionForm2"
        type="widget"
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
                  { title: "Risk Record Successfully Inserted!" },
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
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insRiskAnalysis"
      actionType="INSERT"
      changeset={
        '[{"key":"risk_analysisID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"risk_areaID","value":"{{ select35.value }}"},{"key":"risk_area_value","value":"{{ select35.selectedLabel }}"},{"key":"severityID","value":"{{ select31.value }}"},{"key":"severity_value","value":"{{ parseInt(formatDataAsArray(getProject_field_severity_values3.data).filter(x => x.project_field_type_valueID == select31.value)[0].field_value) }}"},{"key":"occuranceID","value":"{{ select32.value }}"},{"key":"occurance_value","value":"{{ parseInt(formatDataAsArray(getProject_field_occuranceLikelyhood_values3.data).filter(x => x.project_field_type_valueID == select32.value)[0].field_value) }}"},{"key":"intrinsic_risk","value":"{{ numberInput3.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="risk_analysis"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRiskAnalysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_Risksonly_New"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "select35.resetValue()\nselect31.resetValue()\nselect32.resetValue()\nnumberInput3.resetValue()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUsers4"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers4.sql", "string")}
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
      id="getUsers_filteredProjectRoleActive3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getUsers_filteredProjectRoleActive3.sql",
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
      id="getUsers_QP3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers_QP3.sql", "string")}
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
      id="getUser_FilteredProject3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getUser_FilteredProject3.sql", "string")}
      queryThrottleTime=""
      queryTimeout=""
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
      id="getUser_ProjectRoles4"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_ProjectRoles4.sql", "string")}
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
      id="getUser4"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser4.sql", "string")}
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
      id="getUsers_filteredProjectRole_manager3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getUsers_filteredProjectRole_manager3.sql",
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
  <Folder id="S3">
    <S3Query
      id="uploadAttachment"
      actionType="upload"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      uploadData="{{s3Uploader1.value}}"
      uploadFileName="{{s3Uploader1.s3FileName}}"
      uploadFileType=""
      useRawUploadFileType={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="readFile6"
      actionType="read"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{table12.selectedRow.Key}}"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="downloadS3File3"
      actionType="download"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{ getS3Files3.data.Contents.filter(x => x.ETag == table12.selectedRow.ETag)[0].Key }}"
      prefix="{{ getProject6.data.project['0'].toLowerCase()}}/{{ localStorage.values.deviation_issue_id }}"
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
      id="getS3Files3"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      prefix="crf/{{getIssue6.data.issueID}}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="uploadS3Signature"
      actionType="upload"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      uploadData="{{ signature1.value }}"
      uploadFileName="{{url.searchParams.issueID}}/{{table_crfApprovers.selectedRow.issue_approvalID}}/{{uuid.v4()}}-signature"
      uploadFileType="png"
      useRawUploadFileType={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_approval_logStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </S3Query>
  </Folder>
  <Folder id="tasks">
    <SqlQueryUnified
      id="upd_relatedTasks_reject"
      actionType="UPDATE_BY"
      bulkUpdatePrimaryKey="taskID"
      changeset={
        '[{"key":"task_statusID","value":"{{ formatDataAsArray(getProject_field_task_status_values.data).filter(x => x.field_value == \'Rejected\')[0].project_field_type_valueID }}"},{"key":"task_status_value","value":"Rejected"},{"key":"comment","value":"{{ textArea_rejectionComment.value }}"}]'
      }
      editorMode="gui"
      enableBulkUpdates={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_relatedTasks_reject.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="task"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "textArea_rejectionComment2.clearValue()\ntransitionNameTemp3.setValue(null)\nmodal_AddCommentTransitionNew2.hide()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRelatedTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="upd_relatedTasks_toDo2"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="issueID"
      changeset={
        '[{"key":"task_statusID","value":"{{ formatDataAsArray(getProject_field_task_status_values.data).filter(x => x.field_value == \'TO DO\')[0].project_field_type_valueID }}"},{"key":"task_status_value","value":"TO DO"}]'
      }
      editorMode="gui"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ urlparams.hash.issueID }}","operation":"="},{"key":"task_status_value","value":"Rejected","operation":"!="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_relatedTasks_toDo2.sql", "string")}
      records="{{ formatDataAsArray(getRelatedCRFTasks2.data).filter(x => x.status_value == 'Pending').map((y) => {y.statusID = formatDataAsArray(getProject_field_CRF_task_status_values.data).filter(x => x.field_value == 'TO DO')[0].project_field_type_valueID; y.status_value = 'TO DO'; return y})}}"
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
        method="run"
        params={{ ordered: [{ src: "modal_AddCommentTransitionNew2.hide()" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRelatedCRFTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getNextTaskId"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="taskID"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("../lib/getNextTaskId.sql", "string")}
      records="{{ table_relatedTasks.changesetArray.map((x)=> {return Object.assign(x, {task_status_value: formatDataAsArray(getProject_field_task_status_values.data).filter(y => y.project_field_type_valueID == x.task_statusID)[0].field_value }) }) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
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
        pluginId="getRelatedTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getRelatedCRFTasks"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("../lib/getRelatedCRFTasks.sql", "string")}
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
      id="getRelatedCRFTasks2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("../lib/getRelatedCRFTasks2.sql", "string")}
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
      id="upd_relatedTasks_toDo"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="taskID"
      changeset={
        '[{"key":"task_statusID","value":"{{ formatDataAsArray(getProject_field_task_status_values.data).filter(x => x.field_value == \'TO DO\')[0].project_field_type_valueID }}"},{"key":"task_status_value","value":"TO DO"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{ urlparams.hash.issueID }}","operation":"="},{"key":"task_status_value","value":"Rejected","operation":"!="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_relatedTasks_toDo.sql", "string")}
      records="{{ formatDataAsArray(getRelatedTasks.data).filter(x => x.task_status_value == 'Pending').map((y) => {y.task_statusID = formatDataAsArray(getProject_field_task_status_values.data).filter(x => x.field_value == 'TO DO')[0].project_field_type_valueID; y.task_status_value = 'TO DO'; delete y.issue_index; delete y.assignedEmail; delete y.assignedAvatarURL; return y})}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="task"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="run"
        params={{ ordered: [{ src: "modal_AddCommentTransitionNew2.hide()" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRelatedTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updTasks2"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="taskID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      records="{{ table_relatedTasks.changesetArray.map((x)=> {return Object.assign(x, {task_status_value: formatDataAsArray(getProject_field_task_status_values.data).filter(y => y.project_field_type_valueID == x.task_statusID)[0].field_value }) }) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="task"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRelatedTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="upd_relatedTasks_reject2"
      actionType="UPDATE_BY"
      bulkUpdatePrimaryKey="taskID"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_CRF_task_status_values.data).filter(x => x.field_value == \'Rejected\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"Rejected"}]'
      }
      editorMode="gui"
      enableBulkUpdates={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"reference_issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/upd_relatedTasks_reject2.sql", "string")}
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
        method="run"
        params={{
          ordered: [
            {
              src: "textArea_rejectionComment2.clearValue()\ntransitionNameTemp3.setValue(null)\nmodal_AddCommentTransitionNew2.hide()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRelatedCRFTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getRelatedTasks"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getRelatedTasks.sql", "string")}
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
    <State id="task_typeID" value="'0e19cf5d-e23e-4fde-8624-852a9867ccb4'" />
  </Folder>
  <Folder id="watchers">
    <SqlQueryUnified
      id="getWatchers3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getWatchers3.sql", "string")}
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
      id="insWatchers3"
      actionType="INSERT"
      changeset={
        '[{"key":"watchersID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insWatchers3.sql", "string")}
      queryDisabled="{{ getWatchers3.data.userID.includes(formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID) }}"
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
        pluginId="getWatchers3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delWatchers3"
      actionType="DELETE_BY"
      doNotThrowOnNoOp={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"watchersID","value":"{{ formatDataAsArray(getWatchers3.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID)[0].watchersID }} ","operation":"="}]'
      }
      query={include("../lib/delWatchers3.sql", "string")}
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
        pluginId="getWatchers3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="issue_approval">
    <SqlQueryUnified
      id="updIssue_approval_logStatus"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"approval_status","value":"{{ approval_transition.value == \'approve\' ? \'Approved\' : \'Rejected\' }}"},{"key":"approval_dateTime","value":"{{ moment().format() }}"},{"key":"crf_administrator_override","value":"{{ segmentedControl2.value == \'Yes\' ? true : false }}"},{"key":"signature_url","value":"https://pathfinder-uat.s3.eu-west-2.amazonaws.com/{{uploadS3Signature.data.fileName}}"},{"key":"ip_address","value":"{{ get_ip_address4.data.ip }}"},{"key":"executed_by","value":"{{current_user.email}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issue_approvalID","value":"{{ table_crfApprovers.selectedRow.issue_approvalID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_approval_logStatus.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue_approval"
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
        pluginId="getIssue_approval"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue_approval_progress"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalFrame_crfSignature"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="signature1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="resetValue"
        params={{ ordered: [] }}
        pluginId="checkbox1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="resetValue"
        params={{ ordered: [] }}
        pluginId="segmentedControl2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getIssue_approval_progress"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getIssue_approval_progress.sql", "string")}
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
        enabled="{{ (getIssue_approval_progress.data.approved[0] == getIssue_approval_progress.data.all_records[0]) && getIssue6.data.status_value[0] == 'Awaiting Committee Review' }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_committeeApproved"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ ((getIssue_approval_progress.data.processed[0] == getIssue_approval_progress.data.all_records[0]) && getIssue_approval_progress.data.rejected[0] >= 1) && getIssue6.data.status_value[0] == 'Awaiting Committee Review' }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_committeeRejected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <State
      id="approval_transition"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
    <SqlQueryUnified
      id="getIssue_approval"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getIssue_approval.sql", "string")}
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
    <State
      id="current_project_id3"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="'a026255a-3934-4889-8712-63348dac8d74'"
    />
    <State
      id="tasks_project_id"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="'ac347935-ad6f-4413-939f-aaad8a99c6db'"
    />
    <SqlQueryUnified
      id="getProject6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject6.sql", "string")}
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
  <Folder id="audit">
    <Function
      id="format_audit_for_timeline2"
      funcBody={include("../lib/format_audit_for_timeline2.js", "string")}
    />
    <SqlQueryUnified
      id="getPathfinderAudit_issue2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/getPathfinderAudit_issue2.sql", "string")}
      resourceName="de01cbc3-3dcc-406f-87b0-288400802f83"
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
  </Folder>
  <Folder id="projectType">
    <State
      id="project_type_id"
      value="'2afbaa39-7c21-4dac-ae77-a6e593a00c57'"
    />
    <SqlQueryUnified
      id="getProjectType_filtered6"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProjectType_filtered6.sql", "string")}
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
  <Function
    id="has_rejection_comment"
    funcBody={include("../lib/has_rejection_comment.js", "string")}
  />
  <Function
    id="has_approval_comment"
    funcBody={include("../lib/has_approval_comment.js", "string")}
  />
  <Function
    id="is_current_user_assignee3"
    funcBody={include("../lib/is_current_user_assignee3.js", "string")}
  />
  <Function
    id="is_current_user_the_approver"
    funcBody={include("../lib/is_current_user_the_approver.js", "string")}
  />
  <JavascriptQuery
    id="refreshTaskModal"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={null}
    query={include("../lib/refreshTaskModal.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="is_current_user_qaManager3"
    funcBody={include("../lib/is_current_user_qaManager3.js", "string")}
  />
  <JavascriptQuery
    id="get_ip_address4"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/get_ip_address4.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoadsDelay="1000"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="closeTaskModal"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={null}
    query={include("../lib/closeTaskModal.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="is_current_user_CRFAdmin"
    funcBody={include("../lib/is_current_user_CRFAdmin.js", "string")}
  />
  <Function
    id="has_assignee"
    funcBody={include("../lib/has_assignee.js", "string")}
  />
  <Function
    id="is_current_user_qualifiedPerson3"
    funcBody={include("../lib/is_current_user_qualifiedPerson3.js", "string")}
  />
  <State
    id="transitionNameTemp3"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <Function
    id="showImpactAnalysis"
    funcBody={include("../lib/showImpactAnalysis.js", "string")}
  />
  <Frame
    id="$main8"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer16.rsx" />
    <Modal
      id="modal_addTasks"
      buttonText="{{ i18n.t('Open Modal') }}"
      closeOnOutsideClick={true}
      hidden="true"
      modalHeight="1600px"
      modalHeightType="auto"
      modalWidth="60%"
    >
      <Module
        id="createTasks1"
        close="closeTaskModal"
        creationStatus="{{ getIssue6.data.status_value[0] == 'In Progress' ? 'TO DO' : 'Pending' }}"
        margin="0"
        name="Create Tasks"
        pageUuid="d970130d-77d4-4adc-80d0-0a1122a62821"
        referenceIssueID="{{url.searchParams.issueID}}"
        refresh="refreshTaskModal"
        task_type="{{task_typeID.value}}"
      />
    </Modal>
    <DropdownButton
      id="dropdownButton1"
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
  </Frame>
  <Include src="./drawerFrame4.rsx" />
  <Include src="./modal_AddCommentTransitionNew2.rsx" />
  <Include src="./modal_Risk_Impact_New.rsx" />
  <Include src="./modal_Risksonly_New.rsx" />
  <Include src="./modalFrame_crfSignature.rsx" />
</Screen>
