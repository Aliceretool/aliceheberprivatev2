<Container
  id="container84"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle99"
      style={{
        color: "rgba(130, 126, 126, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### EOL"
      verticalAlign="center"
    />
    <Statistic
      id="statistic73"
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
      secondaryValue={0.08}
      showSeparators={true}
      value="{{ EOL_stat_query2.data.data.value }}"
    >
      <Event
        id="fd1ba485"
        event="click"
        method="show"
        params={{}}
        pluginId="cohort_deepdive2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="62717509"
        event="click"
        method="setValue"
        params={{ map: { value: "eol_priority" } }}
        pluginId="cohort_currentSortContext2"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="e9067cf1"
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
    <Text id="text416" value="Best" verticalAlign="center" />
    <Text
      id="cohort_eol_best2"
      horizontalAlign="right"
      value="89.5%"
      verticalAlign="center"
    />
    <Text id="text417" value="Average" verticalAlign="center" />
    <Text
      id="cohort_eol_avg2"
      horizontalAlign="right"
      value="81.3%"
      verticalAlign="center"
    />
    <Text id="text418" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_eol_vsavg2"
      horizontalAlign="right"
      value="{{ (100*( statistic73.value/(0.01*parseFloat(cohort_eol_avg2.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
