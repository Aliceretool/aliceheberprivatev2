<Container
  id="container137"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch2.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Text
      id="containerTitle165"
      style={{
        color: "rgba(0, 0, 0, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### Progress <br> Reviews"
      verticalAlign="center"
    />
    <Statistic
      id="statistic108"
      currency="USD"
      formattingStyle="percent"
      hidden="true"
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
      suffix="{{ (Number(masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completed_count_sum']))}}/{{ (Number(masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_count_sum']))}} PRs"
      tooltipText="Percentage of in-month progress reviews where a coach completed their portion"
      value="{{ Number(masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct']).toFixed(2)}}"
    >
      <Event
        id="7b49926f"
        event="click"
        method="run"
        params={{
          map: {
            src: "// Get the values from your Metrics Page filters\nconst params = {\n  cohort: cohort_cohortSelect3.value,   // Update with your actual component names\n  company: cohort_companySelect3.value,\n  risk: cohort_riskSelect2.value,\n  sortContext: 'prw_priority'     // Or whichever metric they clicked\n};\n\nutils.openPage('my_learners2', {\n  queryParams: params\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Statistic>
    <Text
      id="text612"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="Coming Soon"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text581" value="Best" verticalAlign="center" />
    <Text
      id="cohort_pr_best5"
      hidden="true"
      horizontalAlign="right"
      value="{{ best_avg_current2.value.reviews.best}}%"
      verticalAlign="center"
    />
    <Text id="text582" value="Average" verticalAlign="center" />
    <Text
      id="cohort_pr_avg5"
      hidden="true"
      horizontalAlign="right"
      value="{{ best_avg_current2.value.reviews.avg}}%"
      verticalAlign="center"
    />
    <Text id="text583" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_pr_vsavg5"
      hidden="true"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic108.value/(0.01*parseFloat(cohort_pr_avg5.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
