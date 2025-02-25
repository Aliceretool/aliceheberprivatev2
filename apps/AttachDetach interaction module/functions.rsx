<GlobalFunctions>
  <RESTQuery
    id="SearchCases"
    cookies="[]"
    headers="[]"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="cases/search/query?search={{ SearchCasesQuery_Input.value }}"
    resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
    showSuccessToaster={false}
  />
  <RESTQuery
    id="AttachInteractionToCase"
    _additionalScope={["caseId"]}
    body={'{\n  "case_id": {{ caseId }}\n}'}
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    query="interaction/attach/{{ interactionId.value }}"
    resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="PUT"
  />
  <JavascriptQuery
    id="attachInteractionToCase"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/attachInteractionToCase.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <GlobalWidgetQuery
    id="onInteractionAttached"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
  <GlobalWidgetQuery
    id="onModalHide"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
  <Function
    id="modalTitle"
    funcBody={include("./lib/modalTitle.js", "string")}
  />
  <Function
    id="confirmTitle"
    funcBody={include("./lib/confirmTitle.js", "string")}
  />
  <JavascriptQuery
    id="onHide"
    notificationDuration={4.5}
    query={include("./lib/onHide.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
