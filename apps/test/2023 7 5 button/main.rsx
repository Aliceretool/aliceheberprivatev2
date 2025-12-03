<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" padding="8px 12px" paddingType="normal" type="main">
    <Button id="button1" marginType="normal" text="global notification">
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  {
                    title:
                      "New Version available. Please 1) Save your app and 2) Refresh this page",
                  },
                  { duration: "20" },
                  { description: "" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      marginType="normal"
      value="{{ retoolContext.configVars.secret}}"
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query3.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="24894"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="24894"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c1684"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="useremail"
        label="Useremail"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5c6ef"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="starred"
        label="Starred"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="09618"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="flag"
        label="Flag"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e63df"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="image"
        label="Image"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6e225"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="mapped_options"
        label="Mapped options"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="60e23"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="fromwfloop"
        label="Fromwfloop"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="26c25"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e2479"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="very_very_very_very_very_very_very_long_header"
        label="Very very very very very very very long header"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ff2d8"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="boolean"
        label="Boolean"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0f3e4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="new_column"
        label="New column"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="15d18"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        key="tags"
        label="Tags"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</App>
