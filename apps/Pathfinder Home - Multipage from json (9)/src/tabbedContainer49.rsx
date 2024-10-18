<Container
  id="tabbedContainer49"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs43"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer49"
      value="{{ self.values[0] }}"
    >
      <Option id="6b50e" value="Tab 1" />
      <Option id="92426" value="Tab 2" />
      <Option id="2829a" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="e0618" viewKey="Products">
    <TextInput
      id="textInput73"
      formDataKey="ProductDisplayText"
      label="Product Name"
      labelPosition="top"
      labelWidth="30"
      placeholder="Enter value"
      required={true}
      style={{ ordered: [] }}
    />
    <TextArea
      id="textArea38"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines="4"
      placeholder="Enter value"
    />
    <TextInput
      id="textInput74"
      formDataKey="CAS"
      label="CAS No./Ref No."
      labelPosition="top"
      labelWrap={true}
      placeholder="Enter value"
      required={true}
    />
    <Select
      id="select61"
      data="{{ getCategories.data }}"
      emptyMessage="No options"
      formDataKey="category_name"
      label="Category"
      labelPosition="top"
      labels="{{ item.category_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values="{{ item.category_id }}"
    />
    <Multiselect
      id="multiselect22"
      emptyMessage="No options"
      formDataKey="Theraputics"
      itemMode="static"
      label="Theraputics"
      labelPosition="top"
      labels={null}
      overlayMaxHeight={375}
      placeholder="Select options"
      required={true}
      showSelectionIndicator={true}
      values={null}
      wrapTags={true}
    >
      <Option id="e86b7" value="Option 1" />
      <Option id="91ac0" value="Option 2" />
      <Option id="57b8b" value="Option 3" />
    </Multiselect>
    <NumberInput
      id="numberInput9"
      currency="EUR"
      format="currency"
      inputValue={0}
      label="Price / Unit"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      textAlign="right"
      value={0}
    />
    <Select
      id="select62"
      emptyMessage="No options"
      label="Unit"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    />
    <Switch
      id="switch8"
      formDataKey="isActive"
      label="Enabled"
      required={true}
    />
    <Switch
      id="switch9"
      formDataKey="isProduct"
      hideLabel={false}
      label="Type"
    />
  </View>
  <View id="13301" viewKey="Services">
    <TextInput
      id="textInput75"
      label="Service Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextArea
      id="textArea39"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines="4"
      placeholder="Enter value"
    />
    <Table
      id="table39"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data=""
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="e8bb4"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="e8bb4"
        alignment="right"
        format="decimal"
        groupAggregationMode="countDistinct"
        key="id"
        label="ID"
        position="center"
        size={45}
        summaryAggregationMode="none"
      />
      <Column
        id="0a3be"
        alignment="left"
        caption="{{ currentSourceRow.email }}"
        editable="true"
        editableOptions={{ object: {} }}
        format="avatar"
        groupAggregationMode="none"
        key="email"
        label="Role"
        position="center"
        referenceId="name"
        size={250}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.firstName }} {{ currentSourceRow.lastName }}"
      />
      <Column
        id="f1257"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={72}
        summaryAggregationMode="none"
      />
      <Column
        id="d7b4a"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Enabled"
        position="center"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="12d4e"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="date"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        position="center"
        size={96}
        summaryAggregationMode="none"
      />
      <Column
        id="685a9"
        alignment="left"
        cellTooltipMode="overflow"
        editable="true"
        editableOptions={{ object: {} }}
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="teams"
        label="Teams"
        placeholder="Select options"
        position="center"
        size={260}
        summaryAggregationMode="none"
      />
      <Column
        id="02fe0"
        alignment="left"
        format="link"
        groupAggregationMode="none"
        key="website"
        label="Website"
        position="center"
        size={200}
        summaryAggregationMode="none"
      />
      <Column
        id="32a00"
        alignment="left"
        cellTooltipMode="overflow"
        editable="true"
        editableOptions={{ object: {} }}
        format="multilineString"
        groupAggregationMode="none"
        key="text"
        label="Bio"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e1585"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Column 9"
        placeholder="Enter value"
        position="center"
        referenceId="column9"
        size={100}
        summaryAggregationMode="none"
      />
      <Action id="84d77" icon="bold/interface-edit-pencil" label="Action 1" />
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
          pluginId="table39"
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
          pluginId="table39"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insProductService"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
