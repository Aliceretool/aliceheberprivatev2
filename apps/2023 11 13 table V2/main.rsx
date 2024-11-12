<App>
  <Include src="./functions.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ bulkUpdate.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="9a065"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="9a065"
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
        id="881b2"
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
        id="8b766"
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
        id="7a545"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="department"
        label="Department"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ec01e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Column 5"
        placeholder="Enter value"
        position="center"
        referenceId="column5"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a3d59"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Column 6"
        placeholder="Enter value"
        position="center"
        referenceId="column6"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="72d65"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Column 7"
        placeholder="Enter value"
        position="center"
        referenceId="column7"
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
          pluginId="table2"
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
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Button id="button2" marginType="normal" text="Button">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getAll"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text3"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Button id="button1" marginType="normal" text="Button">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addDepartment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      marginType="normal"
      value="Flicker bug when table and row height is auto/dynamic"
      verticalAlign="center"
    />
    <Table
      id="table3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAllAliceUserWHERE.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "a1eb8", direction: "asc" } }]}
      enableSaveActions={true}
      heightType="auto"
      primaryKeyColumnId="8575f"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="8575f"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={28}
        summaryAggregationMode="none"
      />
      <Column
        id="a1eb8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={372.671875}
        summaryAggregationMode="none"
      />
      <Column
        id="6c715"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="age"
        label="Age"
        placeholder="Enter value"
        position="center"
        size={39.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="09bf9"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="department"
        label="Department"
        placeholder="Select options"
        position="center"
        size={85.640625}
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
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <TextInput
      id="textInput1"
      label="Filter"
      marginType="normal"
      placeholder="Enter value"
    />
    <Button id="button3" marginType="normal" text="Button" />
    <Button id="button4" marginType="normal" text="Button" />
    <TextInput
      id="textInput2"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
    />
    <Button id="button5" marginType="normal" text="Button" />
    <Container
      id="container1"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="1eb3a" viewKey="View 1" />
    </Container>
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="1d8c4" value="Option 1" />
      <Option id="05e9e" value="Option 2" />
      <Option id="b21b0" value="Option 3" />
    </Select>
    <NumberInput
      id="numberInput1"
      currency="USD"
      inputValue={0}
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Text
      id="text2"
      marginType="normal"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Button id="button6" marginType="normal" text="Button" />
    <Form
      id="form1"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          marginType="normal"
          value="#### Form title"
          verticalAlign="center"
        />
      </Header>
      <Footer>
        <Button
          id="formButton1"
          marginType="normal"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
    </Form>
    <Container
      id="container2"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="1eb3a" viewKey="View 1" />
    </Container>
    <Select
      id="select2"
      emptyMessage="No options"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="1d8c4" value="Option 1" />
      <Option id="05e9e" value="Option 2" />
      <Option id="b21b0" value="Option 3" />
    </Select>
    <Modal id="modal1" buttonText="Open Modal" />
    <PlotlyChart
      id="chart1"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "sales" },
                {
                  datasource:
                    '{{formatDataAsObject([{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}])[\'sales\']}}',
                },
                { chartType: null },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "spend" },
                {
                  datasource:
                    '{{formatDataAsObject([{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}])[\'spend\']}}',
                },
                { chartType: null },
                { aggregationType: "sum" },
                { color: "#3170F9" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="array"
      datasourceInputMode="javascript"
      datasourceJS={
        '[{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}]'
      }
      skipDatasourceUpdate={true}
      xAxis={
        '{{formatDataAsObject([{\n  "region" : "East",\n  "sales": 3700,\n  "spend": 4000\n}, {\n  "region" : "West",\n  "sales": 6000,\n  "spend": 3895\n}, {\n  "region" : "South",\n  "sales": 4500,\n  "spend": 5500\n}, {\n  "region" : "Central",\n  "sales": 5230,\n  "spend": 4200\n}]).region}}'
      }
      xAxisDropdown="region"
    />
    <KeyValue
      id="keyValue1"
      data="{
  id: 0,
  firstName: 'Chic',
  lastName: 'Footitt',
  email: 'chic.footitt@yahoo.com',
  website: 'https://chic.footitt.com',
  text: 'Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam mattis ultricies metus. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris',
  role: 'Viewer',
  teams: ['Workplace', 'Infrastructure'],
  enabled: true,
  createdAt: '2023-01-16T23:40:20.385Z',
}"
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    />
    <Button id="button7" marginType="normal" text="Button" />
    <TextInput
      id="textInput3"
      labelPosition="top"
      marginType="normal"
      placeholder="change something"
    />
    <NumberInput
      id="numberInput2"
      currency="USD"
      inputValue={0}
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
  </Frame>
</App>
