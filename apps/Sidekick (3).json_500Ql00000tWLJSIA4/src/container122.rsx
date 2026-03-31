<Container
  id="container122"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch3.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Statistic
      id="statistic98"
      currency="USD"
      label=""
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{ map: { valueFontSize: "48px" } }}
      tooltipText="Current LSAT score based on {{ Number(lsat_count_query4.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_lsat_responses_sum'])}} responses
"
      value="{{ Number(lsat_stat_query5.data?.data?.[0]?.['sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg'])?.toFixed(1) }}"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text544" value="Best" verticalAlign="center" />
    <Text
      id="cohort_lsat_best4"
      horizontalAlign="right"
      value="{{ best_avg_current3.value.lsat.best }}"
      verticalAlign="center"
    />
    <Text id="text545" value="Average" verticalAlign="center" />
    <Text
      id="cohort_lsat_avg4"
      horizontalAlign="right"
      value="{{ best_avg_current3.value.lsat.avg}}"
      verticalAlign="center"
    />
    <Text id="text546" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_lsat_vsavg4"
      disableMarkdown={true}
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic98.value/(parseFloat(cohort_lsat_avg4.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
