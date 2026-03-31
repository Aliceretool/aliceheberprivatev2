<Container
  id="otjCollapsible2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showHeader={true}
  style={{ background: "canvas", headerBackground: "surfacePrimary" }}
  styleContext={{}}
>
  <Header>
    <Text
      id="collapsibleTitle15"
      horizontalAlign="center"
      style={{
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="Off the Job"
      verticalAlign="center"
    />
    <Icon
      id="icon12"
      horizontalAlign="center"
      icon="line/interface-time-clock-circle"
      style={{}}
    />
    <ToggleButton
      id="collapsibleToggle8"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ otjCollapsible2.showBody }}"
    >
      <Event
        id="c3093659"
        event="change"
        method="setShowBody"
        params={{ map: { showBody: "{{ self.value }}" } }}
        pluginId="otjCollapsible2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Text
      id="collapsibleTitle16"
      horizontalAlign="center"
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
        color: "rgba(13, 13, 13, 0.6)",
      }}
      value={
        '{{\n  (() => {\n    // 1. Get the raw percentage value safely from the selected user\n    const rawValue = selected_user.value?.status.otj_pct_actual_vs_target_to_date;\n\n    // 2. Cast to a Number\n    // We use parseFloat so it handles "85", "85.5", or 85 equally well.\n    // If the field is null or empty, it defaults to 0.\n    const percent = parseFloat(rawValue || 0);\n\n    // 3. Apply the 90% Rule\n    // Requirement: Equal to or less than 90% = Off Track\n    if (percent <= 90) {\n        return "**Off Track**";\n    }\n\n    // 4. Otherwise = On Track\n    return "**On Track**";\n  })()\n}}'
      }
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <KeyValue
      id="keyValue17"
      data={
        '{{\n  (function() {\n    // 1. SETUP: Get the raw values safely\n    // We use parseFloat to handle strings like "57" or numbers like 57\n    const actual = parseFloat(selected_user.value.status.otj_submitted_hours_to_date || 0);\n    const percentRaw = parseFloat(selected_user.value.status.otj_pct_actual_vs_target_to_date || 0);\n\n    // 2. MATH: Calculate the Expected Target\n    // Formula: Actual / (Percent / 100)\n    // Example: 80 actual / 0.80 percent = 100 expected\n    let expected = 0;\n    if (percentRaw > 0) {\n       expected = actual / (percentRaw / 100);\n    }\n\n    // 3. LOGIC: Calculate the Difference (Behind/Ahead)\n    // If Actual is 57 and Expected is 160, Diff is -103 (Behind)\n    const diff = actual - expected;\n\n    // Determine the text label\n    let statusLabel = "On Track";\n    if (diff > 0.5) statusLabel = "Ahead by"; // Using 0.5 buffer for rounding\n    if (diff < -0.5) statusLabel = "Behind by";\n\n    // 4. OUTPUT: Return the final JSON object\n    return {\n      "Expected to date": expected.toFixed(0) + " hrs",\n      "Completed to date": actual.toFixed(0) + " hrs",\n      "Behind or ahead": `${statusLabel} ${Math.abs(diff).toFixed(0)} hrs`\n    };\n  })()\n}}'
      }
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      labelWrap={true}
    >
      <Property
        id="Expected to date"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Expected to date"
      />
    </KeyValue>
    <Button
      id="button26"
      style={{
        border: "primary",
        background: "surfacePrimary",
        hoverBackground: "rgba(227, 227, 227, 0.35)",
        label: "primary",
      }}
      text="View OTJ logs"
    >
      <Event
        id="910c0b8d"
        event="click"
        method="openUrl"
        params={{
          map: {
            url: "https://analytics.multiverse.io/tableau?s=EoLAttendance/EOLLog",
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
