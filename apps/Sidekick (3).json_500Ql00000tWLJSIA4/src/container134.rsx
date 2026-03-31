<Container
  id="container134"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch2.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Text
      id="containerTitle162"
      style={{
        color: "rgba(0, 0, 0, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### LSAT <br> Score"
      verticalAlign="center"
    />
    <Statistic
      id="statistic105"
      currency="USD"
      label=""
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{ map: { valueFontSize: "48px" } }}
      tooltipText="Team Average: Current LSAT score based on {{ Number(masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.lsat_coach_response_count'])}} responses"
      value="{{ Number(masterStatsQuery.data?.data?.[0]?.['sidekick__apprenticeship_monthly.avg_lsat_coach_score']).toFixed(2) }}"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text572" value="Best" verticalAlign="center" />
    <Text
      id="cohort_lsat_best5"
      horizontalAlign="right"
      value="{{ best_avg_current2.value.lsat.best }}"
      verticalAlign="center"
    />
    <Text id="text573" value="Average" verticalAlign="center" />
    <Text
      id="cohort_lsat_avg5"
      horizontalAlign="right"
      value="{{ best_avg_current2.value.lsat.avg}}"
      verticalAlign="center"
    />
    <Text id="text574" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_lsat_vsavg5"
      disableMarkdown={true}
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic105.value/(parseFloat(cohort_lsat_avg5.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
