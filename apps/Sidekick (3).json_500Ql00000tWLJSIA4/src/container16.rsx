<Container
  id="container16"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Text
      id="containerTitle89"
      style={{
        color: "rgba(0, 0, 0, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### Delivery <br> Attendance"
      verticalAlign="center"
    />
    <Statistic
      id="statistic23"
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
      tooltipText="Delivery plan attendance rate based on attended vs expected sessions"
      value="{{ (Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct'])).toFixed(2) }}"
    >
      <Event
        id="3223b8ad"
        event="click"
        method="run"
        params={{
          map: {
            src: "// Get the values from your Metrics Page filters\nconst params = {\n  cohort: cohort_cohortSelect.value,   // Update with your actual component names\n  company: cohort_companySelect.value,\n  risk: cohort_riskSelect.value,\n  sortContext: 'attendance_priority'     // Or whichever metric they clicked\n};\n\nutils.openPage('my_learners2', {\n  queryParams: params\n});",
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
    <Text id="text75" value="Best" verticalAlign="center" />
    <Text
      id="cohort_att_best"
      horizontalAlign="right"
      value="{{ best_avg_current.value.attendance.best}}%"
      verticalAlign="center"
    />
    <Text id="text76" value="Average" verticalAlign="center" />
    <Text
      id="cohort_att_avg"
      horizontalAlign="right"
      value="{{ best_avg_current.value.attendance.avg}}%"
      verticalAlign="center"
    />
    <Text id="text77" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_att_vsavg"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic23.value/(0.01*parseFloat(cohort_att_avg.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
