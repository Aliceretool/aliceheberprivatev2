<Container
  id="container119"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="cohort_active_learners5"
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
      tooltipText="Total number of active learners"
      value="{{ Number(active_count_query4.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count']) || 0 }}"
    />
    <HTML
      id="html33"
      css={include("../lib/html33.css", "string")}
      html={include("../lib/html33.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_bil_learners5"
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
      value="{{ Number(bil_count_query4.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_bil_count']) || 0 }}"
    />
    <HTML
      id="html34"
      css={include("../lib/html34.css", "string")}
      html={include("../lib/html34.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_risk_learners8"
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
      value="{{ Number(risk_count_query4.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count']) }}"
    />
    <HTML
      id="html35"
      css={include("../lib/html35.css", "string")}
      html={include("../lib/html35.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_risk_learners9"
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
  (Number(zero_eol_query4.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count']) || 0) 
  - 
  (Number(zero_eol_query4.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count']) || 0) 
}}"
    />
    <Divider id="divider26" hidden="{{ !benchSwitch3.value }}" />
    <Divider id="divider27" hidden="{{ !benchSwitch3.value }}" />
    <Divider id="divider28" hidden="{{ !benchSwitch3.value }}" />
    <Text
      id="text538"
      hidden="{{ !benchSwitch3.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current3.value.active.avg }} | Highest: {{ best_avg_current3.value.active.max }}"
      verticalAlign="center"
    />
    <Text
      id="text535"
      hidden="{{ !benchSwitch3.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current3.value.bil.avg }} | Lowest: {{ best_avg_current3.value.bil.lowest }}"
      verticalAlign="center"
    />
    <Text
      id="text536"
      hidden="{{ !benchSwitch3.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current3.value.risk.avg }}% | Lowest: {{ best_avg_current3.value.risk.lowest }}%"
      verticalAlign="center"
    />
    <Text
      id="text537"
      hidden="{{ !benchSwitch3.value }}"
      horizontalAlign="center"
      margin="0"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans",
        color: "rgba(74, 74, 74, 0.71)",
      }}
      value="Average: {{ best_avg_current3.value.zeroEol.avg }}  | Best: {{ best_avg_current3.value.zeroEol.lowest }}"
      verticalAlign="center"
    />
  </View>
</Container>
