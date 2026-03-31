<Container
  id="filterContainerTrends6"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <View id="00030" viewKey="View 1">
    <Multiselect
      id="cohort_cohortSelect3"
      data="{{ getFilterOptions_dd2.value.cohorts }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{item.label}}"
      overlayMaxHeight={375}
      placeholder="Filter Cohort"
      showSelectionIndicator={true}
      tooltipByIndex="{{item.label}}"
      value=""
      values="{{item.value}}"
      wrapTags={true}
    >
      <Event
        id="88eaf373"
        event="change"
        method="run"
        params={{
          map: {
            src: "const filterState = {\n  cohort: cohort_cohortSelect3.value,\n  company: cohort_companySelect3.value,\n  risk: cohort_riskSelect2.value\n};\nlocalStorage.setValue('metrics_filters', filterState);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ef65a9e9"
        event="change"
        method="trigger"
        params={{}}
        pluginId="dm_perf_chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_companySelect3"
      data="{{getFilterOptions_dd2.value.companies}}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{item.label}}"
      overlayMaxHeight={375}
      placeholder="Filter Company"
      showSelectionIndicator={true}
      tooltipByIndex="{{item.label}}"
      value=""
      values="{{item.value}}"
      wrapTags={true}
    >
      <Event
        id="87b09525"
        event="change"
        method="run"
        params={{
          map: {
            src: "const filterState = {\n  cohort: cohort_cohortSelect3.value,\n  company: cohort_companySelect3.value,\n  risk: cohort_riskSelect2.value\n};\nlocalStorage.setValue('metrics_filters', filterState);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ed042a5e"
        event="change"
        method="trigger"
        params={{}}
        pluginId="dm_perf_chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_riskSelect2"
      data=""
      emptyMessage="No options"
      hidden=""
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Filter Risk Level"
      showSelectionIndicator={true}
      value=""
      wrapTags={true}
    >
      <Option id="5d629" disabled={false} hidden={false} value="Very High" />
      <Option id="93bde" disabled={false} hidden={false} value="High" />
      <Option id="2e553" disabled={false} hidden={false} value="Medium" />
      <Option id="d9cd2" disabled={false} hidden={false} value="Low" />
      <Event
        id="51fdc3a1"
        event="change"
        method="run"
        params={{
          map: {
            src: "const filterState = {\n  cohort: cohort_cohortSelect3.value,\n  company: cohort_companySelect3.value,\n  risk: cohort_riskSelect2.value\n};\nlocalStorage.setValue('metrics_filters', filterState);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="8c530cff"
        event="change"
        method="trigger"
        params={{}}
        pluginId="dm_perf_chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_statusSelect3"
      data=""
      emptyMessage="No options"
      hidden=""
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Filter Status"
      showSelectionIndicator={true}
      value=""
      wrapTags={true}
    >
      <Option id="00030" value="On-Programme" />
      <Option id="00031" value="Non-Starter" />
      <Option id="00032" value="No-Show" />
      <Option
        id="54f40"
        disabled={false}
        hidden={false}
        value="Completed On-Time"
      />
      <Option
        id="8d91a"
        disabled={false}
        hidden={false}
        value="Completed Late"
      />
      <Option id="20031" disabled={false} hidden={false} value="Post-Gateway" />
      <Option id="519f8" disabled={false} hidden={false} value="On-BIL" />
      <Event
        id="b8611bf9"
        event="change"
        method="trigger"
        params={{}}
        pluginId="gw_stat_query_dm"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <IconText
      id="iconText35"
      icon="bold/interface-text-formatting-filter-2-alternate"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      text="Filters"
    />
  </View>
</Container>
