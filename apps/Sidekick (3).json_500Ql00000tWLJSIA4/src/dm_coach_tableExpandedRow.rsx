<ExpandedRow id="dm_coach_tableExpandedRow">
  <Table
    id="dm_coach_nested"
    autoColumnWidth={true}
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ nested_query.data.filter(row => row['Coach Name'] === currentSourceRow['Coach Name']) }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    dynamicRowHeights={true}
    emptyMessage="No rows found"
    enableSaveActions={true}
    headerTextWrap={true}
    heightType="auto"
    rowHeight="small"
    showBorder={true}
    showHeader={true}
    toolbarPosition="bottom"
  >
    <Column
      id="5ba54"
      alignment="left"
      cellTooltip="{{ item }}"
      cellTooltipMode="custom"
      editable={false}
      editableOptions={{ spellCheck: false }}
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="Company"
      label="Company"
      placeholder="Select option"
      position="center"
      size={356.40625}
      summaryAggregationMode="none"
    />
    <Column
      id="c7416"
      alignment="left"
      cellTooltip="{{ item }}"
      cellTooltipMode="custom"
      editableOptions={{ spellCheck: false }}
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="Cohort"
      label="Cohort"
      placeholder="Select option"
      position="center"
      size={198.359375}
      summaryAggregationMode="none"
    />
    <Column
      id="53fc9"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="On Programme"
      label="On Programme"
      placeholder="Enter value"
      position="center"
      size={99.109375}
      summaryAggregationMode="none"
    />
    <Column
      id="57f30"
      alignment="left"
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      hidden="true"
      key="Coach"
      label="Coach"
      placeholder="Select option"
      position="center"
      size={131.796875}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="a1728"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="On BIL"
      label="On BIL"
      placeholder="Enter value"
      position="center"
      size={51.8125}
      summaryAggregationMode="none"
    />
    <Column
      id="c368a"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="Very High Risk"
      label="Very High Risk Learners"
      placeholder="Enter value"
      position="center"
      size={142.46875}
      summaryAggregationMode="none"
    />
    <Column
      id="3ea40"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="Retainable Learners"
      label="Retainable Learners"
      placeholder="Enter value"
      position="center"
      size={123.15625}
      summaryAggregationMode="none"
    />
    <Column
      id="ac281"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="EOL Submitted (Retainable)"
      label="EOL Submitted"
      placeholder="Enter value"
      position="center"
      size={97.453125}
      summaryAggregationMode="none"
    />
    <Column
      id="6fb8f"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="Learners w/ 0 EOL"
      label="Learners w/ 0 EOL"
      placeholder="Enter value"
      position="center"
      size={114.625}
      summaryAggregationMode="none"
    />
    <Column
      id="48bab"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="percent"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="average"
      key="EOL Submission Rate %"
      label="EOL Submission Rate"
      placeholder="Enter value"
      position="center"
      size={130.515625}
      summaryAggregationMode="none"
      valueOverride="{{ item.toFixed(2) }}"
    />
    <Column
      id="1e5ee"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="percent"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="average"
      key="Delivery Attendance %"
      label="Delivery Attendance"
      placeholder="Enter value"
      position="center"
      size={124.375}
      summaryAggregationMode="none"
      valueOverride="{{ item.toFixed(2) }}"
    />
    <Column
      id="4b560"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="PR Coach Completion %"
      label="PR Coach Completion"
      placeholder="Enter value"
      position="center"
      size={135.3125}
      summaryAggregationMode="none"
    />
    <Column
      id="9ed74"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="Avg LSAT Score"
      label="Current LSAT Score"
      placeholder="Enter value"
      position="center"
      size={121.078125}
      summaryAggregationMode="none"
    />
    <Column
      id="26713"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="LSAT Responses"
      label="LSAT Responses"
      placeholder="Enter value"
      position="center"
      size={104.265625}
      summaryAggregationMode="none"
    />
  </Table>
</ExpandedRow>
