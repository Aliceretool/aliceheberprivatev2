<Container
  id="container82"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="cohort_total_learners2"
      currency="USD"
      icon="bold/interface-user-single"
      label=""
      labelCaption="Total Learners"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value=""
    />
    <HTML
      id="html25"
      css={include("../lib/html25.css", "string")}
      html={include("../lib/html25.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_active_learners2"
      currency="USD"
      icon="bold/interface-user-check"
      label=""
      labelCaption="Active Learners"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="119"
    />
    <HTML
      id="html20"
      css={include("../lib/html20.css", "string")}
      html={include("../lib/html20.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_bil_learners2"
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
      value="11"
    />
    <HTML
      id="html21"
      css={include("../lib/html21.css", "string")}
      html={include("../lib/html21.html", "string")}
      margin="0"
    />
    <Statistic
      id="cohort_risk_learners2"
      currency="USD"
      icon="bold/interface-alert-warning-triangle-alternate"
      label=""
      labelCaption="Learners at Risk"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="21"
    />
  </View>
</Container>
