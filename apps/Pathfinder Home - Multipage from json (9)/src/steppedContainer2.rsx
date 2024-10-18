<Container
  id="steppedContainer2"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  style={{ ordered: [] }}
>
  <Header>
    <Steps
      id="steps2"
      horizontalAlign="center"
      indicateCompletedSteps={true}
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="64ef4" value="Step 1" />
      <Option id="62ca0" value="Step 2" />
      <Option id="30e12" value="Step 3" />
    </Steps>
  </Header>
  <View id="8c5bb" viewKey="Risk Analysis">
    <Form
      id="riskAnalysisFromTransitionForm2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="0"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      style={{ ordered: [] }}
    >
      <Header>
        <Text
          id="formTitle25"
          marginType="normal"
          value="#### Form title"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="risk_area_select2"
          automaticItemColors={true}
          data="{{ getProject_field_riskArea_values3.data }}"
          emptyMessage="No options"
          formDataKey="risk_area_value"
          label="{{ i18n.t('Risk Area') }}"
          labels="{{ item.field_value }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="{{ i18n.t('Select an option') }}"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.project_field_type_valueID }}"
        />
        <SegmentedControl
          id="severity_select2"
          data="{{ getProject_field_severity_values3.data }}"
          formDataKey="severity_value"
          label="{{ i18n.t('Severity / Consequences') }}"
          labels="{{ item.field_name }}"
          paddingType="spacious"
          required={true}
          style={{ ordered: [{ indicatorBackground: "primary" }] }}
          value="{{ self.values[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <SegmentedControl
          id="occurance_select2"
          data="{{ getProject_field_occuranceLikelyhood_values3.data }}"
          formDataKey="occurance_value"
          label="{{ i18n.t('Occurance / Likelyhood') }}"
          labels="{{ item.field_name }}"
          paddingType="spacious"
          required={true}
          style={{ ordered: [{ indicatorBackground: "primary" }] }}
          value="{{ self.values[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <NumberInput
          id="intrinsic_risk_number_input2"
          currency="USD"
          formDataKey="intrinsic_risk"
          inputValue={0}
          label="{{ i18n.t('Intrinsic Risk') }}"
          marginType="normal"
          placeholder="{{ i18n.t('Enter value') }}"
          readOnly="true"
          showStepper={true}
          style={{ ordered: [] }}
          value="{{ parseInt(formatDataAsArray(getProject_field_severity_values3.data).filter(x => x.project_field_type_valueID == severity_select2.value)[0].field_value) * parseInt(formatDataAsArray(getProject_field_occuranceLikelyhood_values3.data).filter(x => x.project_field_type_valueID == occurance_select2.value)[0].field_value) }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton17"
          marginType="normal"
          submit={true}
          submitTargetId="riskAnalysisFromTransitionForm2"
          text="{{ i18n.t('Submit') }}"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insRiskAnalysisFromTransition"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Spacer id="spacer18" />
    <Table
      id="table13"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getRiskAnalysis.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "aaa5a", direction: "desc" } }]}
      enableSaveActions={true}
      heightType="auto"
      hidden="{{ getRiskAnalysis.data.issueID.length === 0}}"
      primaryKeyColumnId="d46cf"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d46cf"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="risk_analysisID"
        label="{{ i18n.t('Risk analysis id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={274.98333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="84dd1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="{{ i18n.t('Issue id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={270.75}
        summaryAggregationMode="none"
      />
      <Column
        id="abb81"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="risk_areaID"
        label="{{ i18n.t('Risk area id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={273.73333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="bf38a"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="risk_area_value"
        label="{{ i18n.t('Risk Area') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={209.01666259765625}
        summaryAggregationMode="none"
      />
      <Column
        id="cadaf"
        alignment="center"
        format="string"
        groupAggregationMode="none"
        key="severity_name"
        label="{{ i18n.t('Severity / Consequences') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={169.96665954589844}
        summaryAggregationMode="none"
      />
      <Column
        id="fcb51"
        alignment="center"
        format="string"
        groupAggregationMode="none"
        key="occurance_name"
        label="{{ i18n.t('Occurance / Likelyhood') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={155}
        summaryAggregationMode="none"
      />
      <Column
        id="1b396"
        alignment="center"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="intrinsic_risk"
        label="{{ i18n.t('Intrinsic Risk') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={90.38333129882812}
        summaryAggregationMode="none"
      />
      <Column
        id="c1445"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="severityID"
        label="{{ i18n.t('Severity id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={268.08331298828125}
        summaryAggregationMode="none"
      />
      <Column
        id="016df"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="severity_value"
        label="{{ i18n.t('Severity value') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={98.03334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="8eb1b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="occuranceID"
        label="{{ i18n.t('Occurance id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={276.5}
        summaryAggregationMode="none"
      />
      <Column
        id="f641f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="occurance_value"
        label="{{ i18n.t('Occurance value') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={113.51666259765625}
        summaryAggregationMode="none"
      />
      <Action
        id="b4c3a"
        icon="line/interface-delete-bin-2"
        label="{{ i18n.t('Delete') }}"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delRisk1"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="{{ i18n.t('Filter') }}"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="{{ i18n.t('Download') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table13"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="{{ i18n.t('Refresh') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table13"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="de693" viewKey="Impact Analysis">
    <Include src="./tabbedContainer19.rsx" />
  </View>
  <Footer>
    <Button
      id="prevButton2"
      disabled="{{ steppedContainer2.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      marginType="normal"
      styleVariant="outline"
      text="{{ i18n.t('Previous') }}"
    >
      <Event
        event="click"
        method="showPreviousVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton2"
      disabled="{{ steppedContainer2.currentViewIndex + 1 === steppedContainer2.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      marginType="normal"
      text="{{ i18n.t('Next') }}"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
