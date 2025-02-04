<Screen
  id="CallBack"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <RESTQuery
    id="FetchCallBackInteractions"
    body={'[{"key":"isCallMeBack","value":"true"}]'}
    bodyType="json"
    cookies="[]"
    headers="[]"
    isHidden={false}
    isMultiplayerEdited={false}
    query="fetch/interactions"
    resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    showSuccessToaster={false}
    type="POST"
  />
  <RESTQuery
    id="UpdateCallMeBackInteraction"
    _additionalScope={["date", "urgent"]}
    body={
      '{\n  "isCallMeBack": true,\n  "urgent": {{ urgent }} ,\n  "date": {{ date }}\n}'
    }
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="interaction/call/{{ CallBack_Table.selectedRow.id }}"
    resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="PUT"
  />
  <JavascriptQuery
    id="updateCallMeBackInteraction"
    _additionalScope={["date", "urgent"]}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/updateCallMeBackInteraction.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Function
    id="callBackInteractionsTn"
    funcBody={include("../lib/callBackInteractionsTn.js", "string")}
  />
  <JavascriptQuery
    id="closeUpdateCallMeBackModal"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/closeUpdateCallMeBackModal.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Include src="./modalFrame2.rsx" />
  <Include src="./UpdateCallMeBack_Modal.rsx" />
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="16px {{ widthLimiter.value }}px"
    sticky={null}
    style={{ ordered: [{ canvas: "tokens/f5b822b2" }] }}
    type="main"
  >
    <Breadcrumbs
      id="AllCases_Breadcrumbs4"
      itemMode="static"
      margin="0 0 4px 0"
      style={{ ordered: [{ currentPageText: "tokens/37f43149" }] }}
      value="{{ retoolContext.currentPage }}"
    >
      <Option
        id="794c4"
        disabled="true"
        itemType="custom"
        label="All call backs"
      />
      <Option id="7492a" itemType="custom" label="Call backs list" />
    </Breadcrumbs>
    <Table
      id="CallBack_Table"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ callBackInteractionsTn.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      heightType="auto"
      overflowType="pagination"
      primaryKeyColumnId="00fc1"
      rowHeight="medium"
      showHeader={true}
      style={{ alternateRowBackground: "rgb(252, 252, 252)" }}
      templatePageSize="10"
      toolbarPosition="bottom"
    >
      <Column
        id="00fc1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="8dd40"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="requesterData"
        label="Requester"
        placeholder="Enter value"
        position="center"
        referenceId="requester"
        size={100}
        valueOverride="{{ item.firstName }} {{ item.lastName }}"
      />
      <Column
        id="ad73b"
        alignment="left"
        format="string"
        formatOptions={{
          icon: '{{ item === "success" ? "/icon:bold/interface-validation-check-circle" : "/icon:bold/interface-alert-warning-circle" }}',
        }}
        groupAggregationMode="none"
        key="phoneNumber"
        label="Phone number"
        placeholder="Enter value"
        position="center"
        size={119}
        statusIndicatorOptions={{
          manualData: [
            {
              ordered: [
                { showWhen: "true" },
                { label: "" },
                { icon: "bold/phone-telephone-ringing" },
                { color: "" },
              ],
            },
          ],
        }}
        valueOverride="{{ item }}"
      />
      <Column
        id="38a65"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="createdBy"
        label="Created by"
        placeholder="Enter value"
        position="center"
        referenceId="createdBy"
        size={159}
      />
      <Column
        id="5fd36"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="datetime"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          manageTimeZone: false,
          valueTimeZone: "00:00",
          displayTimeZone: "local",
        }}
        groupAggregationMode="sum"
        key="date"
        label="Due date"
        placeholder="Enter value"
        position="center"
        size={157}
        textColor="{{ moment() > moment(item) ? 'red' : '' }}"
      />
      <Column
        id="b64a8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="urgent"
        label="Urgent"
        placeholder="Enter value"
        position="center"
        size={59}
        valueOverride={'{{ item ? "YES" : "NO" }}'}
      />
      <Column
        id="9f38e"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="businessPartner"
        label="Business partner"
        placeholder="Enter value"
        position="center"
        size={136}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3d5fe"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="case"
        label="Context"
        placeholder="Enter value"
        position="center"
        referenceId="context"
        size={100}
        valueOverride="{{ item.context }}"
      />
      <Column
        id="d5ea7"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="datetime"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={164}
      />
      <Column
        id="c7a7b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="case"
        label="Patient location"
        placeholder="Enter value"
        position="center"
        referenceId="patientLocation"
        size={100}
        valueOverride="{{ item.beneficiaryLocation }}"
      />
      <Action id="5e312" icon="bold/interface-edit-pencil" label="Edit">
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
    </Table>
    <Container
      id="AllCallbacksPaginationContainer"
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "tokens/261b4576" }] }}
    >
      <View id="89817" viewKey="View 1">
        <Pagination
          id="AllCallbacksTable_Pagination"
          max="5"
          style={{ ordered: [] }}
          value={1}
        />
      </View>
    </Container>
  </Frame>
</Screen>
