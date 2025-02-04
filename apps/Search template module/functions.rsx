<GlobalFunctions>
  <RESTQuery
    id="GetTemplates"
    body={
      '[{"key":"title","value":"{{ SearchTitle_Input.value }}"},{"key":"type","value":"{{ type.value }}"}]'
    }
    bodyType="json"
    query="search-templates"
    resourceName="731a36dc-65d8-4664-a3b8-66a83d9ffed8"
    runWhenPageLoads={true}
    type="POST"
  />
  <Function id="templates" funcBody={include("./lib/templates.js", "string")} />
  <JavascriptQuery
    id="handleConfirm"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/handleConfirm.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <GlobalWidgetQuery
    id="onConfirm"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
  <JavascriptQuery
    id="onHide"
    notificationDuration={4.5}
    query={include("./lib/onHide.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
