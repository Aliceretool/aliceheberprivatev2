<Container
  id="container85"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle100"
      style={{
        color: "rgba(130, 126, 126, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### LSAT"
      verticalAlign="center"
    />
    <Statistic
      id="statistic74"
      currency="USD"
      label=""
      labelCaption="Last Month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="0.11"
      showSeparators={true}
      value="{{ LSAT_stat_query2.data.data.value }}"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text419" value="Best" verticalAlign="center" />
    <Text
      id="cohort_lsat_best2"
      horizontalAlign="right"
      value="4.68"
      verticalAlign="center"
    />
    <Text id="text420" value="Average" verticalAlign="center" />
    <Text
      id="cohort_lsat_avg2"
      horizontalAlign="right"
      value="4.3"
      verticalAlign="center"
    />
    <Text id="text421" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_lsat_vsavg2"
      disableMarkdown={true}
      horizontalAlign="right"
      value="{{ (100*( statistic74.value/(parseFloat(cohort_lsat_avg2.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
