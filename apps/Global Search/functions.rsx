<GlobalFunctions>
  <SqlQueryUnified
    id="getOpenAll_CurrentUser"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getOpenAll_CurrentUser.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getProject_field_typeOfModification_values"
    isMultiplayerEdited={false}
    query={include(
      "./lib/getProject_field_typeOfModification_values.sql",
      "string"
    )}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getComments"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query={include("./lib/getComments.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data).map(x => {x.comment_display =  
'<b>'+ x.firstName + '&nbsp;' + x.lastName + '&nbsp;' + '</b>' + '</br>' + x.comment; return x});"
    warningCodes={[]}
  />
  <S3Query
    id="get_attachments"
    bucketName="pathfinder-uat"
    prefix="{{tableProject.selectedRow.project_value.toLowerCase()}}/{{tableProject.selectedRow.issueID}}"
    resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
  />
  <S3Query
    id="readFile"
    actionType="read"
    bucketName="pathfinder-uat"
    fileKey="{{ table5.selectedRow.Key }}"
    resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
  />
  <State id="split_frame" value="true" />
  <SqlQueryUnified
    id="getUser_filtered_current"
    isMultiplayerEdited={false}
    query={include("./lib/getUser_filtered_current.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  />
  <GlobalWidgetQuery
    id="refresh"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
  <SqlTransformQuery
    id="triggerRefresh"
    query={include("./lib/triggerRefresh.sql", "string")}
    resourceName="SQL Transforms"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getOpenAll_CurrentUser"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlTransformQuery>
</GlobalFunctions>
