<Container
  id="container87"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle92"
      style={{
        color: "rgba(130, 126, 126, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### Gateway Bookings"
      verticalAlign="center"
    />
    <Statistic
      id="statistic76"
      currency="USD"
      formattingStyle="percent"
      label=""
      labelCaption="Last Month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="0.09"
      showSeparators={true}
      value="{{ GW_stat_query2.data.data.value }}"
    >
      <Event
        id="319d2358"
        event="click"
        method="show"
        params={{}}
        pluginId="cohort_deepdive2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="b0d8e90b"
        event="click"
        method="setValue"
        params={{ map: { value: "gb_priority" } }}
        pluginId="cohort_currentSortContext2"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="c4f06d1e"
        event="click"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Statistic>
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text425" value="Best" verticalAlign="center" />
    <Text
      id="cohort_gw_best2"
      horizontalAlign="right"
      value="98%"
      verticalAlign="center"
    />
    <Text id="text426" value="Average" verticalAlign="center" />
    <Text
      id="cohort_gw_avg2"
      horizontalAlign="right"
      value="87.8%"
      verticalAlign="center"
    />
    <Text id="text427" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_gw_vsavg2"
      horizontalAlign="right"
      value="{{ (100*( statistic76.value/(0.01*parseFloat(cohort_gw_avg2.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
