<GlobalFunctions>
  <Folder id="project">
    <State id="project_ID" value="'65ecccb8-2886-4361-a2e0-6f87c98569cf'" />
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
      id="getProject_field_status_values"
      query={include("./lib/getProject_field_status_values.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getProducts"
      query={include("./lib/getProducts.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
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
        '[{"key":"issueID","value":"{{ localStorage.values.next_rsn_issue_id }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Open\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"Open"},{"key":"issue","value":"{{ textInput_issue.value }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"description","value":"{{ textArea1.value }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_all.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].projectCode }}"},{"key":"issue_index","value":"{{ buildIssueIndex.value }}"},{"key":"dose","value":"{{textInput_Dose.value}}"},{"key":"product_code","value":"{{textInput_Code.value}}"},{"key":"product_name","value":"{{select_productName.value}}"},{"key":"good_recv_note","value":"{{textInput_GRN.value}}"},{"key":"qty_rcvd","value":"{{textInput_QTYRecieved.value}}"},{"key":"internal_batch_no","value":"{{textInput_IBN.value}}"},{"key":"external_batch_no","value":"{{textInput_EBN.value}}"},{"key":"test","value":"{{textInput_Testing.value}}"},{"key":"reference_retention","value":"{{textInput_Reference_Retention.value}}"},{"key":"stb_protocols","value":"{{ textInput_stb_protocol.value }}"},{"key":"stb_conditions","value":"{{textInput_stb_conditions.value}}"},{"key":"product_type","value":"{{ textInput_Type.value }}"}]'
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
              src: "date_due.resetValue()\ntextInput_issue.resetValue()\ntextInput_Dose.resetValue()\ntextInput_Code.resetValue()\ntextInput_Type.resetValue()\ntextInput_GRN.resetValue()\nselect_productName.resetValue()\ntextInput_QTYRecieved.resetValue()\ntextInput_IBN.resetValue()\ntextInput_EBN.resetValue()\ntextInput_Testing.resetValue()\nselect_assignee.resetValue()\ndate_expiry.resetValue()\ntextInput_Reference_Retention.resetValue()\ntextInput_stb_protocol.resetValue()\ntextInput_stb_conditions.resetValue()\n\n",
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
  </Folder>
  <GlobalWidgetQuery
    id="close"
    resourceName="GlobalWidgetQuery"
    resourceTypeOverride=""
    showSuccessToaster={false}
  />
  <GlobalWidgetQuery
    id="refresh"
    data="{{moduleContainerrefreshTrigger.data}}"
    defaultValue=""
    error="{{moduleContainerrefreshTrigger.error}}"
    metadata="{{moduleContainerrefreshTrigger.metadata}}"
    resourceName="GlobalWidgetQuery"
    showSuccessToaster={false}
    value=""
  />
  <JavascriptQuery
    id="moduleContainerrefreshTrigger"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
