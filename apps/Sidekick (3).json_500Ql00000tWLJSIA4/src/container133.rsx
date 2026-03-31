<Container
  id="container133"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch2.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Text
      id="containerTitle161"
      style={{
        color: "rgba(0, 0, 0, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      tooltipText="Percentage of active learners who have submitted at least 1 EOL in the current month"
      value="#### EOL <br> Rate"
      verticalAlign="center"
    />
    <Statistic
      id="statistic104"
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
      tooltipText="Team Average: Percentage of active learners who have submitted at least 1 EOL in the current month"
      value="{{ Number((masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct'])).toFixed(2) }}"
    >
      <Event
        id="6b2e4bb7"
        event="click"
        method="run"
        params={{
          map: {
            src: "// Get the values from your Metrics Page filters\nconst params = {\n  cohort: cohort_cohortSelect3.value,   // Update with your actual component names\n  company: cohort_companySelect3.value,\n  risk: cohort_riskSelect2.value,\n  sortContext: 'eol_priority'     // Or whichever metric they clicked\n};\n\nutils.openPage('my_learners2', {\n  queryParams: params\n});",
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
    <Text id="text569" value="Best" verticalAlign="center" />
    <Text
      id="cohort_eol_best5"
      horizontalAlign="right"
      value="{{ best_avg_current2.value.eol.best }}%"
      verticalAlign="center"
    />
    <Text id="text570" value="Average" verticalAlign="center" />
    <Text
      id="cohort_eol_avg5"
      horizontalAlign="right"
      value="{{best_avg_current2.value.eol.avg}}%"
      verticalAlign="center"
    />
    <Text id="text571" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_eol_vsavg5"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic104.value/(0.01*parseFloat(cohort_eol_avg5.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
