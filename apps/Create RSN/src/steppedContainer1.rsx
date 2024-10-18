<Container
  id="steppedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Steps
      id="steps1"
      horizontalAlign="center"
      itemMode="static"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="6ba80" value="Step 1" />
      <Option id="2a020" value="Step 2" />
      <Option id="6eed4" value="Step 3" />
    </Steps>
  </Header>
  <View id="a65c4" viewKey="Preperation">
    <TextInput
      id="textInput_issue"
      formDataKey="issue"
      label="Summary"
      labelPosition="top"
      labelWidth="16"
      marginType="normal"
      required={true}
    />
    <TextInput
      id="textInput_Name"
      label="Name"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextArea
      id="textArea1"
      autoResize={true}
      label="Description"
      labelPosition="top"
      minLines="8"
      placeholder="Enter value"
    />
    <Select
      id="select_assignee"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      colorByIndex=""
      data="{{ getUser_filteredProjectRoleActive.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      formDataKey="project_typeID"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Assignee"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly=""
      required={true}
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ formatDataAsArray(getUser_all.data).filter(x => x.email == current_user.email)[0].userID }}"
      values="{{ item.userID }}"
    />
    <Date
      id="date_due"
      dateFormat="dd MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      firstDayOfWeek={1}
      formDataKey="due_date"
      iconBefore="bold/interface-calendar"
      label="Due Date"
      labelPosition="top"
      marginType="normal"
      minDate="today"
      required={true}
      value="{{moment().add(1,'M')}}"
    />
  </View>
  <View id="05d9a" viewKey="Method">
    <TextInput
      id="textInput_Method"
      label="Method"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_Test"
      label="Test"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <Select
      id="select_productName"
      automaticItemColors={true}
      data="{{ getProducts.data }}"
      emptyMessage="No options"
      fallbackTextByIndex="{{ item.ProductDisplayText }}"
      label="Product Name"
      labelPosition="top"
      labels="{{ item.ProductDisplayText }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <TextInput
      id="textInput1"
      label="Dilution"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="textInput2"
      label="SF"
      labelPosition="top"
      placeholder="Enter value"
    />
    <SegmentedControl
      id="segmentedControl1"
      itemMode="static"
      label="pH Meter ID & Cal Exp"
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="888f7" value="None" />
      <Option id="51926" value="Yes" />
      <Option id="71cc5" disabled={false} iconPosition="left" value="No" />
      <Event
        enabled={'{{ segmentedControl1.selectedItem.value ===  "Yes"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="textInput_pHMeterID"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{segmentedControl1.selectedItem.value === "Yes"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="calibrationDate"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{segmentedControl1.selectedItem.value !== "Yes"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="textInput_pHMeterID"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{segmentedControl1.selectedItem.value !== "Yes"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="calibrationDate"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SegmentedControl>
    <TextInput
      id="textInput_pHMeterID"
      hidden="true"
      label="pH Meter ID"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <Date
      id="calibrationDate"
      customValidation={
        '{{ self.value <= moment() ? "Must be a future date" : null}}'
      }
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      hidden="true"
      iconBefore="bold/interface-calendar"
      label="Calibration Expiry"
      labelPosition="top"
      minDate="today"
      value="{{ new Date() }}"
    />
    <SegmentedControl
      id="selectBalanceSlip"
      formDataKey="type_of_analysis_value"
      hidden="{{!selectProjectType.value}}"
      itemMode="static"
      label="Balance Slip"
      labelPosition="top"
      paddingType="spacious"
      required={true}
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="361c9" disabled={false} value="None" />
      <Option id="ee45c" disabled={false} value="Yes" />
      <Option id="71543" disabled={false} iconPosition={null} value="No" />
      <Event
        enabled={'{{selectBalanceSlip.selectedItem.value === "Yes"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="fileInput1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{selectBalanceSlip.selectedItem.value === "Yes"}}'}
        event="change"
        method="focus"
        params={{ ordered: [] }}
        pluginId="fileInput1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{selectBalanceSlip.selectedItem.value !== "Yes"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="fileInput1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SegmentedControl>
    <FileDropzone
      id="fileInput1"
      _isUpgraded={true}
      appendNewSelection={true}
      hidden="true"
      iconBefore="bold/programming-browser-search"
      label="Attachments"
      labelPosition="top"
      placeholder="Select or drag and drop"
      selectionType="multiple"
    />
    <SegmentedControl
      id="segmentedControl2"
      itemMode="static"
      label="Prep Expiry Date"
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="888f7" value="Yes" />
      <Option id="51926" value="No" />
      <Event
        enabled={'{{segmentedControl2.selectedItem.value === "Yes"}}'}
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="date_expiry"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{segmentedControl2.selectedItem.value !== "Yes"}}'}
        event="change"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="date_expiry"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{segmentedControl2.selectedItem.value === "No"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="textInput_reason"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{segmentedControl2.selectedItem.value !== "No"}}'}
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="textInput_reason"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SegmentedControl>
    <Date
      id="date_expiry"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      firstDayOfWeek={1}
      hidden=""
      iconBefore="bold/interface-calendar"
      label="Expiry"
      labelPosition="top"
      minDate="today"
      value="{{ new Date() }}"
    />
    <TextInput
      id="textInput_reason"
      hidden="true"
      label="Reason"
      labelPosition="top"
    />
    <TextInput
      id="textInput_LPR"
      label="LPR"
      labelPosition="top"
      placeholder="Enter value"
    />
  </View>
  <Footer>
    <Button
      id="prevButton1"
      disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton1"
      disabled="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
      heightType="auto"
      hidden="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      text="Next"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="formButton3"
      disabled="{{ !(textInput_issue.value && textArea1.value) }}"
      hidden="{{ steppedContainer1.currentViewIndex === 0 }}"
      marginType="normal"
      style={{ ordered: [{ background: "secondary" }] }}
      submitTargetId="form1"
      text="Create"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insIssue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
