<Container
  id="container88"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle93"
      style={{
        color: "rgba(130, 126, 126, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### Progress Review Completion"
      verticalAlign="center"
    />
    <Statistic
      id="statistic77"
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
      secondaryValue="0.05"
      showSeparators={true}
      value="{{PR_stat_query2.data.data.value}}"
    >
      <Event
        id="a1760b6f"
        event="click"
        method="show"
        params={{}}
        pluginId="cohort_deepdive2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ce3035ac"
        event="click"
        method="setValue"
        params={{ map: { value: "prw_priority" } }}
        pluginId="cohort_currentSortContext2"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="a2ce0fe4"
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
    <Text id="text428" value="Best" verticalAlign="center" />
    <Text
      id="cohort_pr_best2"
      horizontalAlign="right"
      value="99.5%"
      verticalAlign="center"
    />
    <Text id="text429" value="Average" verticalAlign="center" />
    <Text
      id="cohort_pr_avg2"
      horizontalAlign="right"
      value="94.4%"
      verticalAlign="center"
    />
    <Text id="text430" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_pr_vsavg2"
      horizontalAlign="right"
      value="{{ (100*( statistic77.value/(0.01*parseFloat(cohort_pr_avg2.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
