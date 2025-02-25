<Screen
  id="Case"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <Folder id="case_details">
    <RESTQuery
      id="GetCase"
      isHidden={false}
      isMultiplayerEdited={false}
      query="/cases/{{ url.searchParams.id }}"
      resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
      showFailureToaster={false}
    />
    <RESTQuery
      id="GetCrises"
      cookies="[]"
      headers="[]"
      isHidden={false}
      isMultiplayerEdited={false}
      query="crisis?entity_id={{ caseInfoTransformer.value.entity_id }}&is_global=true&crisis_type_id={{ InitialSituation_Form_CrisisType_Select.value }}"
      queryDisabled="{{ !InitialSituation_Form_CrisisType_Select.value }}"
      resourceName="8f05f883-436a-4573-8bcb-e5f54eac18f6"
    />
    <Function
      id="policyDatesValidationTransformer"
      funcBody={include("../lib/policyDatesValidationTransformer.js", "string")}
    />
    <Function
      id="travelDatesCalculationTransformer"
      funcBody={include(
        "../lib/travelDatesCalculationTransformer.js",
        "string"
      )}
    />
    <JavascriptQuery
      id="caseEditHandler"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/caseEditHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="calculateAgeTransformer"
      funcBody={include("../lib/calculateAgeTransformer.js", "string")}
    />
    <Function
      id="caseInfoTransformer"
      funcBody={include("../lib/caseInfoTransformer.js", "string")}
    />
    <Function
      id="caseInfoToUpdateTransformer"
      funcBody={include("../lib/caseInfoToUpdateTransformer.js", "string")}
    />
    <Function
      id="showAlert"
      funcBody={include("../lib/showAlert.js", "string")}
    />
    <State
      id="eligibleValues"
      value={'["Commercial gesture B2B", "Commercial gesture EA","Eligible"]'}
    />
    <Function
      id="eligibilityTransformer"
      funcBody={include("../lib/eligibilityTransformer.js", "string")}
    />
    <RESTQuery
      id="GetCasePolicy"
      query="/{{ url.searchParams.id }}"
      resourceName="a8b661ac-14bb-4ad3-a4e1-5b78e996a5d3"
      showFailureToaster={false}
    />
  </Folder>
  <Folder id="documentation">
    <RESTQuery
      id="GetDocumentsByCaseId"
      isHidden={false}
      notificationDuration={4.5}
      query="documents?case_id={{ url.searchParams.id }}"
      queryDisabled={'{{ CaseDetails_Tabs.selectedLabel !== "Documentation" }}'}
      resourceName="8de31787-8495-43ca-b1b2-c7d21c646ad4"
      showSuccessToaster={false}
      watchedParams={['CaseDetails_Tabs.selectedLabel !== "Documentation"']}
    />
    <JavascriptQuery
      id="GetNotDuplicatedFilenameRecursive"
      _additionalScope={["filename"]}
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/GetNotDuplicatedFilenameRecursive.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="CreateDocument"
      _additionalScope={["filename", "fileurl"]}
      body={
        '{\n  "filename": {{ filename }} ,\n  "status": "To be approved",\n  "case": {{ url.searchParams.id }} ,\n  "type": {{ DocumentType_Select.value }} ,\n  "subtype": {{ DocumentSubtype_Select.value }} ,\n  "uploaded_by": "b295dddc-7ba1-4631-96f5-65865692b58e",\n  "url": {{ fileurl }} ,\n  "origin": "Received",\n  "user_id": {{ current_user.sid }}\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      notificationDuration={4.5}
      query="documents"
      resourceName="8de31787-8495-43ca-b1b2-c7d21c646ad4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
    <JavascriptQuery
      id="UploadFilesHandler"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/UploadFilesHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="ChangeDocumentStatus"
      _additionalScope={["document_id", "status"]}
      body={
        '{\n  "status": {{ status }} ,\n  "user_id": {{ current_user.sid }}\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      query="documents/{{ document_id }}"
      resourceName="8de31787-8495-43ca-b1b2-c7d21c646ad4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PATCH"
    />
    <JavascriptQuery
      id="ChangeStatusActionHandler"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/ChangeStatusActionHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="DeleteDocument"
      _additionalScope={["document_id"]}
      bodyType="json"
      isHidden={false}
      query="documents/{{ document_id }}?user_id={{ current_user.sid }}"
      resourceName="8de31787-8495-43ca-b1b2-c7d21c646ad4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="DELETE"
    />
    <JavascriptQuery
      id="DeleteDocumentActionHandler"
      _additionalScope={["document_id"]}
      confirmationMessage="Are you sure you want to delete this document?"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/DeleteDocumentActionHandler.js", "string")}
      requireConfirmation={true}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="UploadFile"
      _additionalScope={["file"]}
      body={
        '[{"key":"case_id","value":"{{ url.searchParams.id }}"},{"key":"type","value":"{{ file.type }}"},{"key":"name","value":"{{ file.name }}"},{"key":"base64Data","value":"{{ file.base64Data }}"}]'
      }
      bodyType="json"
      isHidden={false}
      query="/upload_file"
      resourceName="8de31787-8495-43ca-b1b2-c7d21c646ad4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
    <Function
      id="documentSubtypesTn"
      funcBody={include("../lib/documentSubtypesTn.js", "string")}
    />
    <Function
      id="getSubtypesTn"
      funcBody={include("../lib/getSubtypesTn.js", "string")}
    />
  </Folder>
  <Folder id="interactions">
    <RESTQuery
      id="GetInteractions"
      _additionalScope={[]}
      body={
        '{\n  "case_id": {{ caseId.value }},\n  "type": {{ interactionsListModule2.outputFilter.type }},\n  "sender": {{ interactionsListModule2.outputFilter.sender }},\n  "receiver": {{ interactionsListModule2.outputFilter.receiver }},\n  "caseKey": {{ interactionsListModule2.outputFilter.caseNumber }},\n  "status_id": {{ interactionsListModule2.outputFilter.status }},\n  "incomingOutgoing": {{ interactionsListModule2.outputFilter.incomingOutgoing }},\n  "contactRole_id": {{ interactionsListModule2.outputFilter.senderRecipientType }},\n  "withAttachment": {{ interactionsListModule2.outputFilter.withAttachment }},\n  "isDraft": {{ interactionsListModule2.outputFilter.isDraft }},\n  "isHideCalls": {{ interactionsListModule2.outputFilter.isHideCalls }},\n  "isNotSent": {{ interactionsListModule2.outputFilter.isNotSent }},\n  "receivedStartDate": {{ interactionsListModule2.outputFilter.receivedStartDate }},\n  "receivedEndDate": {{ interactionsListModule2.outputFilter.receivedEndDate }}\n}'
      }
      bodyType="raw"
      cookies="[]"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      query="fetch/interactions/v2"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
    <SqlTransformQuery
      id="DebounceGetInteractions"
      isHidden={false}
      query={include("../lib/DebounceGetInteractions.sql", "string")}
      queryDisabled={'{{ CaseDetails_Tabs.selectedLabel !== "Interactions" }}'}
      resourceName="SQL Transforms"
      watchedParams={[
        "interactionsListModule2.outputFilter",
        'CaseDetails_Tabs.selectedLabel !== "Interactions"',
      ]}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInteractions"
        type="datasource"
        waitMs="1000"
        waitType="debounce"
      />
    </SqlTransformQuery>
    <State
      id="sendInteractionState"
      value={'{\n  type: "email",\n  open: false,\n  case: {},\n}'}
    />
    <JavascriptQuery
      id="openSendInteractionModal"
      _additionalScope={["type"]}
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/openSendInteractionModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="closeSendInteractionModal"
      notificationDuration={4.5}
      query={include("../lib/closeSendInteractionModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="contacts">
    <RESTQuery
      id="GetContacts"
      isHidden={false}
      isMultiplayerEdited={false}
      query="/contact?case_id={{ url.searchParams.id }}"
      queryDisabled={'{{ CaseDetails_Tabs.selectedLabel !== "Contacts" }}'}
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
    />
    <RESTQuery
      id="CreateContact"
      _additionalScope={["contact"]}
      body="{{ contact }}
  
"
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      query="/contact"
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="EditContact"
      _additionalScope={["contact", "id"]}
      body="{{ contact }}"
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      query="/contact/{{ id }}"
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    />
    <RESTQuery
      id="DeleteContact"
      _additionalScope={["contactId"]}
      bodyType="json"
      headers="[]"
      isHidden={false}
      query="/contact/{{ contactId }}"
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="DELETE"
    />
    <State id="currentContactIndex" />
    <JavascriptQuery
      id="saveItemHandler"
      _additionalScope={["index"]}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/saveItemHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="addContactHandler"
      confirmationMessage="You have unsaved changes. Are you sure you want to proceed with this action?"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/addContactHandler.js", "string")}
      requireConfirmation="{{ currentContactIndex.value != null }}"
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="contactList" value="{{ GetContacts.data }}" />
    <JavascriptQuery
      id="editContactButtonHandler"
      _additionalScope={["index"]}
      confirmationMessage="You have unsaved changes. Are you sure you want to proceed with this action?"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/editContactButtonHandler.js", "string")}
      requireConfirmation="{{ currentContactIndex.value != null }}"
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="deleteContactHandler"
      _additionalScope={["contactId"]}
      confirmationMessage="Are you sure you want to delete this contact?"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/deleteContactHandler.js", "string")}
      requireConfirmation={true}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="instanceValues"
      funcBody={include("../lib/instanceValues.js", "string")}
    />
    <State id="isCreating" />
    <JavascriptQuery
      id="cancelContactCreation"
      notificationDuration={4.5}
      query={include("../lib/cancelContactCreation.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="missions">
    <Function
      id="serviceOptions"
      funcBody={include("../lib/serviceOptions.js", "string")}
    />
    <JavascriptQuery
      id="createServiceHandler"
      notificationDuration={4.5}
      query={include("../lib/createServiceHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="tasks">
    <RESTQuery
      id="GetTasksListByCase"
      body={
        '{\n  "case_id": {{ caseId.value }},\n  "priority_id": {{ Task_Priority_Select.value }},\n  "category_id": {{ Task_Category_Select.value }},\n  "status_ids": {{ Task_Status_MultiSelect.value }}\n\n  \n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      query="/tasks-list/case"
      queryDisabled={'{{ CaseDetails_Tabs.selectedLabel !== "Tasks" }}'}
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      showSuccessToaster={false}
      type="POST"
      watchedParams={['CaseDetails_Tabs.selectedLabel !== "Tasks"']}
    />
    <State id="taskId" />
    <RESTQuery
      id="CompleteTask"
      _additionalScope={["selectedTaskId"]}
      body={
        '{\n  status_id: {{ GetTaskStatuses.data.find(status => status.name === "Completed").id }},\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/tasks/status/{{ selectedTaskId }}"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      runWhenModelUpdates={false}
      successMessage="Task has been completed successfully"
      type="PATCH"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTasksListByCase"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "null" }] }}
        pluginId="taskId"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="CancelTask"
      _additionalScope={["selectedTaskId"]}
      body={
        '{\n  status_id: {{ GetTaskStatuses.data.find(status => status.name === "Cancelled").id }},\n  deleting_reason_id: {{ Reason_For_Task_Cancel_Select.value }}\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/tasks/status/{{ selectedTaskId }}"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      successMessage="Task has been cancelled successfully"
      type="PATCH"
    >
      <Event
        event="success"
        method="hide"
        params={{
          ordered: [
            {
              options: {
                ordered: [{ block: "nearest" }, { behavior: "auto" }],
              },
            },
          ],
        }}
        pluginId="modalTaskDelete"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTasksListByCase"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "null" }] }}
        pluginId="taskId"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="completeTaskHandle"
      _additionalScope={["selectedRow"]}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/completeTaskHandle.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="cancelTaskModalHandle"
      _additionalScope={["selectedRow"]}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/cancelTaskModalHandle.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="cancelTaskHandle"
      _additionalScope={["selectedTaskId"]}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/cancelTaskHandle.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="ReopenTask"
      _additionalScope={["selectedTaskId"]}
      body={
        '{\n  status_id: {{ GetTaskStatuses.data.find(status => status.name === "Opened").id }},\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/tasks/status/{{ selectedTaskId }}"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      runWhenModelUpdates={false}
      successMessage="Task has been reopened successfully"
      type="PATCH"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTasksListByCase"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="reopenTaskHandle"
      _additionalScope={["selectedRow"]}
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/reopenTaskHandle.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="onSubmitTaskUpdateModal"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/onSubmitTaskUpdateModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="hideTaskUpdateModal"
      confirmationMessage="You have unsaved changes. Are you sure you want to proceed with this action?"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/hideTaskUpdateModal.js", "string")}
      requireConfirmation={true}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="hideTaskCreateModal"
      confirmationMessage="You have unsaved changes. Are you sure you want to proceed with this action?"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/hideTaskCreateModal.js", "string")}
      requireConfirmation={true}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="onSubmitTaskCreateModal"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/onSubmitTaskCreateModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="taskStatusesList"
      funcBody={include("../lib/taskStatusesList.js", "string")}
    />
  </Folder>
  <Folder id="location">
    <RESTQuery
      id="GetBeneficiaryLocations"
      query="/by_case/{{ url.searchParams.id }}"
      resourceName="2360789a-c012-4497-81b8-76de629803ab"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="CreateBeneficiaryLocation"
      _additionalScope={["location"]}
      body="{{ location }}"
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      notificationDuration={4.5}
      resourceName="2360789a-c012-4497-81b8-76de629803ab"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="UpdateBeneficiaryLocation"
      _additionalScope={["location", "locationId"]}
      body="{{ location }}"
      bodyType="raw"
      headers={
        '[{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
      }
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/{{ locationId }}"
      resourceName="2360789a-c012-4497-81b8-76de629803ab"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    />
    <Function
      id="locationsListTransformer"
      funcBody={include("../lib/locationsListTransformer.js", "string")}
    />
    <Function
      id="currentLocation"
      funcBody={include("../lib/currentLocation.js", "string")}
    />
    <State id="selectedLocation" />
    <State id="lastLocation" />
    <Function
      id="createUpdateLocationCDTTransformer"
      funcBody={include(
        "../lib/createUpdateLocationCDTTransformer.js",
        "string"
      )}
    />
    <JavascriptQuery
      id="createUpdateLocationCDTHandler"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/createUpdateLocationCDTHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="createUpdateLocationLTHandler"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/createUpdateLocationLTHandler.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="createUpdateLocationLTTransformer"
      funcBody={include(
        "../lib/createUpdateLocationLTTransformer.js",
        "string"
      )}
    />
  </Folder>
  <Folder id="top_section">
    <Function id="phases" funcBody={include("../lib/phases.js", "string")} />
    <State id="isOutpatientExpanded" value="false" />
    <State id="isMedicalRepatriationExpanded" value="false" />
    <Function
      id="outpatientSteps"
      funcBody={include("../lib/outpatientSteps.js", "string")}
    />
    <Function
      id="medicalRepatriationSteps"
      funcBody={include("../lib/medicalRepatriationSteps.js", "string")}
    />
    <State id="isFlagsVisible" value="false" />
    <State id="isAlertsVisible" value="false" />
    <State
      id="flags"
      value={
        '{{\n  {\n    "fraudSuspicious": false,\n    "sensitiveCase": false,\n    "vip": false,\n    "internationalSanctioncs": false,\n    "countryCategory": false,\n    "eec": false,\n    "eligibleAlert": false,\n    "crisis": false,\n    "collaboration": false,\n    "massNonMass": false,\n    "eligibleSafety": false,\n    "possibleRecovery": false,\n  }\n}}'
      }
    />
    <JavascriptQuery
      id="handleFlagClick"
      _additionalScope={["flagName"]}
      notificationDuration={4.5}
      query={include("../lib/handleFlagClick.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="flagAlertButtonsState"
      funcBody={include("../lib/flagAlertButtonsState.js", "string")}
    />
  </Folder>
  <RESTQuery
    id="UpdateCase"
    body="{{ caseInfoToUpdateTransformer.value }}"
    bodyType="raw"
    headers={
      '[{"key":"Content-Type","value":"application/json"},{"key":"","value":""}]'
    }
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="/cases/{{ url.searchParams.id }}"
    resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    successMessage="Case {{ GetCase.data.key }} successfully updated!"
    type="PATCH"
  />
  <Function id="caseId" funcBody={include("../lib/caseId.js", "string")} />
  <Include src="./Comments_Drawer.rsx" />
  <Include src="./CreateService_ModalFrame.rsx" />
  <Include src="./modalTaskCreating.rsx" />
  <Include src="./modalTaskDelete.rsx" />
  <Include src="./modalTaskUpdating.rsx" />
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0 {{ widthLimiter.value }}px 16px {{ widthLimiter.value }}px"
    sticky={null}
    style={{ ordered: [{ canvas: "tokens/f5b822b2" }] }}
    type="main"
  >
    <Container
      id="container22"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0px 8px 4px 8px"
      padding="15px 24px"
      showBody={true}
      style={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="containerTitle29"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="a4cb3" viewKey="View 1">
        <IconText
          id="iconText4"
          icon="bold/interface-arrows-left"
          margin="4px 8px 0 8px"
          style={{
            ordered: [
              { fontSize: "tokens/9d79a723" },
              { fontWeight: "tokens/9d79a723" },
              { fontFamily: "tokens/9d79a723" },
              { color: "rgba(0, 0, 0, 0.65)" },
              { iconColor: "rgba(0, 0, 0, 0.65)" },
            ],
          }}
          text="Back to all cases"
        />
        <Container
          id="stack22"
          _align="center"
          _gap="0px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          heightType="fixed"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <View id="c7eb7" viewKey="View 1">
            <Include src="./stack16.rsx" />
            <ButtonGroup2
              id="CaseToggleFlagsAlertsButton"
              alignment="right"
              heightType="auto"
              overflowPosition={2}
              overlayMinWidth="150"
            >
              <ButtonGroup2-Button
                id="1c810"
                backgroundColor="{{ flagAlertButtonsState.value.flagsButton.bg }}"
                borderColor="{{ flagAlertButtonsState.value.flagsButton.border }}"
                icon="bold/travel-map-flag-alternate"
                iconPosition="left"
                labelColor="{{ flagAlertButtonsState.value.flagsButton.text }}"
                styleVariant="custom"
                text="{{ flagAlertButtonsState.value.flagsButton.label }}"
              >
                <Event
                  event="click"
                  method="setValue"
                  params={{
                    ordered: [{ value: "{{ !isFlagsVisible.value }}" }],
                  }}
                  pluginId="isFlagsVisible"
                  type="state"
                  waitMs="0"
                  waitType="debounce"
                />
              </ButtonGroup2-Button>
              <ButtonGroup2-Button
                id="85981"
                backgroundColor="{{ flagAlertButtonsState.value.alertsButton.bg }}"
                borderColor="{{ flagAlertButtonsState.value.alertsButton.border }}"
                icon="bold/interface-alert-warning-diamond"
                iconPosition="left"
                labelColor="{{ flagAlertButtonsState.value.alertsButton.text }}"
                styleVariant="custom"
                text="{{ flagAlertButtonsState.value.alertsButton.label }}"
              >
                <Event
                  event="click"
                  method="setValue"
                  params={{
                    ordered: [{ value: "{{ !isAlertsVisible.value }}" }],
                  }}
                  pluginId="isAlertsVisible"
                  type="state"
                  waitMs="0"
                  waitType="debounce"
                />
              </ButtonGroup2-Button>
              <ButtonGroup2-Button
                id="70b52"
                backgroundColor="#ffffff"
                borderColor={'{{ theme._tokensById["6d3a94b8"] }}'}
                icon="bold/mail-send-envelope-alternate"
                iconPosition="left"
                labelColor={'{{ theme._tokensById["6d3a94b8"] }}'}
                styleVariant="custom"
                text="Send email"
              >
                <Event
                  event="click"
                  method="trigger"
                  params={{
                    ordered: [
                      {
                        options: {
                          ordered: [
                            {
                              additionalScope: { ordered: [{ type: "email" }] },
                            },
                          ],
                        },
                      },
                    ],
                  }}
                  pluginId="openSendInteractionModal"
                  type="datasource"
                  waitMs="0"
                  waitType="debounce"
                />
              </ButtonGroup2-Button>
              <ButtonGroup2-Button
                id="d67ca"
                icon="bold/mail-chat-bubble-typing-oval-alternate"
                iconPosition="left"
                styleVariant="outline"
                text="Send SMS"
              >
                <Event
                  event="click"
                  method="trigger"
                  params={{
                    ordered: [
                      {
                        options: {
                          ordered: [
                            { additionalScope: { ordered: [{ type: "sms" }] } },
                          ],
                        },
                      },
                    ],
                  }}
                  pluginId="openSendInteractionModal"
                  type="datasource"
                  waitMs="0"
                  waitType="debounce"
                />
              </ButtonGroup2-Button>
              <ButtonGroup2-Button
                id="b03cb"
                icon="bold/interface-add-1"
                iconPosition="left"
                styleVariant="outline"
                text="Create task"
              >
                <Event
                  event="click"
                  method="show"
                  params={{ ordered: [] }}
                  pluginId="modalTaskCreating"
                  type="widget"
                  waitMs="0"
                  waitType="debounce"
                />
              </ButtonGroup2-Button>
            </ButtonGroup2>
          </View>
        </Container>
        <Text
          id="text26"
          margin="0px 8px 4px 8px"
          style={{
            ordered: [
              { fontSize: "h5Font" },
              { fontWeight: "h5Font" },
              { fontFamily: "h5Font" },
              { color: "tokens/b03b43ea" },
            ],
          }}
          value="Case {{ GetCase.data.key }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="stack17"
      _direction="vertical"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Container
          id="stack18"
          _align="center"
          _gap="0px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="0"
          showBody={true}
        >
          <View id="c7eb7" viewKey="View 1">
            <Container
              id="stack19"
              _gap="0px"
              _justify="space-between"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="12px"
              showBody={true}
              style={{
                ordered: [
                  { background: "tokens/4b800714" },
                  { borderRadius: "0px" },
                ],
              }}
              styleContext={{
                ordered: [{ surfacePrimary: "tokens/4b800714" }],
              }}
            >
              <View id="c7eb7" viewKey="View 1">
                <Button
                  id="button1"
                  heightType="auto"
                  iconBefore={
                    '{{ isOutpatientExpanded.value ? "/icon:bold/interface-minus-1" : "/icon:bold/interface-add-circle-alternate"  }}'
                  }
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "h5Font" },
                      { fontWeight: "h5Font" },
                      { fontFamily: "h5Font" },
                    ],
                  }}
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [{ value: "{{ !isOutpatientExpanded.value}}" }],
                    }}
                    pluginId="isOutpatientExpanded"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Button>
                <Container
                  id="container23"
                  _direction="vertical"
                  _gap="0px"
                  _type="stack"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                >
                  <Header>
                    <Text
                      id="containerTitle30"
                      value="#### Container title"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="037f0" viewKey="View 1">
                    <Text
                      id="text32"
                      margin="{{ isOutpatientExpanded.value ? 4 : 16}}px 8px 4px 8px"
                      style={{
                        ordered: [
                          { fontSize: "tokens/8dcf8d02" },
                          { fontWeight: "tokens/8dcf8d02" },
                          { fontFamily: "tokens/8dcf8d02" },
                        ],
                      }}
                      value="Outpatient"
                      verticalAlign="center"
                    />
                    <Spacer
                      id="spacer11"
                      hidden="{{ !isOutpatientExpanded.value }}"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="container24"
              _align="center"
              _gap="0px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              heightType="fill"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{
                ordered: [
                  { borderRadius: "0px" },
                  { background: "tokens/75918dbd" },
                ],
              }}
            >
              <Header>
                <Text
                  id="containerTitle31"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="037f0" viewKey="View 1">
                <Steps
                  id="steps1"
                  captionByIndex={
                    '{{ isOutpatientExpanded.value ? item.name : " " }}'
                  }
                  data="{{ outpatientSteps.value }}"
                  horizontalAlign="center"
                  labels={'{{  " " }}'}
                  margin="{{ isOutpatientExpanded.value ? 0 : 12 }}px 0 0 0"
                  style={{ ordered: [] }}
                  value="{{ self.data.find((s) => s.isCurrent)?.name }}"
                  values="{{ item.name }}"
                >
                  <Option id="02962" value="Step 1" />
                  <Option id="d78c8" value="Step 2" />
                  <Option id="c30ae" value="Step 3" />
                </Steps>
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="stack20"
          _align="center"
          _gap="0px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="0"
          showBody={true}
        >
          <View id="c7eb7" viewKey="View 1">
            <Container
              id="stack21"
              _gap="0px"
              _justify="space-between"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="12px"
              showBody={true}
              style={{
                ordered: [
                  { background: "tokens/4b800714" },
                  { borderRadius: "0px" },
                ],
              }}
              styleContext={{
                ordered: [{ surfacePrimary: "tokens/4b800714" }],
              }}
            >
              <View id="c7eb7" viewKey="View 1">
                <Button
                  id="button2"
                  heightType="auto"
                  iconBefore={
                    '{{ isMedicalRepatriationExpanded.value ? "/icon:bold/interface-minus-1" : "/icon:bold/interface-add-circle-alternate"  }}'
                  }
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "h5Font" },
                      { fontWeight: "h5Font" },
                      { fontFamily: "h5Font" },
                    ],
                  }}
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [
                        { value: "{{ !isMedicalRepatriationExpanded.value}}" },
                      ],
                    }}
                    pluginId="isMedicalRepatriationExpanded"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Button>
                <Container
                  id="container25"
                  _direction="vertical"
                  _gap="0px"
                  _type="stack"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                >
                  <Header>
                    <Text
                      id="containerTitle32"
                      value="#### Container title"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="037f0" viewKey="View 1">
                    <Spacer
                      id="spacer12"
                      hidden="{{ !isMedicalRepatriationExpanded.value }}"
                    />
                    <Text
                      id="text33"
                      margin="{{ isMedicalRepatriationExpanded.value ? 4 : 16}}px 0 4px 8px"
                      style={{
                        ordered: [
                          { fontSize: "tokens/8dcf8d02" },
                          { fontWeight: "tokens/8dcf8d02" },
                          { fontFamily: "tokens/8dcf8d02" },
                        ],
                      }}
                      value="Medical repatriation"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="container26"
              _align="center"
              _gap="0px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              heightType="fill"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{
                ordered: [
                  { borderRadius: "0px" },
                  { background: "tokens/75918dbd" },
                ],
              }}
            >
              <Header>
                <Text
                  id="containerTitle33"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="037f0" viewKey="View 1">
                <Steps
                  id="steps2"
                  captionByIndex={
                    '{{ isMedicalRepatriationExpanded.value ? item.name : " " }}'
                  }
                  data="{{ medicalRepatriationSteps.value }}"
                  horizontalAlign="center"
                  labels={'{{ " " }}'}
                  margin="{{ isMedicalRepatriationExpanded.value ? 0 : 12 }}px 0 0 0"
                  style={{
                    ordered: [
                      { caption: "tokens/93c1643f" },
                      { activeBackground: "" },
                    ],
                  }}
                  value="{{ self.data.find((s) => s.isCurrent)?.name }}"
                  values="{{ item.name }}"
                >
                  <Option id="02962" value="Step 1" />
                  <Option id="d78c8" value="Step 2" />
                  <Option id="c30ae" value="Step 3" />
                </Steps>
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="Case_alert_container"
          _direction="vertical"
          _gap="0px"
          _justify="space-between"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden=""
          margin="0"
          overflowType="hidden"
          padding="0"
          showBody="{{ isAlertsVisible.value }}"
          showBorder={false}
          style={{ ordered: [{ background: "tokens/261b4576" }] }}
        >
          <Header>
            <Text
              id="containerTitle34"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="340e9" viewKey="View 1">
            <Alert
              id="Case_alert_container_administrative_eligibility"
              description="Administrative Eligibility Pending"
              hidden="{{ eligibleValues.value.includes(eligibilityTransformer.value) }}"
              title=""
              type="warning"
            />
            <Alert
              id="Case_alert_container_incomplete"
              description="Case Incomplete"
              hidden="{{ !showAlert.value }}"
              title=""
              type="warning"
            />
          </View>
        </Container>
        <Include src="./stack25.rsx" />
      </View>
    </Container>
    <Include src="./CaseDetails_TabbedContainer.rsx" />
  </Frame>
</Screen>
