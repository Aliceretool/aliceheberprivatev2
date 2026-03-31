<Container
  id="kpiSummaryContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="gatewayDateStat"
      currency="USD"
      decimalPlaces={0}
      label="Days On Programme"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={0}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondaryValue=""
      value="{{ currentLearner.value.status.latest_days_on_programme }}"
    />
    <Statistic
      id="otjHoursStat"
      currency="USD"
      decimalPlaces={1}
      label="OTJ Hours"
      labelCaption="{{ currentLearner.value.status.otj_pct_actual_vs_target_to_date}}% of expected"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={0}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondaryValue=""
      showSeparators={true}
      suffix="/{{ currentLearner.value.status.otj_target_hours_to_date}} "
      value="{{ currentLearner.value.status.otj_submitted_hours_to_date }} "
    />
    <Statistic
      id="lastReviewStat"
      currency="USD"
      decimalPlaces={0}
      label="Last EOL"
      labelCaption="on {{ currentLearner.value?.status?.latest_evidence_of_learning_date ? moment(currentLearner.value.status.latest_evidence_of_learning_date).format('DD MMM, YYYY') : 'N/A' }}"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={0}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{}}
      suffix="days ago"
      value="{{ currentLearner.value?.status?.latest_evidence_of_learning_date ? moment().diff(currentLearner.value.status.latest_evidence_of_learning_date, 'days') : 'N/A' }}"
    />
    <Container
      id="group1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text563"
          style={{
            fontSize: "12px",
            fontWeight: "500",
            fontFamily: "Saans, Inter, sans-serif",
          }}
          value="EOL Ladder Stage"
          verticalAlign="center"
        />
        <Text
          id="text564"
          style={{
            fontSize: "16px",
            fontWeight: "500",
            fontFamily: "Saans, Inter, sans-serif",
          }}
          value={
            '{{\n  (function() {\n    const lastEolDateStr = currentLearner.value?.status?.latest_evidence_of_learning_date;\n    \n    if (!lastEolDateStr) return "No EOL Recorded";\n\n    const lastEolDate = new Date(lastEolDateStr);\n    const today = new Date();\n    const daysSinceEol = Math.floor((today - lastEolDate) / (1000 * 60 * 60 * 24));\n\n    if (daysSinceEol < 7) return "Compliant";\n    if (daysSinceEol <= 24) return "Proactive Engagement";\n    if (daysSinceEol <= 40) return "Formal Escalation to AM";\n    if (daysSinceEol <= 45) return "Escalation to CSM and Client";\n    if (daysSinceEol <= 50) return "Final Warning (<br> BIL/Withdrawal)";\n    return "Finalisation <br> (Withdrawal or BIL)";\n  })()\n}}'
          }
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="group2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text561"
          style={{
            fontSize: "12px",
            fontWeight: "500",
            fontFamily: "Saans, Inter, sans-serif",
          }}
          value="Risk Level"
          verticalAlign="center"
        />
        <Text
          id="text562"
          style={{
            fontSize: "16px",
            fontWeight: "500",
            fontFamily: "Saans, Inter, sans-serif",
          }}
          value="{{ currentLearner.value?.withdrawal_risk?.risk_bucket_name || 'N/A' }}"
          verticalAlign="center"
        />
      </View>
    </Container>
  </View>
</Container>
