<GlobalFunctions>
  <Function
    id="caseNatures"
    funcBody={include("./lib/caseNatures.js", "string")}
  />
  <Function
    id="contactMotives"
    funcBody={include("./lib/contactMotives.js", "string")}
  />
  <Function
    id="contactRoles"
    funcBody={include("./lib/contactRoles.js", "string")}
  />
  <JavascriptQuery
    id="handleSameAsRequester"
    notificationDuration={4.5}
    query={include("./lib/handleSameAsRequester.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="handleRequesterRole"
    notificationDuration={4.5}
    query={include("./lib/handleRequesterRole.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <RESTQuery
    id="GetCaseNatures"
    query="case/natures"
    resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
  />
  <RESTQuery
    id="GetContactRoles"
    query="contact/roles"
    resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
    resourceTypeOverride=""
  />
  <RESTQuery
    id="GetContactMotives"
    query="contact/motives"
    resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
    resourceTypeOverride=""
  />
  <RESTQuery
    id="GetBeneficiaryCountries"
    query="/countries"
    resourceName="0530b699-f0b3-4275-99cb-196db0543515"
  />
  <JavascriptQuery
    id="createCase"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/createCase.js", "string")}
    queryDisabled="{{ !trigger.value }}"
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <RESTQuery
    id="CreateCase"
    _additionalScope={["payload"]}
    body="{{ payload }}"
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    query="cases-v2"
    resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="POST"
  />
  <Function id="contracts" funcBody={include("./lib/contracts.js", "string")} />
  <SqlTransformQuery
    id="TriggerCreateCaseFromParent"
    query={include("./lib/TriggerCreateCaseFromParent.sql", "string")}
    resourceName="SQL Transforms"
    watchedParams={["trigger.value"]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="createCase"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlTransformQuery>
  <JavascriptQuery
    id="runTheTrigger"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/runTheTrigger.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <GlobalWidgetQuery
    id="onSubmit"
    defaultValue=""
    isMultiplayerEdited={false}
    queryDisabled="{{ !onSubmit.value }}"
    resourceName="GlobalWidgetQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
    value=""
  />
  <RESTQuery
    id="GetEligibility"
    resourceName="7f82e685-a80d-4c9e-8b92-f7fccd9fe394"
  />
</GlobalFunctions>
