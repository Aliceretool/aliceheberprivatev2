<ExpandedRow id="AllCases_TableExpandedRow">
  <Table
    id="CaseTasks_Table"
    autoColumnWidth={true}
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ currentSourceRow.tasks }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    heightType="auto"
    margin="0"
    primaryKeyColumnId="f9b4a"
    rowBackgroundColor=""
    rowHeight="medium"
    rowSelection="none"
    showHeader={true}
    style={{
      headerText: "tokens/b03b43ea",
      alternateRowBackground: "rgba(173, 198, 255, 0.3)",
    }}
    toolbarPosition="bottom"
  >
    <Column
      id="f9b4a"
      alignment="left"
      editable="false"
      format="string"
      groupAggregationMode="none"
      hidden="false"
      key="id"
      label="Task ID"
      placeholder="Enter value"
      position="center"
      size={58.3125}
      summaryAggregationMode="none"
    />
    <Column
      id="2917a"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color:
          '{{ item.toLowerCase() === "high" ? theme.tokens.colorsBaseRed1 : item.toLowerCase() === "medium" ? theme.tokens.colorsBaseOrange1 : theme.tokens.colorsBaseBlue1 }}',
      }}
      groupAggregationMode="none"
      key="priority"
      label="Priority"
      placeholder="Select option"
      position="center"
      size={78.0625}
      summaryAggregationMode="none"
    />
    <Column
      id="c1bbc"
      alignment="left"
      format="datetime"
      groupAggregationMode="none"
      key="dueDate"
      label="Due date"
      placeholder="Enter value"
      position="center"
      size={144.859375}
      summaryAggregationMode="none"
    />
    <Column
      id="ecec0"
      alignment="left"
      format="string"
      formatOptions={{ map: { automaticColors: true } }}
      groupAggregationMode="none"
      key="assignee"
      label="Assignee"
      placeholder="Enter value"
      position="center"
      size={86.484375}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="ad8d2"
      alignment="left"
      format="string"
      formatOptions={{ map: { automaticColors: true } }}
      groupAggregationMode="none"
      key="team"
      label="Team"
      placeholder="Enter value"
      position="center"
      size={60.265625}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="48260"
      alignment="left"
      format="multilineString"
      groupAggregationMode="none"
      key="patientLocation"
      label="Patient location"
      placeholder="Enter value"
      position="center"
      size={106.703125}
      summaryAggregationMode="none"
      valueOverride="{{ item.country }}"
    />
    <Column
      id="2d099"
      alignment="left"
      format="string"
      formatOptions={{ map: { automaticColors: true } }}
      groupAggregationMode="none"
      key="comments"
      label="Comments"
      placeholder="Enter value"
      position="center"
      size={174.265625}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="d21dd"
      alignment="left"
      format="tag"
      formatOptions={{ map: { automaticColors: true } }}
      groupAggregationMode="none"
      hidden="true"
      key="taskType"
      label="Task type"
      placeholder="Select option"
      position="center"
      size={696}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="ce345"
      alignment="left"
      format="tag"
      formatOptions={{ map: { automaticColors: true } }}
      groupAggregationMode="none"
      hidden="true"
      key="flags"
      label="Flags"
      placeholder="Select option"
      position="center"
      size={694}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
    <Column
      id="65563"
      alignment="left"
      format="tag"
      formatOptions={{ map: { automaticColors: true } }}
      groupAggregationMode="none"
      hidden="true"
      key="patientName"
      label="Patient name"
      placeholder="Select option"
      position="center"
      size={100}
      summaryAggregationMode="none"
      valueOverride="{{ _.startCase(item) }}"
    />
  </Table>
</ExpandedRow>
