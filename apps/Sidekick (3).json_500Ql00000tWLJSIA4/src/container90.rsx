<Container
  id="container90"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="statistic79"
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
      value="130"
    />
    <HTML
      id="html22"
      css={include("../lib/html22.css", "string")}
      html={include("../lib/html22.html", "string")}
      margin="0"
    />
    <Statistic
      id="statistic80"
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
      id="html23"
      css={include("../lib/html23.css", "string")}
      html={include("../lib/html23.html", "string")}
      margin="0"
    />
    <Statistic
      id="statistic81"
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
      value="11"
    />
    <HTML
      id="html24"
      css={include("../lib/html24.css", "string")}
      html={include("../lib/html24.html", "string")}
      margin="0"
    />
    <Statistic
      id="statistic82"
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
