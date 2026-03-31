<Container
  id="gatewayCollapsible"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showHeader={true}
  style={{ background: "canvas", headerBackground: "surfacePrimary" }}
>
  <Header>
    <Text
      id="collapsibleTitle4"
      horizontalAlign="center"
      style={{
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="Gateway"
      verticalAlign="center"
    />
    <Icon
      id="icon2"
      horizontalAlign="center"
      icon="line/interface-calendar"
      style={{}}
    />
    <ToggleButton
      id="collapsibleToggle2"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ gatewayCollapsible.showBody }}"
    >
      <Event
        id="08b79ebd"
        event="change"
        method="setShowBody"
        params={{ map: { showBody: "{{ self.value }}" } }}
        pluginId="gatewayCollapsible"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Text
      id="collapsibleTitle5"
      horizontalAlign="center"
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
        color: "rgba(13, 13, 13, 0.6)",
      }}
      value={
        '{{\n  (() => {\n    // 1. Get the date from selected_user\n    const date = selected_user.value?.status.booked_gateway_date;\n\n    // 2. Check if date exists\n    if (date) {\n      // 3. Return the formatted date in BOLD (e.g., "**27 Apr 2026**")\n      return "**" + moment(date).format("D MMM YYYY") + "**";\n    }\n\n    // 4. Fallback if no date is found, also in BOLD\n    return "**Pending**";\n  })()\n}}'
      }
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <KeyValue
      id="keyValue12"
      data={
        '{\n  Booked: {{\n    (() => {\n      const date = selected_user.value?.status.booked_gateway_date;\n      if (date) {\n        return `Gateway Booked (${moment(date).format("D MMM YYYY")})`;\n      }\n      return "Pending";\n    })()\n  }},\n  \n  Earliest: {{\n    (() => {\n       const date = selected_user.value?.status.earliest_gateway_date;\n       // Check if date exists, then format. Otherwise return null (blank) or "None"\n       return date ? moment(date).format("D MMM YYYY") : null;\n    })()\n  }},\n  \n  Expected: {{\n    (() => {\n       const date = selected_user.value?.status.actual_gateway_date;\n       return date ? moment(date).format("D MMM YYYY") : null;\n    })()\n  }},\n  \n  Timely: {{\n    (() => {\n       const date = selected_user.value?.status.timely_gateway_date;\n       return date ? moment(date).format("D MMM YYYY") : null;\n    })()\n  }},\n  \n  "EPA": {{\n    (() => {\n      const date = selected_user.value?.status.booked_gateway_start_time;\n      // If date exists, format it. If not, return specific text.\n      return date ? moment(date).format("D MMM YYYY") : "Not booked";\n    })()\n  }}\n}'
      }
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      labelWrap={true}
    >
      <Property
        id="Booked"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Booked"
      />
      <Property
        id="Earliest"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Earliest"
      />
      <Property
        id="Expected"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Expected"
      />
      <Property
        id="Timely"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Timely"
      />
      <Property
        id="EPA"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="EPA"
      />
    </KeyValue>
  </View>
</Container>
