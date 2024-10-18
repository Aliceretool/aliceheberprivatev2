<Container
  id="steppedContainer3"
  _gap={0}
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
      id="steps3"
      horizontalAlign="center"
      indicateCompletedSteps={true}
      itemMode="static"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer3"
      value="{{ self.values[0] }}"
    >
      <Option id="5242e" value="Step 1" />
      <Option id="7f3ba" value="Step 2" />
      <Option id="844d8" value="Step 3" />
    </Steps>
  </Header>
  <View
    id="641e2"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="General"
  >
    <RadioGroup
      id="radioGroup1"
      itemMode="static"
      label="Product Type"
      labelPosition="top"
      value="{{ self.values[0] }}"
    >
      <Option id="ed952" value="API Intermediates" />
      <Option id="bebf8" value="Excipients" />
      <Option id="02ed5" value="Primary Printed Packaging" />
      <Option id="9c8e5" disabled={false} hidden={false} value="API" />
      <Option
        id="28ebc"
        disabled={false}
        hidden={false}
        value="Secondary Packaging"
      />
      <Option
        id="bc762"
        disabled={false}
        hidden={false}
        value="Primary Unprinted Packaging"
      />
    </RadioGroup>
  </View>
  <View id="92eb7" label="Questionnaire" viewKey="RA">
    <Text
      id="text89"
      value="👋 ***Upload Risk Assessment Questionnaire, GMP Certificates, ISO Certificates and Manufacturing License !***"
      verticalAlign="center"
    />
    <Module
      id="attachmentUploader8"
      issueId="{{ table32.selectedRow.id }}"
      name="Attachment Uploader"
      pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
      project="crm"
      refresh="getS3Files"
    />
    <Table
      id="table35"
      actionsOverflowPosition={2}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getS3Files8.data.Contents }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="21b6c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Key"
        label="File Name"
        placeholder="Enter value"
        position="left"
        size={260}
        summaryAggregationMode="none"
        valueOverride="{{ item.replace(('crm/' + table32.selectedRow.id) + '/','').substring(36) }}"
      />
      <Column
        id="cfc67"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="LastModified"
        label="Last modified"
        placeholder="Enter value"
        position="center"
        size={180}
        summaryAggregationMode="none"
      />
      <Column
        id="7821f"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="ETag"
        label="E tag"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="54677"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="ChecksumAlgorithm"
        label="Checksum algorithm"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7c8e2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Size"
        label="Size"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7abcb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="StorageClass"
        label="Storage class"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Action id="ca1d5" icon="line/interface-delete-bin-2" label="Delete" />
      <Action
        id="b4f4c"
        icon="line/interface-download-button-1"
        label="Download"
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
          pluginId="table35"
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
          pluginId="table35"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="2fb43" label="Products" viewKey="Products">
    <Multiselect
      id="multiselect16"
      automaticItemColors={true}
      data="{{ getProducts3.data }}"
      emptyMessage="No options"
      fallbackTextByIndex="{{item.category_name}}"
      label="Item Codes"
      labelPosition="top"
      labels="{{ item.ProductDisplayText }} - CAS No. {{ item.CAS}} "
      maxCount="1"
      minCount="1"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex="{{item.category_name}}"
      values="{{ item.id }}"
      wrapTags={true}
    />
    <Include src="./tabbedContainer47.rsx" />
  </View>
  <View id="f506c" label="Samples" viewKey="Samples">
    <Multiselect
      id="multiselect17"
      automaticItemColors={true}
      colorByIndex={'{{ item.status_value =="Closed" ? "green" : "orange" }}'}
      data="{{ getSPL.data }}"
      disabled={'{{ radioGroup1.selectedItem.value == "API Intermediates" }}'}
      emptyMessage="No options"
      label="Samples Analysed"
      labelPosition="top"
      labels="{{ item.issue_index }} ({{ item.status_value }}) - {{ item.issue }} "
      minCount="1"
      overlayMaxHeight={375}
      placeholder="Select options"
      required={true}
      showSelectionIndicator={true}
      values="{{ item.issueID }}"
      wrapTags={true}
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="checkSPLClosure"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Text
      id="text99"
      hidden="!{{ checkSPLClosure.data }}"
      value="##### 👋 Tests have passed. Please choose a re-qualification date #####"
      verticalAlign="center"
    />
    <Date
      id="date3"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      firstDayOfWeek={1}
      hidden="!{{ checkSPLClosure.data }}"
      iconBefore="bold/interface-calendar"
      label="Requalification Date"
      labelPosition="top"
      value="{{ new Date() }}"
    />
    <Multiselect
      id="multiselect18"
      automaticItemColors={true}
      data="{{ getSPL.data }}"
      disabled={'{{ radioGroup1.selectedItem.value !== "API" }}'}
      disabledByIndex=""
      emptyMessage="No options"
      hidden={'{{ radioGroup1.selectedItem.value !== "API" }}'}
      hiddenByIndex=""
      label="Further Samples Analysed"
      labelPosition="top"
      labels="{{ item.issue_index }} {{ item.status_value }} - {{ item.issue }} "
      minCount="1"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.issueID }}"
      wrapTags={true}
    />
  </View>
  <View
    id="3891d"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Status"
  >
    <Switch
      id="switch3"
      label="Once 8 batches of the materials are tested and passed, an EQR is to be compiled by QC to justify reduced testing on the material. If this is done, the status of the material will be updated"
      labelPosition="left"
      labelWrap={true}
    >
      <Event
        event="true"
        method="setValue"
        params={{ ordered: [{ value: '["CERTIFIED","TEST"]' }] }}
        pluginId="tags1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="true"
        method="setValue"
        params={{ ordered: [{ value: "CERTIFIED" }] }}
        pluginId="text90"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="false"
        method="setValue"
        params={{ ordered: [{ value: "APPROVED" }] }}
        pluginId="text90"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
  </View>
  <Footer>
    <Button
      id="prevButton3"
      disabled="{{ steppedContainer3.currentViewIndex === 0 }}"
      hidden="{{ steppedContainer3.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton3"
      disabled="{{ steppedContainer3.currentViewIndex + 1 === steppedContainer3.viewKeys.length}}"
      iconAfter="bold/interface-arrows-right-alternate"
      text="Next"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    event="click"
    method="run"
    params={{ ordered: [{ src: "multiselect17.required = false\n" }] }}
    pluginId=""
    type="script"
    waitMs="0"
    waitType="debounce"
  />
</Container>
