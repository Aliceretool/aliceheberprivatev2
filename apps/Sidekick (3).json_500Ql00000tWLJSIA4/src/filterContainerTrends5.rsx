<Container
  id="filterContainerTrends5"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle98"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Multiselect
      id="cohort_cohortSelect2"
      data="{{ cohort_cohort_dropdown2.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels={'{{ item["gh_apprenticeship.cohort_name"] }}'}
      overlayMaxHeight={375}
      placeholder="Filter Cohort"
      showSelectionIndicator={true}
      tooltipByIndex={'{{ item["gh_apprenticeship.cohort_name"] }}'}
      value=""
      values={'{{ item["gh_apprenticeship.cohort_name"] }}'}
      wrapTags={true}
    />
    <Multiselect
      id="cohort_companySelect2"
      data="{{ cohort_company_dropdown2.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels={'{{ item["gh_apprenticeship.company_name"] }}'}
      overlayMaxHeight={375}
      placeholder="Filter Company"
      showSelectionIndicator={true}
      tooltipByIndex={'{{ item["gh_apprenticeship.company_name"] }}'}
      value=""
      values={'{{ item["gh_apprenticeship.company_name"] }}'}
      wrapTags={true}
    />
    <Multiselect
      id="cohort_statusSelect2"
      data=""
      emptyMessage="No options"
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
    </Multiselect>
    <IconText
      id="iconText10"
      icon="bold/interface-text-formatting-filter-2-alternate"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      text="Filters"
    />
  </View>
</Container>
