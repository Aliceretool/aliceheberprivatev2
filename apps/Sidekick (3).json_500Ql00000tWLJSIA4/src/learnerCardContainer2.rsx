<Container
  id="learnerCardContainer2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="16px"
  showBody={true}
  style={{
    border:
      "{{ item.tier === 1 ? '#DC2626' : item.tier === 2 ? '#F59E0B' : item.tier === 3 ? '#3B82F6' : 'surfacePrimaryBorder' }}",
    borderRadius: "8px",
    background: "#FFFFFF",
    boxShadow: "0 2px 4px rgba(0, 0, 0, 0.06)",
  }}
>
  <Header>
    <Text
      id="cardContainerTitle2"
      value="{{ item.name }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Avatar
      id="cardAvatar2"
      fallback="{{ item.learner.first_name}}{{ item.learner.last_name}}"
      imageSize={32}
      label="{{ item.learner.first_name}}{{ item.learner.last_name}}"
      style={{
        background: "automatic",
        sharedLabelFontSize: "h5Font",
        sharedLabelFontWeight: "h5Font",
        sharedLabelFontFamily: "h5Font",
      }}
    />
    <Text
      id="tierTag2"
      horizontalAlign="right"
      style={{
        color:
          "{{ item.ai_assigned_tier == 1 ? '#DC2626' : item.ai_assigned_tier == 2 ? '#F59E0B' : item.ai_assigned_tier == 3 ? '#3B82F6' : '#6B7280' }}",
        fontFamily: "Inter",
        fontSize: "10px",
        fontWeight: "700",
      }}
      value="TIER {{ item.ai_assigned_tier }}"
      verticalAlign="center"
    />
    <Text
      id="companyTag2"
      value="{{ item.company.name }}"
      verticalAlign="center"
    />
    <Text
      id="cohortTag2"
      value="{{ item.cohort.name }}"
      verticalAlign="center"
    />
    <Text
      id="riskDescription2"
      style={{ fontFamily: "Inter", fontSize: "12px", fontWeight: "500" }}
      value="{{item.reasoning_headline}}"
      verticalAlign="center"
    />
    <IconText
      id="eolStat2"
      icon="bold/interface-time-clock-circle-alternate"
      text="EOL: {{ item.status.latest_evidence_of_learning_date ? moment().diff(item.status.latest_evidence_of_learning_date, 'days') : 'N/A' }} days ago"
    />
    <IconText
      id="attendanceStat2"
      icon="bold/money-graph-bar"
      text="OTJ: {{ item.status.otj_pct_actual_vs_target_to_date}}%"
    />
    <Text
      id="actionLabel2"
      style={{ fontFamily: "Inter", fontSize: "10px", fontWeight: "600" }}
      value="RECOMMENDED ACTION"
      verticalAlign="center"
    />
    <Button
      id="viewActionButton2"
      iconBefore="bold/interface-validation-check-square-1-alternate"
      style={{ background: "#DBEAFE", label: "#1E40AF" }}
      text="{{item.recommended_action}}"
    >
      <Event
        id="de7c444e"
        event="click"
        method="run"
        params={{
          map: {
            src: "selectedLearnerId.setValue(item.learner_id);\nlearnerProfileModal.show();\ngetLearnerNotes_nba.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
