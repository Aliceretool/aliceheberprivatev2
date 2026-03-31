<Container
  id="container15"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody="{{benchSwitch.value}}"
  showHeader={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Text
      id="containerTitle88"
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
      id="statistic22"
      currency="USD"
      label=""
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{ map: { valueFontSize: "48px" } }}
      tooltipText="Current LSAT score based on {{ Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.lsat_coach_response_count'])}} responses"
      value="{{ 
Number(master_stats_query.data?.data[0]?.['sidekick__apprenticeship_monthly.avg_lsat_coach_score']).toFixed(1) 
}}"
    >
      <Event
        id="039e7465"
        event="click"
        method="openUrl"
        params={{
          map: {
            url: 'https://metabase.multiverse.io/dashboard/1375-coaching-lsat-excl-instructors?coach_filter={{ encodeURIComponent(currentUser_fullName.value ?? "").replaceAll("%20", "+") }}&cohort_filter=&customer_filter=&customer_tier_filter=&date_filter=thismonth&delivery_lead_filter=&pod_filter=&programme_name_filter=&senior_manager_filter=&tab=1493-coach-conversation\n',
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Statistic>
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text69" value="Best" verticalAlign="center" />
    <Text
      id="cohort_lsat_best"
      horizontalAlign="right"
      value="{{ best_avg_current.value.lsat.best }}"
      verticalAlign="center"
    />
    <Text id="text70" value="Average" verticalAlign="center" />
    <Text
      id="cohort_lsat_avg"
      horizontalAlign="right"
      value="{{ best_avg_current.value.lsat.avg}}"
      verticalAlign="center"
    />
    <Text id="text71" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_lsat_vsavg"
      disableMarkdown={true}
      horizontalAlign="right"
      style={{
        map: {
          color:
            "{{ \n  parseFloat(self.value) > 0 ? '#22c55e' :   // Green if positive\n  parseFloat(self.value) < 0 ? '#f87171' :   // Light Red if negative\n  '#9ca3af'                                  // Grey if zero\n}}",
        },
      }}
      value="{{ (100*( statistic22.value/(parseFloat(cohort_lsat_avg.value)) - 1)).toFixed(1)+'%'}}"
      verticalAlign="center"
    />
  </View>
</Container>
