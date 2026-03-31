<ExpandedRow id="dm_company_tableExpandedRow">
  <Table
    id="dm_coach_nested3"
    autoColumnWidth={true}
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ nested_query.data.filter(row => row.Company === currentSourceRow.Company) }}"
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
      id="c7416"
      alignment="left"
      cellTooltip="{{ item }}"
      cellTooltipMode="custom"
      editable={false}
      editableOptions={{ spellCheck: false }}
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      hidden="false"
      key="Cohort"
      label="Cohort"
      placeholder="Select option"
      position="center"
      size={138.390625}
      summaryAggregationMode="none"
    />
    <Column
      id="5ba54"
      alignment="left"
      cellTooltip="{{ item }}"
      cellTooltipMode="custom"
      editableOptions={{ spellCheck: false }}
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      hidden="true"
      key="Company"
      label="Company"
      placeholder="Select option"
      position="center"
      size={192.625}
      summaryAggregationMode="none"
    />
    <Column
      id="ab20b"
      alignment="left"
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="Coach"
      label="Coach"
      placeholder="Select option"
      position="center"
      size={131.796875}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="82fd4"
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
      id="25c6b"
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
      id="43e18"
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
      id="948ba"
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
      id="bb511"
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
      id="579c7"
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
      id="705de"
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
    />
    <Column
      id="aa1bf"
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
    />
    <Column
      id="db1c3"
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
      id="8a589"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="Avg LSAT Score"
      label="Avg LSAT Score"
      placeholder="Enter value"
      position="center"
      size={99.71875}
      summaryAggregationMode="none"
    />
    <Column
      id="b65ed"
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
