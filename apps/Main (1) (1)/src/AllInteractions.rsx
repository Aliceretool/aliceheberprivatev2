<Screen
  id="AllInteractions"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <RESTQuery
    id="FetchInteractions"
    body={
      '{\n  "type": {{ interactionsListModule3.outputFilter.type }},\n  "sender": {{ interactionsListModule3.outputFilter.sender }},\n  "receiver": {{ interactionsListModule3.outputFilter.receiver }},\n  "caseKey": {{ interactionsListModule3.outputFilter.caseNumber }},\n  "status_id": {{ interactionsListModule3.outputFilter.status }},\n  "incomingOutgoing": {{ interactionsListModule3.outputFilter.incomingOutgoing }},\n  "contactRole_id": {{ interactionsListModule3.outputFilter.senderRecipientType }},\n  "withAttachment": {{ interactionsListModule3.outputFilter.withAttachment }},\n  "isDraft": {{ interactionsListModule3.outputFilter.isDraft }},\n  "isHideCalls": {{ interactionsListModule3.outputFilter.isHideCalls }},\n  "isNotSent": {{ interactionsListModule3.outputFilter.isNotSent }},\n  "receivedStartDate": {{ interactionsListModule3.outputFilter.receivedStartDate }},\n  "receivedEndDate": {{ interactionsListModule3.outputFilter.receivedEndDate }}\n}'
    }
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="fetch/interactions/v2"
    queryThrottleTime="5000"
    resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    showSuccessToaster={false}
    type="POST"
  />
  <SqlTransformQuery
    id="DebounceFetchInteractions"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/DebounceFetchInteractions.sql", "string")}
    resourceName="SQL Transforms"
    watchedParams={["interactionsListModule3.outputFilter"]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="FetchInteractions"
      type="datasource"
      waitMs="1000"
      waitType="debounce"
    />
  </SqlTransformQuery>
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="16px {{ widthLimiter.value }}px"
    sticky={null}
    style={{ ordered: [{ canvas: "tokens/f5b822b2" }] }}
    type="main"
  >
    <Breadcrumbs
      id="AllCases_Breadcrumbs3"
      itemMode="static"
      margin="0 0 4px 0"
      style={{ ordered: [{ currentPageText: "tokens/37f43149" }] }}
      value="{{ retoolContext.currentPage }}"
    >
      <Option
        id="794c4"
        disabled="true"
        itemType="custom"
        label="All interactions"
      />
      <Option id="7492a" itemType="custom" label="Interactions list" />
    </Breadcrumbs>
    <Module
      id="interactionsListModule3"
      initialFilters=""
      inputInteractions="{{ FetchInteractions.data }}"
      isCaseNumberHidden=""
      margin="0"
      name="Interactions list module"
      pageUuid="fd7a36de-b8be-49b7-b536-1441ddbc0309"
      refetchInteractions="FetchInteractions"
    />
  </Frame>
</Screen>
