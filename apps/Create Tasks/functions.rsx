<GlobalFunctions>
  <Folder id="project_Field_byType">
    <SqlQueryUnified
      id="getProject_field_status_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/getProject_field_status_values.sql", "string")}
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
      id="getProject_field_status_values2"
      isMultiplayerEdited={false}
      query={include("./lib/getProject_field_status_values2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUser_filteredProject"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("./lib/getUser_filteredProject.sql", "string")}
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
  <Folder id="issue">
    <SqlQueryUnified
      id="getReferenceIssues"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/getReferenceIssues.sql", "string")}
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
      id="getReferenceIssue"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/getReferenceIssue.sql", "string")}
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
      id="insIssueTask_addAnother"
      actionType="INSERT"
      changeset={
        '[{"key":"issueID","value":"{{ localStorage.values.next_crf_task_id }}"},{"key":"reference_issueID","value":"{{ referenceIssueID.value }}"},{"key":"issue","value":"{{ textInput_summary.value }}"},{"key":"description","value":"{{ richTextEditor_description.value }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_filteredProject.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == creationStatus.value)[0].project_field_type_valueID }}"},{"key":"status_value","value":"{{ creationStatus.value }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ selectProject.selectedItem.projectCode }}"},{"key":"issue_index","value":"{{ setNextTaskIssueIdx.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
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
        method="run"
        params={{
          ordered: [
            {
              src: 'date_due.resetValue()\ntextInput_summary.resetValue()\nrichTextEditor_description.setValue("")\nselect_assignee.resetValue()',
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
        pluginId="getReferenceIssues"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{
          ordered: [
            { key: "next_crf_task_id" },
            { newValue: "{{ uuid.v4() }}" },
          ],
        }}
        pluginId=""
        type="localStorage"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insIssueTask"
      actionType="INSERT"
      changeset={
        '[{"key":"issueID","value":"{{ localStorage.values.next_crf_task_id }}"},{"key":"reference_issueID","value":"{{ referenceIssueID.value }}"},{"key":"issue","value":"{{ textInput_summary.value }}"},{"key":"description","value":"{{ richTextEditor_description.value }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_filteredProject.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == creationStatus.value)[0].project_field_type_valueID }}"},{"key":"status_value","value":"{{ creationStatus.value }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ selectProject.selectedItem.projectCode }}"},{"key":"issue_index","value":"{{ setNextTaskIssueIdx.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
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
        method="run"
        params={{
          ordered: [
            {
              src: 'date_due.resetValue()\ntextInput_summary.resetValue()\nrichTextEditor_description.setValue("")\nselect_assignee.resetValue()',
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
        pluginId="refresh"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <Function
      id="buildIssueIndex"
      funcBody={include("./lib/buildIssueIndex.js", "string")}
    />
    <SqlQueryUnified
      id="getHighestTaskIssueIndex"
      actionType="INSERT"
      changeset={
        '[{"key":"issueID","value":"{{ localStorage.values.next_crf_task_id }}"},{"key":"reference_issueID","value":"{{ referenceIssueID.value }}"},{"key":"issue","value":"{{ textInput_summary.value }}"},{"key":"description","value":"{{ richTextEditor_description.value }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_filteredProject.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == creationStatus.value)[0].project_field_type_valueID }}"},{"key":"status_value","value":"{{ creationStatus.value }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ selectProject.selectedItem.projectCode }}"},{"key":"issue_index","value":"{{ buildIssueIndex.value }}"}]'
      }
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("./lib/getHighestTaskIssueIndex.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      tableName="issue"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <Function
      id="setNextTaskIssueIdx"
      funcBody={include("./lib/setNextTaskIssueIdx.js", "string")}
    />
  </Folder>
  <Folder id="project">
    <SqlQueryUnified
      id="getProject"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("./lib/getProject.sql", "string")}
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
      id="getProjects"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("./lib/getProjects.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <State id="projectID" value="'ac347935-ad6f-4413-939f-aaad8a99c6db'" />
    <State id="crfProjectID" value="'a026255a-3934-4889-8712-63348dac8d74'" />
  </Folder>
  <Folder id="projectType">
    <SqlQueryUnified
      id="getProjectType"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/getProjectType.sql", "string")}
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
  <GlobalWidgetQuery
    id="close"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="GlobalWidgetQuery"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <GlobalWidgetQuery
    id="refresh"
    defaultValue=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="GlobalWidgetQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    value=""
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>