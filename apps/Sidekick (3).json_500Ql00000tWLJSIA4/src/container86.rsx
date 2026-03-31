<Container
  id="container86"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle101"
      style={{
        color: "rgba(130, 126, 126, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### Attendance Rate"
      verticalAlign="center"
    />
    <Statistic
      id="statistic75"
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
      secondaryValue="-.04"
      showSeparators={true}
      value="{{ Attendance_stat_query2.data.data.value }}"
    >
      <Event
        id="14c2934c"
        event="click"
        method="show"
        params={{}}
        pluginId="cohort_deepdive2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ba8c5ea3"
        event="click"
        method="setValue"
        params={{ map: { value: "attendance_priority" } }}
        pluginId="cohort_currentSortContext2"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="b62f8a11"
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
    <Text id="text422" value="Best" verticalAlign="center" />
    <Text
      id="cohort_att_best2"
      horizontalAlign="right"
      value="82%"
      verticalAlign="center"
    />
    <Text id="text423" value="Average" verticalAlign="center" />
    <Text
      id="cohort_att_avg2"
      horizontalAlign="right"
      value="74%"
      verticalAlign="center"
    />
    <Text id="text424" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_att_vsavg2"
      horizontalAlign="right"
      value="{{ (100*( statistic75.value/(0.01*parseFloat(cohort_att_avg2.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
