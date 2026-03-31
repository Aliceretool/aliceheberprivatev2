<Container
  id="container17"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Text
      id="containerTitle17"
      style={{
        color: "rgba(0, 0, 0, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### Gateway <br> Bookings"
      verticalAlign="center"
    />
    <Statistic
      id="statistic24"
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
      tooltipText="Percentage of active learners who booked a gateway"
      value="{{ (Number(gw_stat_query.data?.data?.[0]?.['sidekick__apprenticeship.apprenticeship_gateway_booked_total_pct'])).toFixed(3)}}"
    >
      <Event
        id="5cd39966"
        event="click"
        method="run"
        params={{
          map: {
            src: "// Get the values from your Metrics Page filters\nconst params = {\n  cohort: cohort_cohortSelect.value,   // Update with your actual component names\n  company: cohort_companySelect.value,\n  risk: cohort_riskSelect.value,\n  sortContext: 'gb_priority'     // Or whichever metric they clicked\n};\n\nutils.openPage('my_learners2', {\n  queryParams: params\n});",
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
    <Text id="text81" value="Best" verticalAlign="center" />
    <Text
      id="cohort_gw_best"
      horizontalAlign="right"
      value="{{ best_avg_current.value.gateway.best}}%"
      verticalAlign="center"
    />
    <Text id="text82" value="Average" verticalAlign="center" />
    <Text
      id="cohort_gw_avg"
      horizontalAlign="right"
      value="{{ best_avg_current.value.gateway.avg}}%"
      verticalAlign="center"
    />
    <Text id="text83" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_gw_vsavg"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic24.value/(0.01*parseFloat(cohort_gw_avg.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
