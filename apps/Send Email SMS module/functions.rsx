<GlobalFunctions>
  <Folder id="search_template_module">
    <JavascriptQuery
      id="onModalHide"
      notificationDuration={4.5}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="isOpen" value="false" />
    <JavascriptQuery
      id="onTemplateAddConfirm"
      _additionalScope={["template"]}
      notificationDuration={4.5}
      query={include("./lib/onTemplateAddConfirm.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="selectedTemplate" />
  </Folder>
  <Folder id="sms">
    <JavascriptQuery
      id="smsInteractionHandler"
      notificationDuration={4.5}
      query={include("./lib/smsInteractionHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="SendSMS"
      body={
        '{\n    "messages": [\n        {\n            "text": {{ SMSBody_Input.value }} ,\n            "recipients": [\n                {\n                    "dst": "{{ ToInput_PhoneNumber.value || AddCaseContact_Select?.selectedItem?.phoneNumber }}"\n                }\n            ]\n        }\n    ]\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      resourceName="d095efca-f592-4798-977a-4b1aeb48eb5e"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="CreateSmsInteraction"
      body={
        '{\n  "smsData": {\n    "recipient": {{ ToInput_PhoneNumber.value || AddCaseContact_Select?.selectedItem?.phoneNumber || \'\' }},\n    "content": {{ SMSBody_Input.value }},\n    "retarus_job_id": {{ jobId }}\n  }\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      notificationDuration={4.5}
      query="interaction/sms"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <JavascriptQuery
    id="handleTemplateSelection"
    notificationDuration={4.5}
    query={include("./lib/handleTemplateSelection.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="replaceBodyWithTemplate"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/replaceBodyWithTemplate.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="onTemplateRemove"
    notificationDuration={4.5}
    query={include("./lib/onTemplateRemove.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="handleModalHide"
    notificationDuration={4.5}
    query={include("./lib/handleModalHide.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <GlobalWidgetQuery
    id="onSubmit"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    showFailureToaster={false}
    value=""
  />
</GlobalFunctions>
