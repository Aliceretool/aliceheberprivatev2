<Container
  id="container121"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch3.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Statistic
      id="statistic97"
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
      style={{ fontSize: "12px", valueFontSize: "48px" }}
      tooltipText="Percentage of active learners who have submitted at least 1 EOL in the current month"
      value="{{ (Number(eol_stat_query5.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct'])).toFixed(2) }}"
    >
      <Event
        id="6b2e4bb7"
        event="click"
        method="run"
        params={{
          map: {
            src: "// Get the values from your Metrics Page filters\nconst params = {\n  cohort: cohort_cohortSelect4.value,   // Update with your actual component names\n  company: cohort_companySelect4.value,\n  risk: cohort_riskSelect3.value,\n  sortContext: 'eol_priority'     // Or whichever metric they clicked\n};\n\nutils.openPage('my_learners2', {\n  queryParams: params\n});",
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
    <Text id="text541" value="Best" verticalAlign="center" />
    <Text
      id="cohort_eol_best4"
      horizontalAlign="right"
      value="{{ best_avg_current3.value.eol.best }}%"
      verticalAlign="center"
    />
    <Text id="text542" value="Average" verticalAlign="center" />
    <Text
      id="cohort_eol_avg4"
      horizontalAlign="right"
      value="{{best_avg_current3.value.eol.avg}}%"
      verticalAlign="center"
    />
    <Text id="text543" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_eol_vsavg4"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic97.value/(0.01*parseFloat(cohort_eol_avg4.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
