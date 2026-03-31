<ModalFrame
  id="cohort_deepdive2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="fullScreen"
>
  <Header>
    <Text id="modalTitle3" value="### Deep Dive" verticalAlign="center" />
    <Button
      id="modalCloseButton6"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="e51d97ca"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="cohort_deepdive2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="cohort_dd_search2"
      label="Search"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Multiselect
      id="cohort_dd_coachSelect2"
      data="{{ cohort_dd_coach_dropdown2.data }}"
      emptyMessage="No options"
      hidden=""
      label="Coach"
      labelPosition="top"
      labels={'{{ item["gh_apprenticeship.coach_full_name"] }}'}
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      value={'"Sara Richardson"'}
      values={'{{ item["gh_apprenticeship.coach_full_name"] }}'}
      wrapTags={true}
    >
      <Event
        id="3f5b75fd"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table2"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_cohortSelect2"
      captionByIndex=""
      colorByIndex=""
      data="{{ cohort_dd_cohort_dropdown2.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Cohort"
      labelPosition="top"
      labels={'{{ item["gh_apprenticeship.coach_full_name"] }}'}
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value=""
      values={'{{ item["gh_apprenticeship.cohort_name"] }}'}
      wrapTags={true}
    >
      <Event
        id="21ab0bda"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table2"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_companySelect2"
      captionByIndex=""
      data="{{ cohort_dd_company_dropdown2.data }}"
      emptyMessage="No options"
      label="Company"
      labelPosition="top"
      labels={'{{ item["gh_apprenticeship.company_name"] }}'}
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex={'{{ item["gh_apprenticeship.company_name"] }}'}
      value=""
      values={'{{ item["gh_apprenticeship.company_name"] }}'}
      wrapTags={true}
    >
      <Event
        id="576478e4"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table2"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_statusSelect2"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Status"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value={'"On-Programme"'}
      values=""
      wrapTags={true}
    >
      <Option id="5297e" disabled={false} hidden={false} value="On-Programme" />
      <Option id="53c6d" disabled={false} hidden={false} value="Non-Starter" />
      <Option id="6d749" disabled={false} hidden={false} value="No-Show" />
      <Option
        id="2cf06"
        disabled={false}
        hidden={false}
        value="Completed On-Time"
      />
      <Option
        id="d31a4"
        disabled={false}
        hidden={false}
        value="Completed Late"
      />
      <Option id="ae79c" disabled={false} hidden={false} value="Post-Gateway" />
      <Option id="bb2ae" disabled={false} hidden={false} value="On-BIL" />
      <Event
        id="7d4a0e4f"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table2"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_riskSelect2"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Risk Level"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value=""
      values=""
      wrapTags={true}
    >
      <Option id="e4287" disabled={false} hidden={false} value="Very High" />
      <Option id="7b322" disabled={false} hidden={false} value="High" />
      <Option id="7c413" disabled={false} hidden={false} value="Medium" />
      <Option id="bfb86" disabled={false} hidden={false} value="Low" />
      <Event
        id="83ae75af"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table2"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Table
      id="cohort_dd_table2"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ cohort_dd_learners_table2.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="Please select a coach to show learners"
      enableSaveActions={true}
      groupByColumns={{}}
      headerTextWrap={true}
      primaryKeyColumnId="3c2e7"
      rowHeight="small"
      searchTerm="{{ cohort_dd_search2.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
    >
      <Column
        id="94e9c"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Learner"
        label="Learner"
        placeholder="Enter value"
        position="center"
        size={57.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="f9a6b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Cohort"
        label="Cohort"
        placeholder="Select option"
        position="center"
        size={53.875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4f6ec"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Company"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={68.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="8a644"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.Status === "On-Programme"      ? "#3C92DC" : \n  currentSourceRow.Status === "Completed On-Time" ? "#2EB886" : \n  currentSourceRow.Status === "Completed Late"    ? "#D4E157" : \n  currentSourceRow.Status === "Post-Gateway"      ? "#9B51E0" : \n  currentSourceRow.Status === "On-BIL"            ? "#F2C94C" : \n  currentSourceRow.Status === "Non-Starter"       ? "#9E9E9E" : \n  currentSourceRow.Status === "No-Show"           ? "#EB5757" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        key="Status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={49.984375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a5b5f"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.Risk === "Very High" ? "#C62828" :  // Warning Red (Softer)\n  currentSourceRow.Risk === "High"      ? "#FF5252" :  // Bright Red\n  currentSourceRow.Risk === "Medium"    ? "#FFA726" :  // Orange Warning\n  currentSourceRow.Risk === "Low"       ? "#3C92DC" :  // Blue\n  null \n}}',
        }}
        groupAggregationMode="none"
        key="Risk"
        label="Risk"
        placeholder="Select option"
        position="center"
        size={37.96875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7d664"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="boolean"
        formatOptions={{
          automaticColors: true,
          trueIcon: "bold/interface-validation-check-circle-alternate",
          trueColor: "{{ theme.success }}",
          falseIcon: "bold/interface-alert-warning-circle-alternate",
          falseColor: "{{ theme.warning }}",
        }}
        groupAggregationMode="none"
        label="EOL Current Month"
        optionList={{
          mode: "manual",
          manualData: [
            { value: "true", label: "Yes" },
            { value: "false", label: "No" },
          ],
        }}
        placeholder="Enter value"
        position="center"
        referenceId="EOL Current Month"
        size={120.15625}
        statusIndicatorOptions={{ manualData: [] }}
        summaryAggregationMode="none"
        valueOverride="{{ 

  !!(currentSourceRow['Latest EOL'] && 

  moment(currentSourceRow['Latest EOL']).isSame(moment(), 'month'))

}}"
      />
      <Column
        id="02c66"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest EOL"
        label="Latest EOL"
        placeholder="Enter value"
        position="center"
        size={73.625}
        summaryAggregationMode="none"
      />
      <Column
        id="689bd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="BiL Status"
        label="BIL Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="559b1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Missed Sessions"
        label="Missed Delivery Sessions (Total)"
        placeholder="Enter value"
        position="center"
        size={182.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="2afb1"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Project"
        label="Latest Project"
        placeholder="Enter value"
        position="center"
        size={89.234375}
        summaryAggregationMode="none"
      />
      <Column
        id="a1b41"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Coaching"
        label="Latest Coaching Session"
        placeholder="Enter value"
        position="center"
        size={147.03125}
        summaryAggregationMode="none"
      />
      <Column
        id="1ab8f"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Review"
        label="Latest Progress Review"
        placeholder="Enter value"
        position="center"
        size={139.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="45f49"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Gateway Date"
        label="Gateway date"
        placeholder="Enter value"
        position="center"
        size={88.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="ca99b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="OTJ Total"
        label="OTJ Total"
        placeholder="Enter value"
        position="center"
        size={64.375}
        summaryAggregationMode="none"
      />
      <Column
        id="f2ce5"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Delivery"
        label="Latest Delivery Session"
        placeholder="Enter value"
        position="center"
        size={137.5625}
        summaryAggregationMode="none"
      />
      <Column
        id="7c7ce"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Job Title"
        label="Job Title"
        placeholder="Enter value"
        position="center"
        size={61.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="7c745"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="Learner Email"
        label="Learner Email"
        position="center"
        size={209.5}
        summaryAggregationMode="none"
      >
        <Event
          id="1d338838"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="42c70"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Manager"
        label="Learner's Manager"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d1a42"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="Apprentice Manager Email"
        label="Manager Email"
        position="center"
        size={223.8125}
        summaryAggregationMode="none"
      >
        <Event
          id="044e6ba9"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="db7d3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="Apprenticeship Latest Project Submission Grade"
        label="Apprenticeship latest project submission grade"
        placeholder="Select option"
        position="center"
        size={282.625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="dd3a1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="Apprenticeship Total Projects Submitted"
        label="Apprenticeship total projects submitted"
        placeholder="Enter value"
        position="center"
        size={239.84375}
        summaryAggregationMode="none"
      />
      <Column
        id="eab48"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Apprenticeship Uuid"
        label="Apprenticeship UUID"
        placeholder="Enter value"
        position="center"
        size={273.25}
        summaryAggregationMode="none"
      />
      <Column
        id="a47f6"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Coach Account Id"
        label="Coach account ID"
        placeholder="Enter value"
        position="center"
        size={268.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="55f18"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="Coach Full Name"
        label="Coach full name"
        placeholder="Select option"
        position="center"
        size={124.265625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="dfeb1"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="Day"
        label="Day"
        placeholder="Enter value"
        position="center"
        size={150.5}
        summaryAggregationMode="none"
      />
      <Column
        id="1e43c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="Gateway Booked"
        label="Gateway booked"
        placeholder="Enter value"
        position="center"
        size={256.984375}
        summaryAggregationMode="none"
      />
      <Column
        id="3c2e7"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="Learner ID"
        label="Learner id"
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
        id="d2268"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="f514762b"
          event="clickToolbar"
          method="refresh"
          pluginId="cohort_dd_table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="b974f"
        icon="bold/interface-text-formatting-list-bullets"
        label="Group by"
        type="groupBy"
      />
    </Table>
  </Body>
</ModalFrame>
