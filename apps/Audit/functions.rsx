<GlobalFunctions>
  <SqlQueryUnified
    id="getPathfinderAudit_issue"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getPathfinderAudit_issue.sql", "string")}
    resourceName="de01cbc3-3dcc-406f-87b0-288400802f83"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Function
    id="format_audit_for_timeline"
    funcBody={include("./lib/format_audit_for_timeline.js", "string")}
  />
  <State id="auditsToFetch" value="10" />
  <SqlQueryUnified
    id="getAvatarUrl"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getAvatarUrl.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getIssue"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getIssue.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getPathfinderAudit_issueCount"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getPathfinderAudit_issueCount.sql", "string")}
    resourceName="de01cbc3-3dcc-406f-87b0-288400802f83"
    resourceTypeOverride=""
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getComments"
    enableTransformer={true}
    query={include("./lib/getComments.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data).map(x => {x.comment_display =  x.firstName + '&nbsp;' + x.lastName + '&nbsp;' + 'added -' + '</br>' + x.comment; return x});"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="insComments"
    actionType="INSERT"
    changeset={
      '[{"key":"commentsID","value":"{{ uuid.v4() }}"},{"key":"issueID","value":"{{issueID.value}}"},{"key":"userID","value":"{{ userID.value }}"},{"key":"comment","value":"{{ textArea_commentBox2.value }}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"created_by","value":"{{ current_user.email }}"}]'
    }
    editorMode="gui"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="comments"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getComments"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="run"
      params={{ ordered: [{ src: "textArea_commentBox2.clearValue()" }] }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getUser_FilteredProject"
    query={include("./lib/getUser_FilteredProject.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  />
  <State id="auditoffset" value="{{ offsetFromPagination.value }}" />
  <Function
    id="offsetFromPagination"
    funcBody={include("./lib/offsetFromPagination.js", "string")}
  />
  <SqlQueryUnified
    id="getPathfinderAudit_issue2"
    enableTransformer={true}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getPathfinderAudit_issue2.sql", "string")}
    resourceName="de01cbc3-3dcc-406f-87b0-288400802f83"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="return formatDataAsArray(data)"
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Function
    id="formatTransitions"
    funcBody={include("./lib/formatTransitions.js", "string")}
  />
  <Function
    id="transformer4"
    funcBody={include("./lib/transformer4.js", "string")}
  />
  <JavascriptQuery
    id="query9"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/query9.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Function
    id="transformer5"
    funcBody={include("./lib/transformer5.js", "string")}
  />
  <Function
    id="transformer6"
    funcBody={include("./lib/transformer6.js", "string")}
  />
  <SqlQueryUnified
    id="getPathfinderAudit_issue_allData"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getPathfinderAudit_issue_allData.sql", "string")}
    resourceName="de01cbc3-3dcc-406f-87b0-288400802f83"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getPathfinderUsers"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getPathfinderUsers.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Function
    id="formatusers"
    funcBody={include("./lib/formatusers.js", "string")}
  />
</GlobalFunctions>
