<GlobalFunctions>
  <Folder id="project">
    <State id="project_ID" value="'84fa9a1f-c51f-433d-8f0b-d70220d4ddf3'" />
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
        '[{"key":"issueID","value":"{{ localStorage.values.next_rsn_issue_id }}"},{"key":"projectID","value":"{{ selectProject.value }}"},{"key":"project_typeID","value":"{{ selectProjectType.value }}"},{"key":"statusID","value":"{{ formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == \'Open\')[0].project_field_type_valueID }}"},{"key":"status_value","value":"Open"},{"key":"issue","value":"{{ textInput_issue.value }}"},{"key":"due_date","value":"{{ date_due.value }}"},{"key":"description","value":"{{ textArea1.value }}"},{"key":"assigned_to","value":"{{ formatDataAsArray(getUser_all.data).filter(x => x.userID == select_assignee.value)[0].email }}"},{"key":"created_by","value":"{{ current_user.email }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"project_value","value":"{{ selectProject.selectedLabel }}"},{"key":"project_type_value","value":"{{ selectProjectType.selectedLabel }}"},{"key":"projectCode","value":"{{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].projectCode }}"},{"key":"issue_index","value":"{{ buildIssueIndex.value }}"},{"key":"method_t","value":"{{ textInput_Method.value }}"},{"key":"test","value":"{{textInput_Test.value}}"},{"key":"product_name","value":"{{select_productName.value}}"},{"key":"dilution","value":"{{textInput1.value}}"},{"key":"SF","value":"{{textInput2.value}}"},{"key":"phMeter","value":"{{ segmentedControl1.selectedItem.value }}"},{"key":"phMeterID","value":"{{textInput_pHMeterID.value}}"},{"key":"phMeter_Calibration_Expiry","value":"{{calibrationDate.value}}"},{"key":"balance_slip","value":"{{selectBalanceSlip.value}}"},{"key":"prep_expiry","value":"{{ segmentedControl2.selectedItem.value }}"},{"key":"prep_expiry_date","value":"{{date_expiry.value}}"},{"key":"lpr","value":"{{ textInput_LPR.value }}"},{"key":"name","value":"{{textInput_Name.value}}"},{"key":"prep_expiry_reason","value":"{{ textInput_reason.value }}"}]'
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
              src: 'date_due.resetValue()\ntextInput_issue.resetValue()\ntextArea1.setValue("")\ntextInput_Method.resetValue()\ntextInput_Test.resetValue()\ntextInput_Name.resetValue()\nselect_productName.resetValue()\ntextInput1.resetValue()\ntextInput2.resetValue()\nsegmentedControl1.resetValue()\ntextInput_pHMeterID.resetValue()\ncalibrationDate.resetValue()\nsegmentedControl2.resetValue\nselect_assignee.resetValue()\nselectBalanceSlip.resetValue()\ndate_expiry.resetValue()\ntextInput_LPR.resetValue()\nsteppedContainer1.showPreviousView\n',
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
    data="{{moduleContainerrefreshTrigger.data}}"
    defaultValue=""
    error="{{moduleContainerrefreshTrigger.error}}"
    metadata="{{moduleContainerrefreshTrigger.metadata}}"
    resourceName="GlobalWidgetQuery"
    showSuccessToaster={false}
    value=""
  />
  <SqlQueryUnified
    id="getProducts"
    query={include("./lib/getProducts.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="moduleContainerrefreshTrigger"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
