<GlobalFunctions>
  <Folder id="project">
    <SqlQueryUnified
      id="getProjects"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("./lib/getProjects.sql", "string")}
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
  <Folder id="project_type">
    <SqlQueryUnified
      id="getProjectType_filtered"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("./lib/getProjectType_filtered.sql", "string")}
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
  <Folder id="project_Field_byType">
    <SqlQueryUnified
      id="getProject_field_responsibleDepartment_values"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "./lib/getProject_field_responsibleDepartment_values.sql",
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
        "./lib/getProject_field_sourceOfChange_values.sql",
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
        "./lib/getProject_field_typeOfChange_values.sql",
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
      id="getProject_field_responsibleDepartment_person"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "./lib/getProject_field_responsibleDepartment_person.sql",
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
    >
      <Event
        enabled="{{getProject_field_responsibleDepartment_person.data.responsible_user[0] != null }}"
        event="success"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{getProject_field_responsibleDepartment_person.data.responsible_user[0] }}",
            },
          ],
        }}
        pluginId="selectResponsiblePerson"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{getProject_field_responsibleDepartment_person.data.responsible_user[0] == null }}"
        event="success"
        method="resetValue"
        params={{ ordered: [] }}
        pluginId="selectResponsiblePerson"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUser_filteredProjectRoleActive"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("./lib/getUser_filteredProjectRoleActive.sql", "string")}
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
      id="getUser_all"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={null}
      query={include("./lib/getUser_all.sql", "string")}
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
      id="insIssue"
      actionType="INSERT"
      changeset={
        '[{"key":"issueID","value":"{{ localStorage.values.next_change_control_issue_id }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Pending\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"Pending"},{"key":"issue","value":"{{ textInput_issue.value }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"description","value":"{{ richTextEditor_description.value }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_all.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].projectCode }}"},{"key":"issue_index","value":"{{ buildIssueIndex.value }}"},{"key":"sourceID","value":"{{ multiselect_sourceOfChange.value }}"},{"key":"source_value","value":"{{ multiselect_sourceOfChange.selectedLabels }}"},{"key":"typeID","value":"{{ select_type.value }}"},{"key":"type_value","value":"{{ select_type.selectedLabel }}"},{"key":"responsible_departmentID","value":"{{ selectResponsibleDepartment.value }}"},{"key":"responsible_department_value","value":"{{ selectResponsibleDepartment.selectedLabel }}"},{"key":"department_manager","value":"{{ selectResponsiblePerson.value }}"}]'
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
              src: 'date_due.resetValue()\ntextInput_issue.resetValue()\nrichTextEditor_description.setValue("")\nselect_type.resetValue()\nmultiselect_sourceOfChange.resetValue()\nselect_assignee.resetValue()',
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
      id="getIssues"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("./lib/getIssues.sql", "string")}
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
  <SqlQueryUnified
    id="getDeviationIssues"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getDeviationIssues.sql", "string")}
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
    id="insIssue_addAnother"
    actionType="INSERT"
    changeset={
      '[{"key":"issueID","value":"{{ localStorage.values.next_capa_issue_id }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Open\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"Open"},{"key":"issue","value":"{{ textInput_issue.value }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"description","value":"{{ richTextEditor_description.value }}"},{"key":"responsible_departmentID","value":"{{ selectResponsibleDepartment.value }}"},{"key":"responsible_department_value","value":"{{ selectResponsibleDepartment.selectedLabel }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_all.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].projectCode }}"},{"key":"issue_index","value":"{{ buildIssueIndex.value }}"},{"key":"reference_issueID","value":"{{ select_reference.value }}"},{"key":"sourceID","value":"{{ select_type.value }}"},{"key":"source_value","value":"{{ select_type.selectedLabel }}"},{"key":"specific_reference","value":"{{ textInput_specificReference.value }}"}]'
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
            src: 'date_due.resetValue()\ntextInput_issue.resetValue()\nrichTextEditor_description.setValue("")\nselectResponsibleDepartment.resetValue()\nselect_type.resetValue()\ntextInput_specificReference.resetValue()\nselect_assignee.resetValue()',
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
      method="setValue"
      params={{
        ordered: [
          { key: "next_capa_issue_id" },
          { newValue: "{{ uuid.v4() }}" },
        ],
      }}
      pluginId=""
      type="localStorage"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getIssues"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
