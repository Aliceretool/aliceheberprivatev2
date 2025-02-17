<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="5acca"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="5acca"
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
        id="3ac7f"
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
        id="ead2f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="age"
        label="Age"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d34c8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="department"
        label="Department"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7f3e6"
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
        id="89b03"
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
        id="e32a0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="newcolumn"
        label="Newcolumn"
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
    <Button id="button2" text="Button">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Module
      id="MarModule1"
      input1="TESTING"
      margin="0"
      name="26 mar module"
      pageUuid="f1c63daa-eb56-11ee-86d1-cb7e047b58cb"
    />
    <ListView id="listViewLegacy1" marginType="normal">
      <Button id="button1" marginType="normal" text="Button" />
    </ListView>
    <TableLegacy
      id="tableLegacy1"
      _compatibilityMode={false}
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <ToggleButton
      id="toggleButton1"
      horizontalAlign="stretch"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="right"
      marginType="normal"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
    />
  </Frame>
</App>
