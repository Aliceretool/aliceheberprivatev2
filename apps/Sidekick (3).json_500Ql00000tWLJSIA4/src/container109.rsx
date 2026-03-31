<Container
  id="container109"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
>
  <Header>
    <Text
      id="containerTitle152"
      horizontalAlign="center"
      style={{ map: { background: "rgb(255, 221, 193)" } }}
      value="#### #{{ item.rank }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="cohort_active_learners4"
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
      value="{{ masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count'] }}"
    />
    <Text
      id="text498"
      value="##### {{ item.feature_name }}"
      verticalAlign="center"
    />
    <Statistic
      id="cohort_bil_learners4"
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
      value="{{ masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_bil_count'] }}"
    />
    <HTML
      id="html31"
      css={include("../lib/html31.css", "string")}
      html={include("../lib/html31.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_risk_learners6"
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
      value="{{ masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count'] }}"
    />
    <HTML
      id="html32"
      css={include("../lib/html32.css", "string")}
      html={include("../lib/html32.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_risk_learners7"
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
      value="{{ (masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count'] || 0) - (masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count'] || 0) }}"
    />
    <Text id="text499" value="{{ item.display_text }}" verticalAlign="center" />
  </View>
</Container>
