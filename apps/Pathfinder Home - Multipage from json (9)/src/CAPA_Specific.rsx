<Screen
  id="CAPA_Specific"
  _hashParams={[]}
  _searchParams={[
    {
      ordered: [{ key: "issueID" }, { value: "{{url.searchParams.issueID}}" }],
    },
  ]}
  title="CAPA_Specific"
  urlSlug="CAPA_Specific"
>
  <Folder id="user">
    <SqlQueryUnified
      id="getUsers2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers2.sql", "string")}
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
      id="getUser_ProjectRoles"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_ProjectRoles.sql", "string")}
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
      id="getUser_FilteredProject"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_FilteredProject.sql", "string")}
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
      id="getUsers_QP"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUsers_QP.sql", "string")}
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
      id="getUser2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/getUser2.sql", "string")}
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
      id="getUsers_filteredProjectRoleActive"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getUsers_filteredProjectRoleActive.sql", "string")}
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
      id="getUsers_filteredProjectRole_manager"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getUsers_filteredProjectRole_manager.sql",
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
      id="readFile2"
      actionType="read"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{table5.selectedRow.Key}}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="getS3Files"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      prefix="capa/{{url.searchParams.issueID}}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="downloadS3File"
      actionType="download"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{ getS3Files.data.Contents.filter(x => x.ETag == table5.selectedRow.ETag)[0].Key }}"
      prefix="{{ getProject2.data.project['0'].toLowerCase()}}/{{ localStorage.values.deviation_issue_id }}"
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
      id="deleteS3File9"
      actionType="delete"
      bucketName="pathfinder-uat"
      confirmationMessage="### Are you sure you want to delete this file ?"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileKey="{{ getS3Files.data.Contents.filter(x => x.ETag == table5.selectedRow.ETag)[0].Key }}"
      isMultiplayerEdited={false}
      prefix="{{ getProject2.data.project['0'].toLowerCase()}}/{{ localStorage.values.deviation_issue_id }}"
      requireConfirmation={true}
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
  </Folder>
  <Folder id="issue">
    <SqlQueryUnified
      id="updIssue_testing"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Modification Accepted\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Modification Accepted"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_testing.sql", "string")}
      queryDisabled="{{ getIssue2.data.status_value[0] == 'CAPA Created' }}"
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
      id="updIssue_justification"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"justification","value":"{{ textArea_withdrawlJustification.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_justification.sql", "string")}
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
      id="getDeviationIssues"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getDeviationIssues.sql", "string")}
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
      id="updIssue_TypeModification"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"type_of_modificationID","value":"{{ select_typeOfModificationDetail.value }}"},{"key":"type_of_modification_value","value":"{{ select_typeOfModificationDetail.selectedLabel }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_TypeModification.sql", "string")}
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
      id="updIssue_ClosureREF"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"closure_ref","value":"{{ textInput10.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_ClosureREF.sql", "string")}
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
      id="updIssue_specificReference"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"specific_reference","value":"{{ textInput_specificReference.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_specificReference.sql", "string")}
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
      id="updIssue_source"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"sourceID","value":"{{ select_source.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_source.sql", "string")}
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
      id="updIssue_departmentManager"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"department_manager","value":"{{ getProject_field_responsibleDepartment_person.data.responsible_user[0] }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_departmentManager.sql", "string")}
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
      id="updIssue_description"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"description","value":"{{richTextEditor6.value == \'<p><br></p>\' ? null : richTextEditor6.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_description.sql", "string")}
      queryDisabled="{{ richTextEditor6.value ==  '<p>undefined</p>' || richTextEditor6.value ==  '<p>null</p>' }}"
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
    />
    <SqlQueryUnified
      id="updIssue_impactQSE"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"impact_q_s_e","value":"{{ textArea_impactQSE.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_impactQSE.sql", "string")}
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
      id="getIssue2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getIssue2.sql", "string")}
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
      id="updIssue_assignToMe"
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
      query={include("../lib/updIssue_assignToMe.sql", "string")}
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
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_ProposedModification"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"proposed_modification","value":"{{ textArea_proposedModificationJustification.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_ProposedModification.sql", "string")}
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
      id="updIssue_dueDate"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"due_date","value":"{{ date_due_detail.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
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
      query={include("../lib/updIssue_dueDate.sql", "string")}
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
      id="updIssue_impact_SupplierClientScheduling"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"impact_supplier_client_scheduling","value":"{{ textArea_impactSupplierClientScheduling.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
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
        "../lib/updIssue_impact_SupplierClientScheduling.sql",
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
    />
    <SqlQueryUnified
      id="updIssue_summary"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"issue","value":"{{ editableText1.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_summary.sql", "string")}
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
      id="updIssue_responsibleDepartment"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"responsible_departmentID","value":"{{ select_responsibleDepartment.value }}"},{"key":"responsible_department_value","value":"{{ select_responsibleDepartment.selectedLabel }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_responsibleDepartment.sql", "string")}
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
        pluginId="updIssue_departmentManager"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_reference"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"reference_issueID","value":"{{ select_referenceIssue.value }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_reference.sql", "string")}
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
      id="updIssue_assign"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"assigned_to","value":"{{ select28.selectedItem.email }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_assign.sql", "string")}
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
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="projectField">
    <SqlQueryUnified
      id="getProject_field_classificationRootCause_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_classificationRootCause_values.sql",
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
      id="getProject_field_severity_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_severity_values.sql", "string")}
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
      id="getProject_field_riskArea_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_riskArea_values.sql", "string")}
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
      id="getProject_field_source_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_source_values.sql", "string")}
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
        enabled="{{ getProject_field_source_values.data.responsible_user[0] != null }}"
        event="success"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ getProject_field_source_values.data.responsible_user[0] }}",
            },
          ],
        }}
        pluginId="select_source"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ getProject_field_source_values.data.responsible_user[0] == null }}"
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="select_source"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_occuranceLikelyhood_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_occuranceLikelyhood_values.sql",
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
      id="getProject_field_chooseQP_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_chooseQP_values.sql", "string")}
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
      id="getProject_field_classificationRecurrence_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_classificationRecurrence_values.sql",
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
      id="getProject_field_responsibleDepartment_person"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_responsibleDepartment_person.sql",
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
      id="getProject_field_status_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_status_values.sql", "string")}
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
      id="getProject_field_classificationNotification_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_classificationNotification_values.sql",
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
      id="getProject_field_classificationEvaluationOfRelated_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_classificationEvaluationOfRelated_values.sql",
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
      id="getProject_field_classificationDisposition_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_classificationDisposition_values.sql",
        "string"
      )}
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
      id="getProject_field_responsibleDepartment_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_responsibleDepartment_values.sql",
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
      id="getProject_field_classificationSeverity_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_classificationSeverity_values.sql",
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
      id="getProject_field_typeOfModification_values2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_typeOfModification_values2.sql",
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
  <Folder id="comments">
    <SqlQueryUnified
      id="insComments"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"comment","value":"{{ textArea_commentBox2.value }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments.sql", "string")}
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
        pluginId="getComments2"
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
      id="getComments2"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getComments2.sql", "string")}
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
      id="insComments_modificationsExceeded"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea_comment_modifications_exceeded2.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments_modificationsExceeded.sql", "string")}
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
        pluginId="getComments2"
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
              src: "transitionNameTemp.setValue(null)\nmodal_Transition_New.hide()",
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
      id="insComments2"
      actionType="INSERT"
      changeset={
        '[{"key":"commentsID","value":"{{uuid.v4()}}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"comment","value":"{{ textArea2.value }}"}]'
      }
      changesetObject="{{ transformer1.value }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insComments2.sql", "string")}
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
        pluginId="getComments2"
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
              src: "textArea2.clearValue()\ntransitionNameTemp.setValue(null)\nmodal_Transition_New.hide()",
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
  <Folder id="transitions">
    <SqlQueryUnified
      id="updIssue_requestWithdrawl"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Withdrawl Requested\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Withdrawl Requested"},{"key":"assigned_to","value":"{{ getIssue2.data.status_value[0] == \'Open\' ? getIssue2.data.created_by[0] : getIssue2.data.assigned_to[0] }}"},{"key":"justification","value":"{{ textArea_justification2.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_requestWithdrawl.sql", "string")}
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
        pluginId="getIssue2"
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
              src: "textArea_justification.resetValue()\nmodal_Transition_New.hide()",
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
      id="updIssue_modificationRejected"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Modification Rejected\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Modification Rejected"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_modificationRejected.sql", "string")}
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
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_done"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Resolved\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Resolved"},{"key":"closure_ref","value":"{{ textInput_closureRef2.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_done.sql", "string")}
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
        pluginId="getIssue2"
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
              src: "textInput_closureRef2.resetValue()\nmodal_Transition_New.hide()",
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
      id="updIssue_withdrawlRejected"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Open\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"Open"},{"key":"updated_by","value":"{{current_user.email}}"},{"key":"updated_at","value":"{{ moment().format() }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={true}
      query={include("../lib/updIssue_withdrawlRejected.sql", "string")}
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
        params={{ ordered: [{ src: "modal_Transition_New.hide()" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_modificationAccepted"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Modification Accepted\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Modification Accepted"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_modificationAccepted.sql", "string")}
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
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_requestWithdrawl_noJustification"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Withdrawl Requested\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Withdrawl Requested"}]'
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
        "../lib/updIssue_requestWithdrawl_noJustification.sql",
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
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_verifiedCompleted"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Closed\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Closed"},{"key":"closure_ref","value":"{{ textInput_closureRef2.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={true}
      query={include("../lib/updIssue_verifiedCompleted.sql", "string")}
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
        pluginId="getIssue2"
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
              src: "textInput_closureRef2.clearValue()\nmodal_Transition_New.hide()",
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
      id="updIssue_withdrawlAccepted"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Withdrawn\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Withdrawn"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_withdrawlAccepted.sql", "string")}
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
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_reopenCAPA"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Reopened\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Reopened"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_reopenCAPA.sql", "string")}
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
        pluginId="getIssue2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updIssue_requestModification"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Open Modified\')[0].project_field_type_valueID }}"},{"key":"updated_by","value":"{{ current_user.email }}"},{"key":"updated_at","value":"{{ moment().format() }}"},{"key":"status_value","value":"Open Modified"},{"key":"impact_q_s_e","value":"{{ textArea_impact_q_s_e2.value }}"},{"key":"impact_supplier_client_scheduling","value":"{{ textArea_impact_supplier_clien_scheduling2.value }}"},{"key":"proposed_modification","value":"{{ textArea_proposed_modification2.value }}"},{"key":"type_of_modificationID","value":"{{ select_typeOfModification2.value }}"},{"key":"count_modified","value":"{{ parseInt(getIssue2.data.count_modified[0]) + 1 }}"},{"key":"type_of_modification_value","value":"{{ select_typeOfModification2.selectedLabel }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"issueID","value":"{{url.searchParams.issueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/updIssue_requestModification.sql", "string")}
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
        pluginId="getIssue2"
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
              src: "textArea_impact_q_s_e2.resetValue()\ntextArea_impact_supplier_clien_scheduling2.resetValue()\ntextArea_proposed_modification2.resetValue()\nselect_typeOfModification2.resetValue()\nmodal_Transition_New.hide()",
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
  <Folder id="watchers">
    <SqlQueryUnified
      id="delWatchers"
      actionType="DELETE_BY"
      doNotThrowOnNoOp={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"watchersID","value":"{{ formatDataAsArray(getWatchers.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID)[0].watchersID }} ","operation":"="}]'
      }
      query={include("../lib/delWatchers.sql", "string")}
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
        pluginId="getWatchers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insWatchers"
      actionType="INSERT"
      changeset={
        '[{"key":"watchersID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{url.searchParams.issueID}}"},{"key":"userID","value":"{{ formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insWatchers.sql", "string")}
      queryDisabled="{{ getWatchers.data.userID.includes(formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID) }}"
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
        pluginId="getWatchers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getWatchers"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getWatchers.sql", "string")}
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
      id="current_project_id"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="'ba8cd1b9-bee0-40f7-beb3-379cb8e43f61'"
    />
    <SqlQueryUnified
      id="getProject2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <State id="dvrProjectID" value="'cb96a209-1aa7-49'" />
  </Folder>
  <Folder id="project_field_translation">
    <SqlQueryUnified
      id="getProject_field_translation"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_field_translation.sql", "string")}
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
        pluginId="formattedProjectFieldValues"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <JavascriptQuery
      id="formattedProjectFieldValues"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/formattedProjectFieldValues.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="field_relationship">
    <SqlQueryUnified
      id="getField_relationship"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getField_relationship.sql", "string")}
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
  <Folder id="projectType">
    <SqlQueryUnified
      id="getProjectType_filtered2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProjectType_filtered2.sql", "string")}
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
    id="is_current_user_qaManager"
    funcBody={include("../lib/is_current_user_qaManager.js", "string")}
  />
  <Function
    id="showAdditional"
    funcBody={include("../lib/showAdditional.js", "string")}
  />
  <Function
    id="is_current_user_CAPAAdmin"
    funcBody={include("../lib/is_current_user_CAPAAdmin.js", "string")}
  />
  <Function
    id="is_current_user_assignee"
    funcBody={include("../lib/is_current_user_assignee.js", "string")}
  />
  <State
    id="transitionNameTemp"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <Function
    id="is_current_user_qualifiedPerson"
    funcBody={include("../lib/is_current_user_qualifiedPerson.js", "string")}
  />
  <Function
    id="has_comment"
    funcBody={include("../lib/has_comment.js", "string")}
  />
  <Function
    id="showModifiedFields"
    funcBody={include("../lib/showModifiedFields.js", "string")}
  />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer8.rsx" />
    <Modal
      id="modal_addCommentTransition"
      buttonText="{{ i18n.t('Open Modal') }}"
      closeOnOutsideClick={true}
      hidden="true"
      modalHeight="240px"
      modalHeightType="auto"
      modalWidth="40%"
    >
      <Form
        id="form12"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ background: "canvas" }] }}
      >
        <Header>
          <Text
            id="formTitle13"
            marginType="normal"
            value="#### {{ transitionNameTemp.value }}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="textArea1"
            autoResize={true}
            hidden="{{ has_comment.value == false }}"
            label="{{ i18n.t('Add Comment') }}"
            labelPosition="top"
            marginType="normal"
            minLines="4"
          />
          <TextArea
            id="textArea_justification"
            autoResize={true}
            hidden="{{ transitionNameTemp.value != 'Request Withdrawl' }}"
            label="{{ i18n.t('Withdrawl Justification') }}"
            labelPosition="top"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue2.data.justification[0] }}"
          />
          <SegmentedControl
            id="select_typeOfModification"
            data="{{ getProject_field_typeOfModification_values2.data }}"
            hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
            label="{{ i18n.t('Type of Modification') }}"
            labelPosition="top"
            labels="{{ item.field_value }}"
            paddingType="spacious"
            required={true}
            style={{ ordered: [{ indicatorBackground: "primary" }] }}
            value="{{ getIssue2.data.type_of_modificationID[0] }}"
            values="{{ item.project_field_type_valueID }}"
          >
            <Option id="0000" />
            <Option id="0001" />
          </SegmentedControl>
          <TextArea
            id="textArea_impact_q_s_e"
            autoResize={true}
            hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
            label="{{ i18n.t('Impact on Q/S/E') }}"
            labelPosition="top"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue2.data.impact_q_s_e[0] }}"
          />
          <TextArea
            id="textArea_impact_supplier_clien_scheduling"
            autoResize={true}
            hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
            label="{{ i18n.t('Impact on Supplier / Client / Scheduling') }}"
            labelPosition="top"
            labelWrap={true}
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue2.data.impact_supplier_client_scheduling[0] }}"
          />
          <TextArea
            id="textArea_proposed_modification"
            autoResize={true}
            hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
            label="{{ i18n.t('Proposed Modification & Justification') }}"
            labelPosition="top"
            labelWrap={true}
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue2.data.proposed_modification[0] }}"
          />
          <TextArea
            id="textArea_comment_modifications_exceeded"
            autoResize={true}
            hidden="{{ transitionNameTemp.value != 'Request Modification' ? true : parseInt(getIssue2.data.count_modified[0]) < 3 }}"
            label="{{ i18n.t('Comment') }}"
            labelPosition="top"
            marginType="normal"
            minLines={2}
            readOnly="true"
            value="CAPA has been modified more than 3 times which exceeds the allowable amendments, you must get Approval from Management to accept this modification."
          />
          <TextInput
            id="textInput_closureRef"
            hidden="{{ !['Done','Verified & Completed'].includes(transitionNameTemp.value) }}"
            label="{{ i18n.t('Closure REF') }}"
            labelPosition="top"
            marginType="normal"
            required={true}
            value="{{ getIssue2.data?.closure_ref[0] }}"
          />
        </Body>
        <Footer>
          <Button
            id="button41"
            disabled={'{{ has_comment.value && textArea1.value == "" }}'}
            hidden="{{ ['Request Withdrawl', 'Request Modification', 'Done','Verified & Completed'].includes(transitionNameTemp.value) }}"
            marginType="normal"
            text="{{ i18n.t('{{ transitionNameTemp.value }}') }}"
          >
            <Event
              enabled="{{ has_comment.value }}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="insComments2"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp.value == 'Reopen CAPA'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_reopenCAPA"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp.value == 'Withdrawl Rejected'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_withdrawlRejected"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp.value == 'Withdrawl Accepted'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_withdrawlAccepted"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp.value == 'Modification Rejected'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_modificationRejected"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp.value == 'Modification Accepted'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_modificationAccepted"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button50"
            hidden="{{ transitionNameTemp.value != 'Verified & Completed'}}"
            marginType="normal"
            text="{{ i18n.t('Verified & Completed') }}"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_verifiedCompleted"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button48"
            hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
            marginType="normal"
            submit={true}
            submitTargetId="form12"
            text="{{ i18n.t('{{ transitionNameTemp.value }}') }}"
          />
          <Button
            id="button51"
            hidden="{{ transitionNameTemp.value != 'Request Withdrawl' }}"
            marginType="normal"
            text="{{ i18n.t('Request Withdrawl') }}"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_requestWithdrawl"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button52"
            disabled="{{ !textInput_closureRef.value }}"
            hidden="{{ transitionNameTemp.value != 'Done' }}"
            marginType="normal"
            submitTargetId="form12"
            text="{{ i18n.t('Done') }}"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_done"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_requestModification"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{ parseInt(getIssue2.data.count_modified[0]) > 3 }}"
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insComments_modificationsExceeded"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Frame>
  <Include src="./drawerFrame2.rsx" />
  <Include src="./modal_Transition_New.rsx" />
</Screen>
