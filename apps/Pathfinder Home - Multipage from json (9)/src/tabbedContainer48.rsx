<Container
  id="tabbedContainer48"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs42"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      targetContainerId="tabbedContainer48"
      value="{{ self.values[0] }}"
    >
      <Option id="afb6d" value="Tab 1" />
      <Option id="b39da" value="Tab 2" />
      <Option id="cac60" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="eb127" viewKey="Product 1">
    <Select
      id="select59"
      data="{{ getproducts.data }}"
      emptyMessage="No options"
      label="{{i18n.t('Product')}}"
      labelPosition="top"
      labels="{{i18n.t(item.ProductDisplayText) }} - {{i18n.t(item.CAS)}} - {{i18n.t( item.category_name) }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{  item.id}}"
    />
    <TextInput
      id="textInput70"
      label="Destination"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
    />
    <Date
      id="date5"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Required by"
      labelPosition="top"
      marginType="normal"
      value="{{ new Date() }}"
    />
    <Select
      id="select58"
      data="{{ getlogistics.data }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      label="Delivery Terms"
      labelPosition="top"
      labels="{{ item.delivery_display_text }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <NumberInput
      id="numberInput5"
      currency="USD"
      inputValue={0}
      label="Quantity"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Select
      id="select57"
      data="{{ getUnits.data }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      label="Unit"
      labelPosition="top"
      labels="{{ item.UnitDisplayText }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <TextArea
      id="textArea37"
      autoResize={true}
      label="Notes"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
    />
    <Multiselect
      id="multiselect20"
      emptyMessage="No options"
      itemMode="static"
      label="Documents"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      wrapTags={true}
    >
      <Option id="2e59d" value="Option 1" />
      <Option id="2d95b" value="Option 2" />
      <Option id="e66f0" value="Option 3" />
    </Multiselect>
    <Switch id="switch6" label="Documentation Requirements" marginType="normal">
      <Event
        event="false"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="multiselect20"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="true"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="multiselect20"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Multiselect
      id="multiselect21"
      captionByIndex="{{ item.company_email }}"
      data="{{ getmanufacturers.data }}"
      disabled=""
      emptyMessage="No options"
      label="Manufacturers"
      labels="{{ item.company_name }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.id }}"
      wrapTags={true}
    />
    <Switch id="switch7" label="Approved manufacturers" marginType="normal">
      <Event
        event="false"
        method="setDisabled"
        params={{ ordered: [{ disabled: true }] }}
        pluginId="multiselect21"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="true"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="multiselect21"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <FileDropzone
      id="fileDropzone8"
      _isUpgraded={true}
      appendNewSelection={true}
      iconBefore="bold/programming-browser-search"
      label=""
      labelPosition="top"
      marginType="normal"
      placeholder="Select or drag and drop"
      selectionType="multiple"
    />
    <Button id="button145" marginType="normal" text="Add Product" />
  </View>
  <View id="5f1df" viewKey="Product 2" />
  <View id="e4271" viewKey="+" />
</Container>
