<GlobalFunctions>
  <Folder id="modals">
    <State id="isAttachToCaseModalOpen" value="false" />
    <State id="attachDetach" value="attach" />
    <JavascriptQuery
      id="hideAttachToCaseModal"
      notificationDuration={4.5}
      query={include("./lib/hideAttachToCaseModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="isCloseInteractionModalOpened" value="false" />
    <JavascriptQuery
      id="hideCloseInteractionModal"
      notificationDuration={4.5}
      query={include("./lib/hideCloseInteractionModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="handleAttachDetachClick"
      _additionalScope={["mode"]}
      notificationDuration={4.5}
      query={include("./lib/handleAttachDetachClick.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="isFullScreenModalOpen" value="false" />
  </Folder>
  <Folder id="statuses">
    <RESTQuery
      id="UpdateInteractionStatus"
      _additionalScope={["statusName"]}
      body={'[{"key":"name","value":"{{ statusName }}"}]'}
      bodyType="json"
      cookies="[]"
      isMultiplayerEdited={false}
      query="interaction/status/{{ selectedInteraction.value.id }}"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    />
    <RESTQuery
      id="FetchInteractionStatuses"
      query="interaction/statuses"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
    />
    <Function
      id="statusAvailability"
      funcBody={include("./lib/statusAvailability.js", "string")}
    />
    <JavascriptQuery
      id="handleStatusChange"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/handleStatusChange.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="interactionStatuses"
      funcBody={include("./lib/interactionStatuses.js", "string")}
    />
  </Folder>
  <Folder id="contacts">
    <RESTQuery
      id="FetchContactRoles"
      query="contact/roles"
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
    />
    <RESTQuery
      id="LinkContactToInteraction"
      _additionalScope={["contactId"]}
      body={'[{"key":"contact_id","value":"{{ contactId }}"}]'}
      bodyType="json"
      isMultiplayerEdited={false}
      query="interaction/contact/{{ selectedInteraction.value.id }}"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    />
    <JavascriptQuery
      id="handleContactChange"
      notificationDuration={4.5}
      query={include("./lib/handleContactChange.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Function
    id="INTERACTION_TYPE"
    funcBody={include("./lib/INTERACTION_TYPE.js", "string")}
  />
  <Function
    id="interactionTypes"
    funcBody={include("./lib/interactionTypes.js", "string")}
  />
  <Function id="filters" funcBody={include("./lib/filters.js", "string")} />
  <Function
    id="interactions"
    funcBody={include("./lib/interactions.js", "string")}
  />
  <State id="selectedInteraction" value="{{ interactions.value[0] }}" />
  <Function
    id="hasAttachments"
    funcBody={include("./lib/hasAttachments.js", "string")}
  />
  <GlobalWidgetQuery
    id="refetchInteractions"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
  <Function
    id="selectedInteractionContacts"
    funcBody={include("./lib/selectedInteractionContacts.js", "string")}
  />
</GlobalFunctions>
