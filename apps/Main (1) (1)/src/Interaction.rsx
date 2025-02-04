<Screen
  id="Interaction"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Page page1"
  urlSlug=""
>
  <Folder id="interaction">
    <RESTQuery
      id="GetInteractionsWithCalls"
      body={
        '[{"key":"type","value":"Call"},{"key":"sender","value":"{{ incomingPhoneNumber.value }}"}]'
      }
      bodyType="json"
      headers="[]"
      isHidden={false}
      query="fetch/interactions"
      queryDisabled="{{ !incomingPhoneNumber.value }}"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
      showSuccessToaster={false}
      type="POST"
    />
    <State
      id="selectedInteractionCall"
      value="{{ interactionCalls.value[0] }}"
    />
    <Function
      id="interactionCalls"
      funcBody={include("../lib/interactionCalls.js", "string")}
    />
    <RESTQuery
      id="CallMeBackInteractionCall"
      _additionalScope={["urgent", "date"]}
      body={
        '{\n  "isCallMeBack": true,\n  "urgent": {{  urgent }},\n  "date": {{ date }},\n  "createdBy": {{ `${current_user.firstName} ${current_user.lastName}` }}\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      query="interaction/call/{{ selectedInteractionCall.value.id }}"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    />
    <JavascriptQuery
      id="callMeBackInteraction"
      _additionalScope={["urgent", "date"]}
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/callMeBackInteraction.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="callMeBackDate"
      funcBody={include("../lib/callMeBackDate.js", "string")}
    />
    <JavascriptQuery
      id="closeModal"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/closeModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="callerInformation">
    <Function
      id="caseNatures"
      funcBody={include("../lib/caseNatures.js", "string")}
    />
    <Function
      id="contactMotives"
      funcBody={include("../lib/contactMotives.js", "string")}
    />
    <Function
      id="contactRoles"
      funcBody={include("../lib/contactRoles.js", "string")}
    />
    <JavascriptQuery
      id="handleSameAsRequester"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/handleSameAsRequester.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="handleRequesterRole"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/handleRequesterRole.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Function id="cases" funcBody={include("../lib/cases.js", "string")} />
  <Function
    id="contracts"
    funcBody={include("../lib/contracts.js", "string")}
  />
  <State id="selectedProduct" value="{}" />
  <RESTQuery
    id="CreateCase"
    _additionalScope={[
      "hasGDPRConsent",
      "context",
      "beneficiary",
      "interactionId",
      "interactionCallId",
      "requester",
      "contactMotiveId",
      "caseNatureId",
      "policy",
      "createdBy",
      "beneficiary_location_id",
      "requester_role_id",
    ]}
    body={
      '{\n  "interaction_id": {{ interactionId }},\n  "interactionCall_id": {{ interactionCallId }},\n  "case_nature_id": {{ caseNatureId }},\n  "contact_motive_id": {{ contactMotiveId }},\n  "hasGDPRConsent": {{ hasGDPRConsent }},\n  "beneficiary_location_id": {{ beneficiary_location_id }},\n  "context": {{ context }},\n  "beneficiary": {{ beneficiary }},\n  "requester": {{ requester }},\n  "policy": {{ policy }},\n "created_by": {{ createdBy }}\n}'
    }
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="cases"
    resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="POST"
  />
  <JavascriptQuery
    id="createCase_InteractionPage"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/createCase_InteractionPage.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State id="isCloseInteractionModalOpen" value="false" />
  <JavascriptQuery
    id="setCloseInteractionModalHidden"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/setCloseInteractionModalHidden.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State id="policyExtId" />
  <Include src="./CreateCallMeBack_Modal.rsx" />
  <Include src="./old.rsx" />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="16px {{ widthLimiter.value }}px"
    sticky={null}
    style={{ ordered: [{ canvas: "tokens/f5b822b2" }] }}
    type="main"
  >
    <Container
      id="InteractionHeader_Container"
      _align="center"
      _gap="0px"
      _justify="space-between"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0 0 16px 0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "tokens/261b4576" }] }}
    >
      <View id="fe9b0" viewKey="View 1">
        <Container
          id="stack10"
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
          style={{ ordered: [{ background: "tokens/261b4576" }] }}
        >
          <View id="fe9b0" viewKey="View 1">
            <Button id="CloseInteraction_Button" text="Close interaction">
              <Event
                event="click"
                method="setValue"
                params={{ ordered: [{ value: "true" }] }}
                pluginId="isCloseInteractionModalOpen"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="CallMeBack_Button"
              disabled="{{ selectedInteractionCall.value.isCallMeBack }}"
              style={{
                ordered: [
                  { border: "danger" },
                  { label: "danger" },
                  { hoverBackground: "rgba(220, 38, 38, 0.2)" },
                  { activeBackground: "rgba(220, 38, 38, 0.5)" },
                ],
              }}
              styleVariant="outline"
              text="Call me back"
            >
              <Event
                event="click"
                method="show"
                params={{ ordered: [] }}
                pluginId="CreateCallMeBack_Modal"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
          </View>
        </Container>
        <Breadcrumbs
          id="breadcrumbs1"
          itemMode="static"
          value="{{ retoolContext.appUuid }}"
        >
          <Option id="0b2e2" itemType="custom" label="All interactions">
            <Event
              event="click"
              method="openPage"
              params={{ ordered: [{ pageName: "AllInteractions" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Option>
          <Option
            id="227f3"
            itemType="custom"
            label="New incoming call interaction"
          />
        </Breadcrumbs>
      </View>
    </Container>
    <Button id="button3" text="Button" />
    <Container
      id="InteractionMain_Container"
      footerPadding="4px 12px"
      headerPadding="12px {{ widthLimiter.value }}px 12px 12px"
      margin="0"
      overflowType="hidden"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
    >
      <View id="92d1c" viewKey="View 1">
        <Container
          id="InteractionBody_Container"
          _gap="12px"
          _justify="space-between"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          loading="{{ GetInteractionsWithCalls.isFetching }}"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
        >
          <View id="fe9b0" viewKey="View 1">
            <Container
              id="stack4"
              _direction="vertical"
              _gap="10px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="0"
              hidden="{{ !selectedInteractionCall.value }}"
              margin="0"
              padding="1px"
              showBody={true}
              showBorder={false}
              showHeaderBorder={false}
              style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
            >
              <View id="fe9b0" viewKey="View 1">
                <Tabs
                  id="tabs2"
                  itemMode="static"
                  navigateContainer={true}
                  style={{ ordered: [] }}
                  styleVariant="lineBottom"
                  targetContainerId="tabbedContainer2"
                  value="{{ self.values[0] }}"
                >
                  <Option id="ab3d7" value="Tab 1" />
                  <Option id="7634e" value="Tab 2" />
                  <Option id="87d00" value="Tab 3" />
                </Tabs>
                <Container
                  id="CallerInformation_Container"
                  footerPadding="4px 12px"
                  headerPadding="12px 12px 0px 12px"
                  margin="0"
                  padding="0 12px 12px 12px"
                  showBody={true}
                  showHeader={true}
                  showHeaderBorder={false}
                  style={{ ordered: [] }}
                >
                  <Header>
                    <Text
                      id="CallerInformation_Title"
                      style={{ ordered: [{ fontSize: "20px" }] }}
                      value="Caller's Information"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="ab0fb" viewKey="View 1">
                    <Module
                      id="caseCreationModule3"
                      margin="0"
                      name="Case creation module"
                      onSubmit="closeForceEligibilityModal"
                      pageUuid="82f651e7-2266-4939-8249-010cb9122b1c"
                      policyExtId="{{ policyExtId.value }}"
                      selectedInteractionCall="{{ selectedInteractionCall.value }}"
                      trigger="{{ createCase.data }}"
                    />
                  </View>
                </Container>
                <Container
                  id="tabbedContainer2"
                  currentViewKey="{{ self.viewKeys[0] }}"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="1px"
                  showBody={true}
                  showBorder={false}
                  style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
                >
                  <View
                    id="fa19c"
                    label="Related result"
                    viewKey="relatedResult"
                  >
                    <Container
                      id="collapsibleContainer2"
                      footerPadding="4px 12px"
                      headerPadding="12px 12px 6px 12px"
                      margin="0 0 20px 0"
                      padding="0 20px"
                      showBody={true}
                      showHeader={true}
                      showHeaderBorder={false}
                    >
                      <Header>
                        <Container
                          id="stack7"
                          _align="center"
                          _gap="0px"
                          _type="stack"
                          footerPadding="4px 12px"
                          headerPadding="4px 12px"
                          margin="0"
                          padding="0"
                          showBody={true}
                          showBorder={false}
                        >
                          <View id="fe9b0" viewKey="View 1">
                            <Text
                              id="text13"
                              style={{ ordered: [{ fontSize: "20px" }] }}
                              value="Cases"
                              verticalAlign="center"
                            />
                            <ToggleButton
                              id="collapsibleToggle2"
                              horizontalAlign="right"
                              iconForFalse="bold/interface-arrows-button-down"
                              iconForTrue="bold/interface-arrows-button-up"
                              iconPosition="replace"
                              margin="0"
                              style={{
                                ordered: [{ border: "rgba(207, 207, 207, 0)" }],
                              }}
                              styleVariant="outline"
                              text="{{ self.value ? 'Hide' : 'Show' }}"
                              value="{{ collapsibleContainer2.showBody }}"
                            >
                              <Event
                                event="change"
                                method="setShowBody"
                                params={{
                                  ordered: [{ showBody: "{{ self.value }}" }],
                                }}
                                pluginId="collapsibleContainer2"
                                type="widget"
                                waitMs="0"
                                waitType="debounce"
                              />
                            </ToggleButton>
                          </View>
                        </Container>
                      </Header>
                      <View id="ab0fb" viewKey="View 1">
                        <Table
                          id="Cases_Table"
                          actionsOverflowPosition={1}
                          cellSelection="none"
                          clearChangesetOnSave={true}
                          data="{{ cases.value }}"
                          defaultSelectedRow={{
                            mode: "index",
                            indexType: "display",
                            index: 0,
                          }}
                          dynamicRowHeights={true}
                          emptyMessage="No rows found"
                          enableSaveActions={true}
                          heightType="auto"
                          margin="0"
                          rowSelection="none"
                          showBorder={true}
                          showHeader={true}
                          style={{ rowSeparator: "rgba(0, 0, 0, 1)" }}
                          toolbarPosition="bottom"
                        >
                          <Column
                            id="62949"
                            alignment="right"
                            editableOptions={{ showStepper: true }}
                            format="decimal"
                            formatOptions={{
                              showSeparators: true,
                              notation: "standard",
                            }}
                            groupAggregationMode="sum"
                            hidden="true"
                            key="id"
                            label="ID"
                            placeholder="Enter value"
                            position="center"
                            size={27.796875}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="723a3"
                            alignment="left"
                            format="string"
                            groupAggregationMode="none"
                            key="key"
                            label="Case ID"
                            placeholder="Enter value"
                            position="center"
                            size={135.640625}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="ad37b"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="type"
                            label="Type"
                            placeholder="Select option"
                            position="center"
                            size={100.359375}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="e570f"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="priority"
                            label="Priority"
                            placeholder="Select option"
                            position="center"
                            size={58.125}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="77436"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="phase"
                            label="Phase"
                            placeholder="Select option"
                            position="center"
                            size={71.578125}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="450d1"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="owner"
                            label="Owner"
                            placeholder="Select option"
                            position="center"
                            size={95.6875}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="e198e"
                            alignment="left"
                            format="date"
                            groupAggregationMode="none"
                            key="creationDate"
                            label="Creation date"
                            placeholder="Enter value"
                            position="center"
                            size={93.203125}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="75beb"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="openedBy"
                            label="Opened by"
                            placeholder="Select option"
                            position="center"
                            size={90.265625}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="12879"
                            alignment="left"
                            format="date"
                            groupAggregationMode="none"
                            key="lastTaskPerformed"
                            label="Last task performed"
                            placeholder="Enter value"
                            position="center"
                            size={130.5625}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="73a19"
                            alignment="left"
                            format="multilineString"
                            groupAggregationMode="none"
                            key="patient"
                            label="Patient"
                            placeholder="Enter value"
                            position="center"
                            size={158.03125}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="fbca3"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="beneficiaryLocation"
                            label="Beneficiary location"
                            placeholder="Select option"
                            position="center"
                            size={127.890625}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="d8aed"
                            alignment="left"
                            format="multilineString"
                            groupAggregationMode="none"
                            key="countryOfOccurence"
                            label="Country of occurence"
                            placeholder="Enter value"
                            position="center"
                            size={210.40625}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="b9fe8"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="product"
                            label="Product"
                            placeholder="Select option"
                            position="center"
                            size={122.796875}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="06bb2"
                            alignment="left"
                            format="tag"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="businessPartner"
                            label="Business partner"
                            placeholder="Select option"
                            position="center"
                            size={125.125}
                            summaryAggregationMode="none"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Action
                            id="287d4"
                            icon="bold/interface-link"
                            label="Link interaction"
                          />
                        </Table>
                        <Module
                          id="CloseInteraction_Module"
                          heightType="fixed"
                          interactionId="{{ selectedInteractionCall.value.interaction.id }}"
                          isOpen="{{ isCloseInteractionModalOpen.value}}"
                          margin="0"
                          name="Close interaction module"
                          onClose="GetInteractionCalls"
                          onCloseInteraction="GetInteractionCalls"
                          onModalHide="setCloseInteractionModalHidden"
                          onModuleHide="setCloseInteractionModalHidden"
                          pageUuid="1d35b5cf-3547-49ef-a36e-322c9be6fb41"
                        />
                      </View>
                    </Container>
                    <Container
                      id="collapsibleContainer3"
                      footerPadding="4px 12px"
                      headerPadding="12px 12px 6px 12px"
                      margin="0"
                      padding="0 20px"
                      showBody={true}
                      showHeader={true}
                      showHeaderBorder={false}
                    >
                      <Header>
                        <Container
                          id="stack8"
                          _align="center"
                          _gap="0px"
                          _type="stack"
                          footerPadding="4px 12px"
                          headerPadding="4px 12px"
                          margin="0"
                          padding="0"
                          showBody={true}
                          showBorder={false}
                        >
                          <View id="fe9b0" viewKey="View 1">
                            <Text
                              id="text14"
                              style={{ ordered: [{ fontSize: "20px" }] }}
                              value="Contracts"
                              verticalAlign="center"
                            />
                            <ToggleButton
                              id="collapsibleToggle3"
                              horizontalAlign="right"
                              iconForFalse="bold/interface-arrows-button-down"
                              iconForTrue="bold/interface-arrows-button-up"
                              iconPosition="replace"
                              margin="0"
                              style={{
                                ordered: [{ border: "rgba(207, 207, 207, 0)" }],
                              }}
                              styleVariant="outline"
                              text="{{ self.value ? 'Hide' : 'Show' }}"
                              value="{{ collapsibleContainer3.showBody }}"
                            >
                              <Event
                                event="change"
                                method="setShowBody"
                                params={{
                                  ordered: [{ showBody: "{{ self.value }}" }],
                                }}
                                pluginId="collapsibleContainer3"
                                type="widget"
                                waitMs="0"
                                waitType="debounce"
                              />
                            </ToggleButton>
                          </View>
                        </Container>
                      </Header>
                      <View id="b7392" viewKey="View 1">
                        <Table
                          id="Products_Table"
                          actionsOverflowPosition={1}
                          cellSelection="none"
                          clearChangesetOnSave={true}
                          data="{{ contracts.value }}"
                          defaultSelectedRow={{
                            mode: "index",
                            indexType: "display",
                            index: 0,
                          }}
                          dynamicRowHeights={true}
                          emptyMessage="No rows found"
                          enableSaveActions={true}
                          heightType="auto"
                          margin="0"
                          primaryKeyColumnId="4d0e9"
                          rowSelection="none"
                          showBorder={true}
                          showHeader={true}
                          style={{ rowSeparator: "rgba(0, 0, 0, 1)" }}
                          toolbarPosition="bottom"
                        >
                          <Column
                            id="a349d"
                            alignment="left"
                            format="link"
                            formatOptions={{
                              showUnderline: "always",
                              underlineStyle: "solid",
                            }}
                            groupAggregationMode="none"
                            key="policyNumber"
                            label="Policy number"
                            placeholder="Select option"
                            position="center"
                            size={133.484375}
                            summaryAggregationMode="none"
                            textColor="{{ theme.primary }}"
                            valueOverride="{{ _.startCase(item) }}"
                          />
                          <Column
                            id="8d893"
                            alignment="left"
                            format="date"
                            groupAggregationMode="none"
                            key="validity"
                            label="Start date"
                            placeholder="Enter value"
                            position="center"
                            size={101.578125}
                            summaryAggregationMode="none"
                            valueOverride="{{ item.startDate }}"
                          />
                          <Column
                            id="9317a"
                            alignment="left"
                            format="date"
                            groupAggregationMode="none"
                            key="validity"
                            label="End date"
                            placeholder="Enter value"
                            position="center"
                            size={114.546875}
                            summaryAggregationMode="none"
                            valueOverride="{{ item.endDate }}"
                          />
                          <Column
                            id="78cdc"
                            alignment="left"
                            format="multilineString"
                            groupAggregationMode="none"
                            key="beneficiaryNames"
                            label="Beneficiaries"
                            placeholder="Enter value"
                            position="center"
                            size={110}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="fd73a"
                            alignment="left"
                            cellTooltipMode="overflow"
                            format="multilineString"
                            groupAggregationMode="none"
                            key="phoneNumbers"
                            label="Phone numbers"
                            placeholder="Enter value"
                            position="center"
                            size={122.546875}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="4d0e9"
                            alignment="left"
                            editable="false"
                            format="string"
                            groupAggregationMode="none"
                            hidden="true"
                            key="extId"
                            label="Ext ID"
                            placeholder="Enter value"
                            position="center"
                            size={145}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="2f21e"
                            alignment="left"
                            format="string"
                            groupAggregationMode="none"
                            key="productCode"
                            label="Product code"
                            placeholder="Enter value"
                            position="center"
                            size={100}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="239f9"
                            alignment="left"
                            cellTooltipMode="overflow"
                            format="tags"
                            formatOptions={{ automaticColors: true }}
                            groupAggregationMode="none"
                            key="package"
                            label="Package"
                            placeholder="Select options"
                            position="center"
                            size={100}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="54607"
                            alignment="left"
                            format="boolean"
                            groupAggregationMode="none"
                            key="restricted"
                            label="Restricted"
                            placeholder="Enter value"
                            position="center"
                            size={100}
                            summaryAggregationMode="none"
                          />
                          <Column
                            id="7e787"
                            alignment="left"
                            format="string"
                            groupAggregationMode="none"
                            key="description"
                            label="Description"
                            placeholder="Enter value"
                            position="center"
                            size={100}
                            summaryAggregationMode="none"
                          />
                          <Action
                            id="287d4"
                            icon="bold/interface-add-circle-alternate"
                            label="Create case"
                          >
                            <Event
                              event="clickAction"
                              method="setValue"
                              params={{
                                ordered: [
                                  { value: "{{ currentSourceRow.extId }}" },
                                ],
                              }}
                              pluginId="policyExtId"
                              type="state"
                              waitMs="0"
                              waitType="debounce"
                            />
                            <Event
                              event="clickAction"
                              method="trigger"
                              params={{ ordered: [] }}
                              pluginId="createCase"
                              type="datasource"
                              waitMs="0"
                              waitType="debounce"
                            />
                          </Action>
                        </Table>
                      </View>
                    </Container>
                  </View>
                  <View
                    id="7da6b"
                    disabled={false}
                    hidden={false}
                    iconPosition="left"
                    label="Manual search"
                    viewKey="manualSearch"
                  />
                </Container>
              </View>
            </Container>
            <Container
              id="IncomingCalls_Container"
              footerPadding="4px 12px"
              headerPadding="4px 12px 4px 0"
              heightType="fill"
              margin="0"
              overflowType="hidden"
              padding="0"
              showBody={true}
              showBorder={false}
              showHeader={true}
              showHeaderBorder={false}
              style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
            >
              <Header>
                <Text
                  id="listViewTitle1"
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "h5Font" },
                      { fontWeight: "h5Font" },
                      { fontFamily: "h5Font" },
                    ],
                  }}
                  value="Incoming calls"
                  verticalAlign="center"
                />
              </Header>
              <View id="203ed" viewKey="View 1">
                <ListViewBeta
                  id="IncomingCalls_List"
                  _primaryKeys="{{ item.id }}"
                  data="{{ interactionCalls.value }}"
                  heightType="auto"
                  itemWidth="200px"
                  margin="0"
                  numColumns={3}
                  padding="1px"
                >
                  <Include src="./IncomingCall_Card.rsx" />
                </ListViewBeta>
              </View>
            </Container>
          </View>
        </Container>
      </View>
    </Container>
  </Frame>
</Screen>
