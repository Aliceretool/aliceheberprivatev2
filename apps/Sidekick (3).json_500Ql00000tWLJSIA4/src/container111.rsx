<Container
  id="container111"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle155"
      value="#### Learner Overview"
      verticalAlign="center"
    />
    <Statistic
      id="statistic90"
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
      tooltipText="Pod Average: Percentage of active learners who have submitted at least 1 EOL in the current month"
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
    <KeyValue
      id="keyValue19"
      data={
        '{\n  "Learner Name": "Sarah Bishop",\n  "Employer": "Garcia Inc.",\n  "Job Title": "DS(CLOSED)MAY25-ACTIVE",\n\n  "Programme Status": "Completed On Time",\n\n  "OTJ Progress": "252 / 321 required hours",\n  "OTJ Completed Hours": 252,\n  "OTJ Required Hours": 321,\n  "OTJ Progress %": 79,\n\n  "Time on Programme": "401 days",\n  "Time on Programme (Days)": 401,\n\n  "Latest Project Submitted": "AIBV Project 11",\n  "Latest Evidence of Learning": "776 days ago",\n  "Latest Coaching Session Attended": "874 days ago",\n\n  "Actual Gateway Date": "Mar 12, 2026",\n  "Expected Gateway Date": "Mar 14, 2026",\n\n  "Risk level": "high",\n\n  "Latest Review Due": "January 31, 2026",\n  "Latest Review Status": "Overdue",\n\n  "Apprentice Completed": "Yes",\n  "Manager Completed": "Yes",\n  "Coach Completed": "No",\n  "Async Recommendation": "No"\n}'
      }
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="tree"
      itemLabelPosition="top"
      labelWrap={true}
    />
    <Text id="text507" value="Best" verticalAlign="center" />
    <Text
      id="cohort_eol_best3"
      horizontalAlign="right"
      value="{{ best_avg_current2.value.eol.best }}%"
      verticalAlign="center"
    />
    <Text id="text508" value="Average" verticalAlign="center" />
    <Text
      id="cohort_eol_avg3"
      horizontalAlign="right"
      value="{{best_avg_current2.value.eol.avg}}%"
      verticalAlign="center"
    />
    <Text id="text509" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_eol_vsavg3"
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic90.value/(0.01*parseFloat(cohort_eol_avg3.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
