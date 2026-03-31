<Screen
  id="bulk_behind_on_OTJ_reminder_agent"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={9}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="7adf457d-5e23-43c9-9d4e-ee5185f2a19a"
>
  <SqlQueryUnified
    id="query7"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/query7.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    showFailureToaster={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <RESTQuery
    id="query2"
    _additionalScope={[]}
    body={
      '[{"key":"report_payload","value":"{{\\n  {\\n    timestamp: timestamp_val,\\n    total_messages: total_val,\\n    risk_summary: {\\n      High: high_val,\\n      Very_High: very_high_val\\n    },\\n    cohort_breakdown: cohort_counts\\n  }\\n}}"}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    headers={'[{"key":"","value":""}]'}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIRequestBody=""
    resourceName="8d6b2e87-34ac-42a7-b4ea-c51114559072"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer=""
    type="POST"
  />
  <SqlQueryUnified
    id="get_messages_for_learner"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/get_messages_for_learner.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    showFailureToaster={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="manual_write_message"
    actionType="INSERT"
    changeset={
      '[{"key":"learner_id","value":"{{ table2.selectedRow.id }}"},{"key":"sender","value":"{{ current_user.fullName }}"},{"key":"message_body","value":"{{ String(notesInputTextBox.value) }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="learner_messages"
  >
    <Event
      id="9976a917"
      event="success"
      method="trigger"
      params={{}}
      pluginId="get_messages_for_learner"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="bulk_write_message"
    actionType="INSERT"
    changeset={
      '[{"key":"sender","value":"{{ current_user.fullName }}"},{"key":"message_body","value":"{{ message_text }}"},{"key":"learner_id","value":"{{ learner_id }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="learner_messages"
  >
    <Event
      id="9976a917"
      event="success"
      method="trigger"
      params={{}}
      pluginId="get_messages_for_learner"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="execute_bulk_message"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/execute_bulk_message.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  >
    <Event
      id="563ecfb4"
      event="success"
      method="hide"
      params={{}}
      pluginId="modalFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <State id="isBulkSending" value="false" />
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text5"
      value="# OTJ Status Notifier Agent"
      verticalAlign="center"
    />
    <Divider id="divider4" />
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table2.selectedRow }}"
      padding="12px"
      requireValidation={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="title"
          value="#### Filter Learners to Contact by OTJ Status"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select1"
          data="{{ [...new Set(query7.data.otj)] }}"
          emptyMessage="No options"
          label="OTJ Status"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showClear={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        >
          <Event
            id="a4babda6"
            enabled=""
            event="change"
            method="setFilter"
            params={{
              map: {
                filter: {
                  id: "{{ self.otj }}",
                  columnId: "otj",
                  operator: "intersects",
                  value: "{{ self.value }}",
                },
              },
            }}
            pluginId="table2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="6bddd663"
            enabled="{{ !select1.value }}"
            event="change"
            method="clearFilter"
            params={{}}
            pluginId="table2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Send Bulk Message"
        />
      </Footer>
      <Event
        id="5106e77f"
        event="submit"
        method="show"
        params={{}}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Divider id="divider3" />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ formatDataAsArray(query7.data) }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableSaveActions={true}
      headerTextWrap={true}
      primaryKeyColumnId="476fa"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="ca9d9"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "outline",
          iconAfter: "",
          iconBefore: "bold/mail-chat-bubble-oval-alternate",
        }}
        groupAggregationMode="none"
        placeholder="Enter value"
        position="center"
        referenceId="ChatButton"
        size={127}
        summaryAggregationMode="none"
        valueOverride="Chat with {{ currentSourceRow.name }}"
      >
        <Event
          id="97d1194a"
          event="clickCell"
          method="show"
          pluginId="notesDrawerFrame"
          type="widget"
          waitMs={0}
          waitType="debounce"
        />
      </Column>
      <Column
        id="476fa"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={32}
        summaryAggregationMode="none"
      />
      <Column
        id="92097"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={111}
        summaryAggregationMode="none"
      />
      <Column
        id="82d57"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="none"
        key="risk_level"
        label="Risk level"
        placeholder="Select option"
        position="center"
        size={84}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f10e6"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="cohort"
        label="Cohort"
        placeholder="Enter value"
        position="center"
        size={165}
        summaryAggregationMode="none"
      />
      <Column
        id="d1bcd"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="company_name"
        label="Company name"
        placeholder="Enter value"
        position="center"
        size={103}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="dfa90"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="none"
        key="otj"
        label="OTJ"
        placeholder="Select option"
        position="center"
        size={93}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
    <Pagination id="pagination2" max={10} value={1}>
      <Event
        id="48163c23"
        event="change"
        method="trigger"
        params={{}}
        pluginId="my_learners_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Pagination>
  </Frame>
</Screen>
