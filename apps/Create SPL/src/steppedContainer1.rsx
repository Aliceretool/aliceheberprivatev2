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
      id="textInput_Dose"
      label="Dose"
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
      id="textInput_Code"
      label="Code"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_Type"
      label="Type"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_QTYRecieved"
      label="Qty Received"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_EBN"
      label="External Batch No."
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_IBN"
      label="Internal Batch No."
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_GRN"
      label="Goods Receipt Note"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_Testing"
      label="Testing Required"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_stb_protocol"
      label="Stability Protocol"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_Reference_Retention"
      label="Reference/Retention"
      labelPosition="top"
      marginType="normal"
      showClear={true}
    />
    <TextInput
      id="textInput_stb_conditions"
      label="Stability Conditions"
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
  <Footer>
    <Button
      id="formButton3"
      disabled="{{ !(textInput_issue.value && textArea1.value) }}"
      hidden=""
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
