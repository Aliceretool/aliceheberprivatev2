<Container
  id="tabbedContainer47"
  _gap="0px"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs40"
      data="{{ multiselect16.value }}"
      labels="{{ multiselect16.selectedItems[i].ProductDisplayText }}"
      targetContainerId="tabbedContainer47"
      value="{{ self.values[0] }}"
      values="{{ item }}"
    />
    <SegmentedControl
      id="select16"
      itemMode="static"
      label="Status"
      labelPosition="top"
      paddingType="spacious"
      required={true}
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d8744" value="Under Evaluation" />
      <Option id="f5b47" value="PREIODICAL RE-QUALIFICATION" />
    </SegmentedControl>
  </Header>
  <View id="ca614" viewKey="View 1">
    <TextInput
      id="textInput45"
      label="International Non-proprietary Name (INN)"
      labelPosition="top"
      placeholder="Enter value"
      required={true}
    />
    <TextInput
      id="textInput46"
      label="Proprietary Name"
      labelPosition="top"
      placeholder="Enter value"
      required={true}
    />
    <Select
      id="select15"
      allowCustomValue={true}
      automaticItemColors={true}
      data="{{ getCRF.data }}"
      emptyMessage="No options"
      label="CRF No."
      labelPosition="top"
      labels="{{ item.issue_index }} - {{ item.status_value }} - {{ item.issue }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="d8744" value="Option 1" />
      <Option id="f5b47" value="Option 2" />
      <Option id="9db84" value="Option 3" />
    </Select>
    <TextInput
      id="textInput47"
      label="Supplier Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextArea
      id="textArea32"
      autoResize={true}
      label="Supplier Address"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <TextArea
      id="textArea33"
      autoResize={true}
      label="Manufacturer Address"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
    <TextInput
      id="textInput48"
      label="Manufacturer Name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Include src="./collapsibleContainer38.rsx" />
  </View>
  <View id="493ae" viewKey="View 2" />
  <View id="79dab" viewKey="View 3" />
</Container>
