<Modal id="modal1" buttonText="Open Modal">
  <Alert
    id="alert3"
    description="Query ran successfully https://www.google.com/
"
  />
  <Button id="button3" text="Button" />
  <Table
    id="table3"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ query1.data }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    primaryKeyColumnId="56d7c"
    showBorder={true}
    showFooter={true}
    showHeader={true}
    toolbarPosition="bottom"
  >
    <Column
      id="56d7c"
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
      id="a1edc"
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
      id="16a13"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="quantity"
      label="Quantity"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="8aeae"
      alignment="right"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="unit_price_cents"
      label="Unit price cents"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="aec32"
      alignment="left"
      format="datetime"
      groupAggregationMode="none"
      key="created_at"
      label="Created at"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="52f6c"
      alignment="left"
      format="datetime"
      groupAggregationMode="none"
      key="updated_at"
      label="Updated at"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="fd043"
      alignment="left"
      format="link"
      formatOptions={{ showUnderline: "hover" }}
      groupAggregationMode="none"
      key="image_url"
      label="Image URL"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="6ea39"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="part_number"
      label="Part number"
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
        pluginId="table3"
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
        pluginId="table3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToolbarButton>
  </Table>
</Modal>
