<ExpandedRow id="dm_cohort_tableExpandedRow">
  <Table
    id="dm_coach_nested2"
    autoColumnWidth={true}
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ nested_query.data.filter(row => row.Cohort === currentSourceRow.Cohort) }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    dynamicRowHeights={true}
    emptyMessage="No rows found"
    enableSaveActions={true}
    headerTextWrap={true}
    heightType="auto"
    primaryKeyColumnId="c7416"
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
      editableOptions={{ spellCheck: false }}
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      hidden="false"
      key="Company"
      label="Company"
      placeholder="Select option"
      position="center"
      size={68.828125}
      summaryAggregationMode="none"
    />
    <Column
      id="c7416"
      alignment="left"
      cellTooltip="{{ item }}"
      cellTooltipMode="custom"
      editable="false"
      editableOptions={{ spellCheck: false }}
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      hidden="true"
      key="Cohort"
      label="Cohort"
      placeholder="Select option"
      position="center"
      size={129.96875}
      summaryAggregationMode="none"
    />
    <Column
      id="dbe82"
      alignment="left"
      editableOptions={{ spellCheck: false }}
      format="string"
      groupAggregationMode="none"
      key="Coach"
      label="Coach"
      placeholder="Enter value"
      position="center"
      size={115.796875}
      summaryAggregationMode="none"
    />
    <Column
      id="5f293"
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
      id="a68cf"
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
      id="cdaba"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="Very High Risk"
      label="Very High Risk"
      placeholder="Enter value"
      position="center"
      size={92.828125}
      summaryAggregationMode="none"
    />
    <Column
      id="5f844"
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
      id="ba943"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="EOL Submitted (Retainable)"
      label="EOL Submitted (Retainable)"
      placeholder="Enter value"
      position="center"
      size={163.375}
      summaryAggregationMode="none"
    />
    <Column
      id="15099"
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
      id="2d643"
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
      id="c2090"
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
      id="0f5d1"
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
      id="7f311"
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
      id="aea53"
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
