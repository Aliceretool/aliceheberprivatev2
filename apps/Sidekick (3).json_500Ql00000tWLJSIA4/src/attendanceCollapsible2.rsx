<Container
  id="attendanceCollapsible2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showHeader={true}
  style={{ background: "canvas", headerBackground: "surfacePrimary" }}
>
  <Header>
    <Text
      id="collapsibleTitle17"
      horizontalAlign="center"
      style={{
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="Attendance"
      verticalAlign="center"
    />
    <Icon
      id="icon13"
      horizontalAlign="center"
      icon="line/interface-validation-check-square-1"
      style={{}}
    />
    <ToggleButton
      id="collapsibleToggle9"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ attendanceCollapsible2.showBody }}"
    >
      <Event
        id="025029f0"
        event="change"
        method="setShowBody"
        params={{ map: { showBody: "{{ self.value }}" } }}
        pluginId="attendanceCollapsible2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Text
      id="collapsibleTitle18"
      horizontalAlign="center"
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
        color: "rgba(13, 13, 13, 0.6)",
      }}
      value={
        '{{\n  (() => {\n    // 1. Get the raw dates from the selected_user\n    const coachDate = selected_user.value?.status.latest_coaching_session_attended_date;\n    const delivDate = selected_user.value?.status.latest_delivery_session_attended_date;\n\n    // 2. CASE A: If both dates are missing -> Return \'None\'\n    if (!coachDate && !delivDate) {\n      return "**None**";\n    }\n\n    // 3. CASE B: Compare dates to find the most recent interaction\n    // We put valid dates into an array and use moment.max\n    const dates = [];\n    if (coachDate) dates.push(moment(coachDate));\n    if (delivDate) dates.push(moment(delivDate));\n\n    const latest = moment.max(dates);\n\n    // 4. Calculate days passed since the latest interaction\n    const daysAgo = moment().diff(latest, \'days\');\n\n    // 5. Determine Status (Over 30 days = Off Track)\n    if (daysAgo > 30) {\n      return "**Off Track**";\n    }\n\n    // Otherwise (Within 30 days)\n    return "**On Track**";\n  })()\n}}'
      }
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <KeyValue
      id="keyValue18"
      data={
        '{{\n  {\n    Coaching: (() => {\n      // 1. Get the Coaching date\n      const date = selected_user.value?.status.latest_coaching_session_attended_date;\n\n      // 2. Format logic\n      if (date) {\n        const formattedDate = moment(date).format("D MMM YYYY");\n        const daysDiff = moment().diff(moment(date), \'days\');\n        const unit = daysDiff === 1 ? "day" : "days";\n        \n        // Returns: "26 Sep 2025 \\n(60 days ago)"\n        return formattedDate + "\\n(" + daysDiff + " " + unit + " ago)";\n      }\n      return "None";\n    })(),\n\n    Delivery: (() => {\n      // 1. Get the Delivery date\n      const date = selected_user.value?.status.latest_delivery_session_attended_date;\n\n      // 2. Format logic\n      if (date) {\n        const formattedDate = moment(date).format("D MMM YYYY");\n        const daysDiff = moment().diff(moment(date), \'days\');\n        const unit = daysDiff === 1 ? "day" : "days";\n\n        // Returns: "11 Nov 2025 \\n(14 days ago)"\n        return formattedDate + "\\n(" + daysDiff + " " + unit + " ago)";\n      }\n      return "None";\n    })(),\n\n    Delivery_sessions_attended: selected_user.value.status.delivery_sessions_attended,\n\n    Delivery_sessions_missed: selected_user.value.status.delivery_sessions_missed\n  }\n}}'
      }
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      labelWrap={true}
    />
  </View>
</Container>
