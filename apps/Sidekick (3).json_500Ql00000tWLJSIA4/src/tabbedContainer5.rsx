<Container
  id="tabbedContainer5"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="text522"
      heightType="fixed"
      horizontalAlign="center"
      value="Group by"
      verticalAlign="center"
    />
    <Tabs
      id="tabs24"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer5"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Tab 1" />
      <Option id="00031" value="Tab 2" />
      <Option id="00032" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="00030" viewKey="Coach">
    <Table
      id="dm_coach_table"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ coach_metrics_table_query.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      headerTextWrap={true}
      primaryKeyColumnId="fc366"
      rowHeight="small"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./dm_coach_tableExpandedRow.rsx" />
      <Column
        id="fc366"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Coach"
        label="Coach"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="fc194"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="On Programme"
        label="On Programme Learners"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="3239e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="On BIL"
        label="On BIL"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="5b999"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Very High Risk"
        label="Very High Risk Learners"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="1e3a1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Retainable Learners"
        label="Retainable Learners"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="c9d5d"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="EOL Submitted (Retainable)"
        label="EOL Submitted"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="bec9a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Learners w/ 0 EOL"
        label="Learners w/ 0 EOL"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="37686"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="EOL Submission Rate %"
        label="EOL Submission Rate"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="c29aa"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="Delivery Attendance %"
        label="Delivery Attendance"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="dc3ac"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="PR Coach Completion %"
        label="PR Coach Completion"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="28664"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Avg LSAT Score"
        label="Current LSAT Score"
        placeholder="Enter value"
        position="center"
        summaryAggregationMode="none"
      />
      <Column
        id="f01e8"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="LSAT Responses"
        label="LSAT Responses"
        placeholder="Enter value"
        position="center"
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
          id="42dcaf09"
          event="clickToolbar"
          method="exportData"
          pluginId="dm_coach_table"
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
          id="c7c581ad"
          event="clickToolbar"
          method="refresh"
          pluginId="dm_coach_table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="00032" viewKey="Cohort">
    <Table
      id="dm_cohort_table"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ cohort_metrics_table_query.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      headerTextWrap={true}
      primaryKeyColumnId="190d9"
      rowHeight="small"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./dm_cohort_tableExpandedRow.rsx" />
      <Column
        id="190d9"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Cohort"
        label="Cohort"
        placeholder="Enter value"
        position="center"
        size={182.359375}
        summaryAggregationMode="none"
      />
      <Column
        id="d2b83"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="On Programme"
        label="On Programme"
        placeholder="Enter value"
        position="center"
        size={98.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="a2235"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="On BIL"
        label="On BIL"
        placeholder="Enter value"
        position="center"
        size={51.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="9f41f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Very High Risk"
        label="Very High Risk"
        placeholder="Enter value"
        position="center"
        size={92}
        summaryAggregationMode="none"
      />
      <Column
        id="055af"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Retainable Learners"
        label="Retainable Learners"
        placeholder="Enter value"
        position="center"
        size={122.078125}
        summaryAggregationMode="none"
      />
      <Column
        id="c4603"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="EOL Submitted (Retainable)"
        label="EOL Submitted (Retainable)"
        placeholder="Enter value"
        position="center"
        size={161.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="5fb06"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Learners w/ 0 EOL"
        label="Learners w/ 0 EOL"
        placeholder="Enter value"
        position="center"
        size={113.71875}
        summaryAggregationMode="none"
      />
      <Column
        id="a71f9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="EOL Submission Rate %"
        label="EOL Submission Rate"
        placeholder="Enter value"
        position="center"
        size={129.515625}
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="34951"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="Delivery Attendance %"
        label="Delivery Attendance"
        placeholder="Enter value"
        position="center"
        size={123.203125}
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="b8588"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="PR Coach Completion %"
        label="PR Coach Completion"
        placeholder="Enter value"
        position="center"
        size={134.453125}
        summaryAggregationMode="none"
      />
      <Column
        id="36a4e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Avg LSAT Score"
        label="Current LSAT Score"
        placeholder="Enter value"
        position="center"
        size={120.09375}
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="86694"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="LSAT Responses"
        label="LSAT Responses"
        placeholder="Enter value"
        position="center"
        size={103.40625}
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
          id="42dcaf09"
          event="clickToolbar"
          method="exportData"
          pluginId="dm_cohort_table"
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
          id="c7c581ad"
          event="clickToolbar"
          method="refresh"
          pluginId="dm_cohort_table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="00031" viewKey="Company">
    <Table
      id="dm_company_table"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ company_metrics_table_query.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      headerTextWrap={true}
      primaryKeyColumnId="4b23c"
      rowHeight="small"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./dm_company_tableExpandedRow.rsx" />
      <Column
        id="4b23c"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Company"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={340.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="df043"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="On Programme"
        label="On Programme"
        placeholder="Enter value"
        position="center"
        size={98.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="5b8ea"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="On BIL"
        label="On BIL"
        placeholder="Enter value"
        position="center"
        size={51.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="12ee8"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Very High Risk"
        label="Very High Risk"
        placeholder="Enter value"
        position="center"
        size={92}
        summaryAggregationMode="none"
      />
      <Column
        id="a4772"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Retainable Learners"
        label="Retainable Learners"
        placeholder="Enter value"
        position="center"
        size={122.078125}
        summaryAggregationMode="none"
      />
      <Column
        id="1debc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="EOL Submitted (Retainable)"
        label="EOL Submitted (Retainable)"
        placeholder="Enter value"
        position="center"
        size={161.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="4f87c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Learners w/ 0 EOL"
        label="Learners w/ 0 EOL"
        placeholder="Enter value"
        position="center"
        size={113.71875}
        summaryAggregationMode="none"
      />
      <Column
        id="d2176"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="EOL Submission Rate %"
        label="EOL Submission Rate"
        placeholder="Enter value"
        position="center"
        size={129.515625}
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="e820b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        key="Delivery Attendance %"
        label="Delivery Attendance"
        placeholder="Enter value"
        position="center"
        size={123.203125}
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="3ee0b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="PR Coach Completion %"
        label="PR Coach Completion"
        placeholder="Enter value"
        position="center"
        size={134.453125}
        summaryAggregationMode="none"
      />
      <Column
        id="beeca"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Avg LSAT Score"
        label="Current LSAT Score"
        placeholder="Enter value"
        position="center"
        size={120.09375}
        summaryAggregationMode="none"
        valueOverride="{{ item.toFixed(2) }}"
      />
      <Column
        id="577f7"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="LSAT Responses"
        label="LSAT Responses"
        placeholder="Enter value"
        position="center"
        size={103.40625}
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
          id="42dcaf09"
          event="clickToolbar"
          method="exportData"
          pluginId="dm_company_table"
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
          id="c7c581ad"
          event="clickToolbar"
          method="refresh"
          pluginId="dm_company_table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
