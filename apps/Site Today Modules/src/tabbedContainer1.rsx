<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <View id="320e4" label="On Site Today" viewKey="Today">
    <Container
      id="group1"
      _gap="0px"
      _justify="space-between"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="0ca1a" viewKey="View 1">
        <Statistic
          id="statistic1"
          align="center"
          currency="USD"
          icon="line/interface-user-multiple"
          label="Staff"
          positiveTrend="{{ self.value >= 0 }}"
          prefix="In"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryPositiveTrend="{{ self.secondaryValue >= 100 }}"
          secondaryPrefix="Out "
          secondaryShowSeparators={true}
          secondaryValue="{{ users_perGroupStaff.data.signedOutCount }}"
          signDisplay="trendArrows"
          style={{
            ordered: [{ color: "success" }, { valueFontSize: "h2Font" }],
          }}
          value="{{ users_perGroupStaff.data.signedInCount }}"
        />
        <Statistic
          id="statistic3"
          align="center"
          currency="USD"
          icon="line/interface-setting-tool-box"
          label="Contractors"
          positiveTrend="{{ self.value >= 0 }}"
          prefix="In"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryPositiveTrend="{{ self.secondaryValue >= 100 }}"
          secondaryPrefix="Out "
          secondaryShowSeparators={true}
          secondaryValue="{{ users_perGroupContractors.data.signedOutCount }}"
          signDisplay="trendArrows"
          style={{
            ordered: [{ color: "success" }, { valueFontSize: "h2Font" }],
          }}
          value="{{ users_perGroupContractors.data.signedInCount }}"
        />
        <Statistic
          id="statistic2"
          align="center"
          currency="USD"
          icon="line/travel-map-location-user-pin"
          label="Visitors"
          positiveTrend="{{ self.value >= 0 }}"
          prefix="In"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryPositiveTrend="{{ self.secondaryValue >= 100 }}"
          secondaryPrefix="Out "
          secondaryShowSeparators={true}
          secondaryValue="{{ users_perGroupVisitors.data.signedOutCount }}"
          signDisplay="trendArrows"
          style={{
            ordered: [{ color: "success" }, { valueFontSize: "h2Font" }],
          }}
          value="{{ users_perGroupVisitors.data.signedInCount }}"
        />
      </View>
    </Container>
    <Button
      id="button2"
      horizontalAlign="center"
      iconBefore="line/interface-arrows-synchronize"
      style={{ ordered: [] }}
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="site_today"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextInput
      id="table4SearchFilter"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Search in table"
    />
    <Table
      id="table4"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ site_today.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "7e260", direction: "asc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="medium"
      searchTerm="{{ table4SearchFilter.value }} "
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="0e6c6"
        alignment="right"
        format="decimal"
        formatOptions={{ notation: "standard" }}
        groupAggregationMode="countDistinct"
        hidden="true"
        key="id"
        label="ID"
        position="center"
        size={38.59375}
      />
      <Column
        id="d28f3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={225}
      />
      <Column
        id="a9709"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        label="Group Name"
        placeholder="Enter value"
        position="center"
        referenceId="groupName"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ groups.data.filter(x => x.id === Number(table4.data[0].group_id)).map(x => x.name)[0] }}"
      />
      <Column
        id="8ca49"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="group_id"
        label="Group ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="40d90"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="returning_visitor_id"
        label="Returning visitor ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="cbcf0"
        alignment="center"
        cellTooltip="{{ item }}"
        format="image"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          widthType: "fit",
        }}
        groupAggregationMode="none"
        key="photo_url"
        label="Photo"
        placeholder="Enter value"
        position="center"
        size={104}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="d2393"
        alignment="center"
        format="image"
        formatOptions={{ widthType: "fill" }}
        groupAggregationMode="none"
        key="badge_url"
        label="Badge
"
        placeholder="Enter value"
        position="center"
        size={117}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="894c5"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={122}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7e260"
        alignment="left"
        format="datetime"
        formatOptions={{ dateFormat: "dd MMM yyyy" }}
        groupAggregationMode="none"
        key="in_datetime"
        label="Time in"
        placeholder="Enter value"
        position="center"
        size={155}
      />
      <Column
        id="e1218"
        alignment="left"
        format="datetime"
        formatOptions={{ dateFormat: "dd MMM yyyy" }}
        groupAggregationMode="none"
        key="out_datetime"
        label="Time out"
        placeholder="Enter value"
        position="center"
        size={206}
      />
      <Column
        id="b95c7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="expected_datetime"
        label="Expected Date & Time"
        placeholder="Enter value"
        position="center"
        size={123}
      />
      <Column
        id="c887a"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="additional_fields"
        label="Additional fields"
        placeholder="Enter value"
        position="center"
        size={100}
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
          pluginId="table4"
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
          pluginId="table4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View
    id="a9818"
    disabled={false}
    hidden="true"
    iconPosition="left"
    label="History"
    viewKey="View 3"
  >
    <TextInput
      id="table2SearchFilter"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Search in table"
    />
    <DateRange
      id="dateRange2"
      dateFormat="yyyy MM d"
      endPlaceholder="End date"
      hidden=""
      iconBefore="bold/interface-calendar-remove"
      label="Date Range"
      startPlaceholder="Start date"
      textBetween="-"
      value={{
        ordered: [
          { start: "{{  moment().subtract(90, 'day')}}" },
          { end: "{{  moment()}}" },
        ],
      }}
    />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ groups2.data.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="202a9"
      searchTerm="{{ table2SearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="202a9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c33b6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="group_id"
        label="Group ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="67dae"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="returning_visitor_id"
        label="Returning visitor ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="44d94"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={151}
        summaryAggregationMode="none"
      />
      <Column
        id="1c3eb"
        alignment="left"
        format="image"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          widthType: "fit",
        }}
        groupAggregationMode="none"
        key="photo_url"
        label="Photo URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bdf18"
        alignment="left"
        format="image"
        formatOptions={{ widthType: "fit" }}
        groupAggregationMode="none"
        key="badge_url"
        label="Badge URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7587e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f9636"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="in_datetime"
        label="In datetime"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="64380"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="out_datetime"
        label="Out datetime"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="681ec"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="expected_datetime"
        label="Expected datetime"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1ad91"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        key="additional_fields"
        label="Additional fields"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="20c6d"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="personal_fields"
        label="Personal fields"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ffbdd"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="metadata"
        label="Metadata"
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
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table2"
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
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="groups2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
