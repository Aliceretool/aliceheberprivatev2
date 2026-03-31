<Container
  id="container126"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="false
"
  padding="12px"
  showBody={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Statistic
      id="statistic102"
      currency="USD"
      formattingStyle="percent"
      hidden="true"
      label=""
      labelCaption="Last Month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="0"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text523" hidden="true" value="Best" verticalAlign="center" />
    <Text
      id="cohort_comp_best4"
      hidden="true"
      value="Best"
      verticalAlign="center"
    />
    <Text id="text524" hidden="true" value="Average" verticalAlign="center" />
    <Text
      id="cohort_comp_avg4"
      hidden="true"
      value="Best"
      verticalAlign="center"
    />
    <Text id="text525" hidden="true" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_comp_vsavg4"
      hidden="true"
      value="Best"
      verticalAlign="center"
    />
    <Text
      id="text533"
      horizontalAlign="center"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="Compass score will be added soon"
      verticalAlign="center"
    />
  </View>
</Container>
