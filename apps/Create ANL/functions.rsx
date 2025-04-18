<GlobalFunctions>
  <Folder id="project">
    <State id="project_ID" value="'880b1d9f-4758-4643-9b37-94939833048f'" />
    <SqlQueryUnified
      id="getProjects"
      query={include("./lib/getProjects.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      warningCodes={[]}
    />
  </Folder>
  <Folder id="project_type">
    <SqlQueryUnified
      id="getProjectType_filtered"
      notificationDuration={null}
      query={include("./lib/getProjectType_filtered.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      warningCodes={[]}
    />
  </Folder>
  <Folder id="project_Field_byType">
    <SqlQueryUnified
      id="getProject_field_typeofbatch_values"
      isMultiplayerEdited={false}
      query={include("./lib/getProject_field_typeofbatch_values.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getProject_field_status_values"
      query={include("./lib/getProject_field_status_values.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getProject_field_type_of_analysis"
      isMultiplayerEdited={false}
      query={include("./lib/getProject_field_type_of_analysis.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      warningCodes={[]}
    />
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUser_filteredProjectRoleActive"
      notificationDuration={null}
      query={include("./lib/getUser_filteredProjectRoleActive.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUser_all"
      notificationDuration={null}
      query={include("./lib/getUser_all.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      warningCodes={[]}
    />
  </Folder>
  <Folder id="issue">
    <SqlQueryUnified
      id="insIssue"
      actionType="INSERT"
      changeset={
        '[{"key":"issueID","value":"{{ localStorage.values.next_anl_issue_id }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Open\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"Open"},{"key":"issue","value":"{{ textInput_issue.value }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"description","value":"{{ richTextEditor_description.value }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_all.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].projectCode }}"},{"key":"issue_index","value":"{{ buildIssueIndex.value }}"},{"key":"lab_nos","value":"{{ textInput_LabNos.value }}"},{"key":"anl_method","value":"{{textInput_Method.value}}"},{"key":"test","value":"{{textInput_Test.value}}"},{"key":"analysis_type","value":"{{selectTypeofAnalysis.value}}"},{"key":"analysis_other","value":"{{textInput_analysis_other.value}}"}]'
      }
      editorMode="gui"
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="issue"
    >
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: 'date_due.resetValue()\ntextInput_issue.resetValue()\nrichTextEditor_description.setValue("")\ntextInput_Method.resetValue()\ntextInput_Test.resetValue()\ntextInput_LabNos.resetValue()\nselectTypeofAnalysis.resetValue()\nselect_assignee.resetValue()',
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
      query={include("./lib/getIssues.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getDeviationIssues"
      query={include("./lib/getDeviationIssues.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      warningCodes={[]}
    />
  </Folder>
  <GlobalWidgetQuery
    id="close"
    resourceName="GlobalWidgetQuery"
    resourceTypeOverride=""
    showSuccessToaster={false}
  />
  <GlobalWidgetQuery
    id="refresh"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    showSuccessToaster={false}
    value=""
  />
</GlobalFunctions>
