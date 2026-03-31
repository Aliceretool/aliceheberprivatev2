<Container
  id="container106"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="cohort_active_learners3"
      currency="USD"
      icon="bold/interface-user-check"
      label=""
      labelCaption="Active Learners"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryPrefix="Avg: "
      secondaryShowSeparators={true}
      secondarySuffix="Best: "
      secondaryValue=""
      showSeparators={true}
      tooltipText="Total number of on-programme and post-gateway learners"
      value="{{ Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count'])}}"
    />
    <HTML
      id="html27"
      css={include("../lib/html27.css", "string")}
      html={include("../lib/html27.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_bil_learners3"
      currency="USD"
      icon="bold/entertainment-control-button-pause-circle-alternate"
      label=""
      labelCaption="Learners on BiL"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{}}
      tooltipText="Percentage of active and on-BIL learners that are currently on a Break in Learning"
      value="{{ Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_bil_count'])}}"
    />
    <HTML
      id="html28"
      css={include("../lib/html28.css", "string")}
      html={include("../lib/html28.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_risk_learners4"
      currency="USD"
      icon="bold/interface-alert-warning-triangle-alternate"
      label=""
      labelCaption="Learners at Very High Risk"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      tooltipText="Number of learners at very high risk"
      value="{{ Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count']) }}"
    />
    <HTML
      id="html29"
      css={include("../lib/html29.css", "string")}
      html={include("../lib/html29.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_risk_learners5"
      currency="USD"
      icon="bold/interface-page-controller-loading-half"
      label=""
      labelCaption="Learners with 0 EOL"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      tooltipText="Number of learners with 0 EOL in the current month"
      value="{{ 
(Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count'])) 
  - 
  (Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count'])) 
}}"
    />
    <Divider id="divider21" hidden="{{ !benchSwitch.value }}" />
    <Divider id="divider22" hidden="{{ !benchSwitch.value }}" />
    <Divider id="divider23" hidden="{{ !benchSwitch.value }}" />
    <Divider id="divider24" hidden="{{ !benchSwitch.value }}" />
    <Text
      id="text478"
      hidden="{{ !benchSwitch.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current.value.active.avg }} | Highest: {{ best_avg_current.value.active.max }}"
      verticalAlign="center"
    />
    <Text
      id="text475"
      hidden="{{ !benchSwitch.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current.value.bil.avg }} | Lowest: {{ best_avg_current.value.bil.lowest }}"
      verticalAlign="center"
    />
    <Text
      id="text476"
      hidden="{{ !benchSwitch.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current.value.risk.avg }}% | Lowest: {{ best_avg_current.value.risk.lowest }}%"
      verticalAlign="center"
    />
    <Text
      id="text477"
      hidden="{{ !benchSwitch.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current.value.zeroEol.avg }}  | Best: {{ best_avg_current.value.zeroEol.lowest }}"
      verticalAlign="center"
    />
  </View>
</Container>
