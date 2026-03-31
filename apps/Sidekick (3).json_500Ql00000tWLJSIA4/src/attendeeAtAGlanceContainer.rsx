<Container
  id="attendeeAtAGlanceContainer"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{}}
>
  <Header>
    <Text
      id="atAGlanceTitleText"
      style={{ fontSize: "h1Font", fontWeight: "h1Font", fontFamily: "h1Font" }}
      value="####  📊 At-a-Glance Status"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="programmeStatusLabelText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Programme Status:**"
      verticalAlign="center"
    />
    <TagsWidget2
      id="riskLeveLTag2"
      _colorByIndex={[
        "{{ \n  (function() {\n    // 1. Get raw status\n    const rawStatus = item.status?.latest_status;\n\n    // 2. Immediate check for missing data\n    if (!rawStatus) {\n      return \"#E0E0E0\"; // A very light grey for \"No Data\"\n    }\n\n    // 3. Clean the string for matching\n    const status = rawStatus.toLowerCase().replace(/[_-]/g, ' ').trim(); \n    \n    const green = \"#4CAF50\"; \n    const amber = \"#FFB300\"; \n    const red = \"#D32F2F\";   \n    const gray = \"#9E9E9E\";  \n\n    // 4. Match against the cleaned-up strings\n    switch (status) {\n      case 'on programme':\n      case 'completed on time':\n      case 'post gateway':\n        return green;\n\n      case 'on bil':\n      case 'completed late':\n        return amber;\n\n      case 'no show':\n      case 'non starter': \n      case 'withdrawn':  \n      case 'withdrawal':\n        return red;\n\n      default:\n        return gray; \n    }\n  })() \n}}",
      ]}
      _hiddenByIndex={[false]}
      _iconByIndex={[""]}
      _ids={["4aad8"]}
      _imageByIndex={[""]}
      _labels={[""]}
      _textColorByIndex={["rgba(255, 255, 255, 1)"]}
      _tooltipByIndex={[""]}
      _values={[
        '{{ \n  (function() {\n    // 1. Get the raw status from your data\n    const raw = item.status?.latest_status;\n    \n    // 2. Fallback if no data exists\n    if (!raw) {\n      return "No data available";\n    }\n    \n    // 3. Exact "Dictionary" for your 8 statuses\n    const statusMap = {\n      "completed_late": "Completed Late",\n      "completed_on_time": "Completed On Time",\n      "no_show": "No Show",\n      "non_starter": "Non Starter",\n      "on_bil": "On BIL",\n      "on_programme": "On Programme",\n      "post_gateway": "Post Gateway",\n      "withdrawal": "Withdrawn"\n    };\n\n    // 4. Return the clean label from the map, or auto-capitalize if missing\n    return statusMap[raw] || raw.split(\'_\').map(w => w[0].toUpperCase() + w.substring(1)).join(\' \');\n  })() \n}}',
      ]}
      allowWrap={true}
      colorByIndex=""
      data=""
      hiddenByIndex=""
      horizontalAlign="right"
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      labels=""
      textColorByIndex=""
      tooltipByIndex=""
      values=""
    >
      <Event
        id="f20e13ff"
        event="click"
        method="trigger"
        params={{}}
        pluginId="getLearnerCoachNotes"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TagsWidget2>
    <Divider id="programmeStatusDivider" />
    <Text
      id="otjLabelText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**OTJ Progress:**"
      verticalAlign="center"
    />
    <Text
      id="otjValueText"
      horizontalAlign="right"
      value={
        '{{ item.status?.otj_submitted_hours_to_date ?? "(Missing submitted hrs)" }} / {{ item.status?.otj_target_hours_to_date ?? "(Missing target hrs)" }} required hours'
      }
      verticalAlign="center"
    />
    <TagsWidget2
      id="otjProgressTag"
      _colorByIndex={[
        "{{ \n  (function() {\n    const submitted = item.status?.otj_submitted_hours_to_date;\n    const target = item.status?.otj_target_hours_to_date;\n\n    // 1. If data is missing, return a neutral grey or transparent\n    if (submitted == null || !target) {\n      return '#f3f4f6'; \n    }\n\n    const ratio = submitted / target;\n\n    // 2. Apply your existing logic to the calculated ratio\n    if (ratio >= 0.8) return '#10b981'; // Green\n    if (ratio >= 0.5) return '#fbbf24'; // Amber\n    \n    return '#f87171'; // Red for below 50%\n  })() \n}}",
      ]}
      _hiddenByIndex={[false]}
      _iconByIndex={[""]}
      _ids={["4aad8"]}
      _imageByIndex={[""]}
      _labels={[""]}
      _textColorByIndex={["rgba(255, 255, 255, 1)"]}
      _tooltipByIndex={[""]}
      _values={[
        '{{ \n  (function() {\n    const submitted = item.status?.otj_submitted_hours_to_date;\n    const target = item.status?.otj_target_hours_to_date;\n\n    // 1. If either value is missing or target is 0, return null to hide the percentage\n    if (submitted == null || !target) {\n      return null; \n    }\n\n    // 2. Perform the calculation only if both exist\n    return Math.round((submitted / target) * 100) + "%";\n  })() \n}}',
      ]}
      allowWrap={true}
      colorByIndex=""
      data=""
      hidden="{{ item.status?.otj_submitted_hours_to_date == null || !item.status?.otj_target_hours_to_date }}"
      hiddenByIndex=""
      horizontalAlign="right"
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      labels=""
      margin="0"
      textColorByIndex=""
      tooltipByIndex=""
      values=""
    />
    <Divider id="otjDivider" />
    <Text
      id="timeOnProgrammeText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Time on Programme:**"
      verticalAlign="center"
    />
    <Text
      id="timeOnProgrammeValueText"
      horizontalAlign="right"
      value={
        '{{ item.status?.latest_days_on_programme ?? "No data available" }} {{ item.status?.latest_days_on_programme ? "days" : "" }}'
      }
      verticalAlign="center"
    />
    <Divider id="timeOnProgrammeDivider" />
    <Text
      id="latestDelSessionText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Latest Delivery Session:**"
      verticalAlign="center"
    />
    <Text
      id="latestDeliverySessionText"
      horizontalAlign="right"
      value="_Coming soon_ "
      verticalAlign="center"
    />
    <Divider id="latestDeliverySesionDivider" />
    <Text
      id="latestDelSessionText2"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Delivery Sessions Expected:**"
      verticalAlign="center"
    />
    <Text
      id="latestDeliverySessionText2"
      horizontalAlign="right"
      value={
        '{{ item.status?.delivery_sessions_expected?? "No data available" }}'
      }
      verticalAlign="center"
    />
    <Divider id="latestDeliverySesionDivider2" />
    <Text
      id="latestDelSessionText3"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Delivery Sessions Attended :**"
      verticalAlign="center"
    />
    <Text
      id="latestDeliverySessionText3"
      horizontalAlign="right"
      value={
        '{{ item.status?.delivery_sessions_attended?? "No data available" }}'
      }
      verticalAlign="center"
    />
    <Divider id="latestDeliverySesionDivider3" />
    <Text
      id="latestProjectSubmittedLabelText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Lastest Project Submitted:**"
      verticalAlign="center"
    />
    <Text
      id="latestProjectSubmittedValueText"
      horizontalAlign="right"
      value={
        '{{ item.project_summary?.latest_project_submission?.project?.title ?? "No project title available" }}'
      }
      verticalAlign="center"
    />
    <Divider id="lastModuleDivider" />
    <Text
      id="functionalSkillsMaths"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Functional Skills Maths:**"
      verticalAlign="center"
    />
    <Text
      id="functionalSkillsMathsValueText"
      horizontalAlign="right"
      value={
        '{{ item.status?.functional_skills_maths_status ?? "No data available" }}'
      }
      verticalAlign="center"
    />
    <Divider id="functionalSkillsMathsDivider" />
    <Text
      id="functionalSkillsEnglish"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Functional Skills English:**"
      verticalAlign="center"
    />
    <Text
      id="functionalSkillsEnglishValueText"
      horizontalAlign="right"
      value={
        '{{ item.status?.functional_skills_english_status ?? "No data available" }}'
      }
      verticalAlign="center"
    />
    <Divider id="functionalSkillsEnglishDivider" />
    <Text
      id="latestEolLabelText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Latest Evidence of Learning:**"
      verticalAlign="center"
    />
    <Text
      id="latestEolValueText"
      horizontalAlign="right"
      value={
        '{{ \n  (function() {\n    const eolDate = item.status?.latest_evidence_of_learning_date;\n    \n    // 1. Return "No data" if the date is missing\n    if (!eolDate) {\n      return "No data available";\n    }\n\n    // 2. Calculate the difference only if the date exists\n    const daysAgo = moment().diff(moment(eolDate), \'days\');\n    \n    return `${daysAgo} days ago`;\n  })() \n}}'
      }
      verticalAlign="center"
    />
    <Divider id="eodDivider" />
    <Text
      id="latestAttendenceLabeText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Latest Coaching Session Attended:**"
      verticalAlign="center"
    />
    <Text
      id="latestAttendenceValueText"
      horizontalAlign="right"
      value={
        '{{ \n  (function() {\n    const attendanceDate = item.status?.latest_coaching_session_attended_date;\n    \n    // 1. Return "No data available" if the date is missing\n    if (!attendanceDate) {\n      return "No data available";\n    }\n\n    // 2. Calculate the difference only if the date exists\n    const daysAgo = moment().diff(moment(attendanceDate), \'days\');\n    \n    return `${daysAgo} days ago`;\n  })() \n}}'
      }
      verticalAlign="center"
    />
    <Divider id="attendenceDivider" />
    <Text
      id="actualGatewayLabelText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Actual Gateway Date:**"
      verticalAlign="center"
    />
    <Text
      id="bookedGatewayValueText"
      horizontalAlign="right"
      value={
        '{{ \n  (function() {\n    const gatewayDate = item.status?.booked_gateway_date;\n    \n    // 1. Return "No data available" if the date is missing\n    if (!gatewayDate) {\n      return "No data available";\n    }\n\n    // 2. Format the date only if it exists\n    return moment(gatewayDate).format(\'MMM D, YYYY\');\n  })() \n}}'
      }
      verticalAlign="center"
    />
    <Divider id="actualGatewayDivider" />
    <Text
      id="expectedGatewayLabelText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Expected Gateway Date:**"
      verticalAlign="center"
    />
    <Text
      id="timelyGatewayValueText"
      horizontalAlign="right"
      value={
        '{{ \n  (function() {\n    const gatewayDate = item.status?.timely_gateway_date;\n    \n    // 1. Return "No data available" if the date is missing\n    if (!gatewayDate) {\n      return "No data available";\n    }\n\n    // 2. Format the date only if it exists\n    return moment(gatewayDate).format(\'MMM D, YYYY\');\n  })() \n}}'
      }
      verticalAlign="center"
    />
    <Divider id="expectedGatewayDivider" />
    <Text
      id="riskLevelLabelText"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="**Risk level:**"
      verticalAlign="center"
    />
    <TagsWidget2
      id="riskLeveLTag"
      _colorByIndex={[
        "{{ \n(function() {\n  const raw = item.risk_bucket_name || item.withdrawal_risk?.risk_bucket_name;\n  const risk = String(raw || \"\").toLowerCase().trim();\n\n  // If empty or explicitly \"no data\", return Grey\n  if (!risk || risk === \"\" || risk === \"no data available\") return '#E5E7EB';\n\n  const colors = {\n    'high': '#ef4444',   // Red\n    'medium': '#fbbf24', // Amber\n    'very_high': '#991b1b', // Dark Red (or choose #7f1d1d)\n    'low': '#10b981'     // Green\n  };\n\n  return colors[risk] || '#E5E7EB'; \n})() \n}}",
      ]}
      _hiddenByIndex={[false]}
      _iconByIndex={[""]}
      _ids={["4aad8"]}
      _imageByIndex={[""]}
      _labels={[
        '{{ _.startCase(item.risk_bucket_name || item.withdrawal_risk?.risk_bucket_name) || "No data available" }}',
      ]}
      _textColorByIndex={["rgba(255, 255, 255, 1)"]}
      _tooltipByIndex={[""]}
      _values={[
        '{{ item.risk_bucket_name || item.withdrawal_risk?.risk_bucket_name || "No data available" }}',
      ]}
      allowWrap={true}
      colorByIndex=""
      data=""
      hiddenByIndex=""
      horizontalAlign="right"
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      labels=""
      textColorByIndex=""
      tooltipByIndex=""
      values=""
    />
  </View>
</Container>
