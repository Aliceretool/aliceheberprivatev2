<Container
  id="container125"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch3.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Statistic
      id="statistic101"
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
      tooltipText="Percentage of scheduled progress reviews completed on or before their due date"
      value="{{ (Number(pr_stat_query5.data?.data?.[0]?.['sidekick__apprenticeship.progress_review_completed_on_time_pct'])).toFixed(2) }}"
    >
      <Event
        id="7b49926f"
        event="click"
        method="run"
        params={{
          map: {
            src: "// Get the values from your Metrics Page filters\nconst params = {\n  cohort: cohort_cohortSelect4.value,   // Update with your actual component names\n  company: cohort_companySelect4.value,\n  risk: cohort_riskSelect3.value,\n  sortContext: 'prw_priority'     // Or whichever metric they clicked\n};\n\nutils.openPage('my_learners2', {\n  queryParams: params\n});",
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
    <Text id="text553" value="Best" verticalAlign="center" />
    <Text
      id="cohort_pr_best4"
      horizontalAlign="right"
      value="{{ best_avg_current3.value.reviews.best}}%"
      verticalAlign="center"
    />
    <Text id="text554" value="Average" verticalAlign="center" />
    <Text
      id="cohort_pr_avg4"
      horizontalAlign="right"
      value="{{ best_avg_current3.value.reviews.avg}}%"
      verticalAlign="center"
    />
    <Text id="text555" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_pr_vsavg4"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic101.value/(0.01*parseFloat(cohort_pr_avg4.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
