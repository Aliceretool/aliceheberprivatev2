<Container
  id="container124"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch3.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Statistic
      id="statistic100"
      currency="USD"
      formattingStyle="percent"
      label=""
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{ map: { valueFontSize: "48px" } }}
      tooltipText="Percentage of eligible learners who booked a gateway within day 90.

Denominator includes learners with >=90 days on programme or any gateway booking."
      value="{{ (Number(gw_stat_query5.data?.data?.[0]?.['sidekick__apprenticeship.apprenticeship_gateway_booked_within_day_90_pct'])).toFixed(3)}}"
    >
      <Event
        id="5cd39966"
        event="click"
        method="run"
        params={{
          map: {
            src: "// Get the values from your Metrics Page filters\nconst params = {\n  cohort: cohort_cohortSelect4.value,   // Update with your actual component names\n  company: cohort_companySelect4.value,\n  risk: cohort_riskSelect3.value,\n  sortContext: 'gb_priority'     // Or whichever metric they clicked\n};\n\nutils.openPage('my_learners2', {\n  queryParams: params\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Statistic>
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text550" value="Best" verticalAlign="center" />
    <Text
      id="cohort_gw_best4"
      horizontalAlign="right"
      value="{{ best_avg_current3.value.gateway.best}}%"
      verticalAlign="center"
    />
    <Text id="text551" value="Average" verticalAlign="center" />
    <Text
      id="cohort_gw_avg4"
      horizontalAlign="right"
      value="{{ best_avg_current3.value.gateway.avg}}%"
      verticalAlign="center"
    />
    <Text id="text552" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_gw_vsavg4"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic100.value/(0.01*parseFloat(cohort_gw_avg4.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
