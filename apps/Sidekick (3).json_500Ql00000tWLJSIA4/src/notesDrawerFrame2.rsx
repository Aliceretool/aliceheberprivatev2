<DrawerFrame
  id="notesDrawerFrame2"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="true"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="725px"
>
  <Header>
    <Text
      id="drawerTitle12"
      value="### {{ selected_user.value.learner.first_name}} {{ selected_user.value.learner.last_name }}  Notes"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton12"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="6643b59a"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="notesDrawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Icon
      id="icon16"
      horizontalAlign="center"
      icon="bold/interface-alert-information-circle-alternate"
    />
    <Text
      id="text496"
      heightType="fixed"
      value="Safeguard learner privacy by documenting only the essential facts and leaving out unnecessary background details"
      verticalAlign="center"
    />
    <Include src="./collapsibleContainer3.rsx" />
    <RadioGroup
      id="noteDatePeriodRadio"
      captionByIndex=""
      data={
        '{{ [\n  {\n    value: "all",\n    label: "All time",\n    tooltip: "Shows all logs regardless of date."\n  },\n  {\n    value: "last_week",\n    label: "Last week",\n    tooltip: "Shows logs created in the last 7 days (rolling from now)."\n  },\n  {\n    value: "last_month",\n    label: "Last month",\n    tooltip: "Shows logs created in the last 30 days (rolling from now)."\n  },\n  {\n    value: "last_6_months",\n    label: "Last 6 months",\n    tooltip: "Shows logs created in the last 6 months (rolling from now, including today)."\n  }\n] }}'
      }
      groupLayout="wrap"
      label="Filter logs by date"
      labelPosition="top"
      labels="{{ item.label }}"
      tooltipByIndex="{{ item.tooltip }}"
      value="{{ self.values[0] }}"
      values="{{ item.value }}"
    >
      <Event
        id="1afffc79"
        event="change"
        method="clearInstanceValues"
        params={{}}
        pluginId="viewNotesList3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Spacer id="spacer28" />
    <Spacer id="spacer27" />
    <ButtonGroup2 id="buttonGroup4" overflowPosition={1}>
      <ButtonGroup2-Button
        id="d0975"
        backgroundColor={'{{ theme._tokensById["a8455576"] }}'}
        borderColor={'{{ theme._tokensById["b835ba48"] }}'}
        hidden={
          '{{ (() => {\n  const pick = (v) => (v && typeof v === "object" ? (v.value ?? v.id ?? v.label) : v);\n  const toArray = (raw) => (Array.isArray(raw) ? raw : raw == null ? [] : [raw]);\n\n  const canonType = (x) => {\n    const s = String(x ?? "").toLowerCase().trim();\n    if (s === "notes") return "note";\n    if (s === "interventions") return "intervention";\n    if (s === "support factors") return "support_factor";\n    return s;\n  };\n\n  const types = toArray(noteFilterMultiselect2.value).map(pick).filter(Boolean).map(canonType);\n  const typesActive = types.length > 0;\n\n  const includesIntervention = types.includes("intervention");\n  const includesSupport = types.includes("support_factor");\n\n  const dateVal = pick(noteDatePeriodRadio.value) || "all";\n  const dateActive = dateVal !== "all";\n\n  const actions = toArray(interventionActionFilterSelect?.value).map(pick).filter(Boolean);\n  const actionsActive = includesIntervention && actions.length > 0;\n\n  const sfs = toArray(supportFactorFilterMultiselect?.value).map(pick).filter(Boolean);\n  const sfActive = includesSupport && sfs.length > 0;\n\n  const count = [typesActive, dateActive, actionsActive, sfActive].filter(Boolean).length;\n  return count === 0;\n})() }}'
        }
        styleVariant="outline"
        text="Clear Filters"
        tooltip="Clear all active filters"
      >
        <Event
          id="9ae8080c"
          event="click"
          method="trigger"
          params={{}}
          pluginId="clearNotesFilters"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
    <ButtonGroup2 id="buttonGroup3" overflowPosition={2}>
      <ButtonGroup2-Button
        id="c9908"
        icon="bold/interface-arrows-button-down-double"
        iconPosition="replace"
        styleVariant="outline"
        text="Expand All"
        tooltip="Expand All"
      >
        <Event
          id="fea62f08"
          event="click"
          method="run"
          params={{
            map: {
              src: "const rows = viewNotesList3.data || [];\nexpandedNoteIds.setValue(rows.map(r => String(r.id)));",
            },
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="bd9d3"
        icon="bold/interface-arrows-button-up-double"
        iconPosition="replace"
        styleVariant="outline"
        text="Collapse All"
        tooltip="Collapse All"
      >
        <Event
          id="8e1e26cc"
          event="click"
          method="run"
          params={{
            map: {
              src: "const rows = viewNotesList3.data || [];\nif (!rows.length) {\n  expandedNoteIds.setValue([]);\n  return;\n}\n\nconst lastIndex = rows.length - 1;\nconst lastId = String(rows[lastIndex].id);\n\n// Collapse everything except latest\nexpandedNoteIds.setValue([lastId]);\n\n// Let the collapses/expansion finish before scrolling.\n// If your collapsible animates, this delay matters.\nsetTimeout(() => {\n  viewNotesList3.scrollToIndex(lastIndex);\n\n  // Second scroll fixes “overshoot” caused by height animation/reflow\n  setTimeout(() => viewNotesList3.scrollToIndex(lastIndex), 75);\n}, 250);",
            },
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Header>
  <Body>
    <ListViewBeta
      id="viewNotesList3"
      _primaryKeys="{{ item.id }}"
      data={
        '{{ (() => {\n  const notes = getLearnerNotes2.data?.items || [];\n\n  // Robust helpers: normalize Retool strings/objects/arrays\n  const pick = (v) => {\n    if (!v) return v;\n    if (typeof v === "object") return v.value ?? v.id ?? v.label;\n    return v;\n  };\n\n  const toArray = (raw) => {\n    if (Array.isArray(raw)) return raw;\n    if (raw == null) return [];\n    if (typeof raw === "string") {\n      const s = raw.trim();\n      if (!s) return [];\n      // Handle edge case where Retool stores "[]"\n      if (s.startsWith("[") && s.endsWith("]")) {\n        try {\n          const parsed = JSON.parse(s);\n          return Array.isArray(parsed) ? parsed : [raw];\n        } catch (_) {\n          return [raw];\n        }\n      }\n      return [raw];\n    }\n    return [raw];\n  };\n\n  // ---------- 1) Top-level content_type filter ----------\n  const selectedTypes = toArray(noteFilterMultiselect2.value).map(pick).filter(Boolean);\n\n  let out =\n    selectedTypes.length === 0\n      ? notes\n      : notes.filter((n) => selectedTypes.includes(n.content_type));\n\n  // ---------- 2) Rolling date filter ----------\n  const period = pick(noteDatePeriodRadio.value) || "all";\n  const end = moment().endOf("day");\n  let start = null;\n\n  if (period === "last_week") {\n    start = moment().subtract(7, "days").startOf("day");\n  } else if (period === "last_month") {\n    start = moment().subtract(30, "days").startOf("day");\n  } else if (period === "last_6_months") {\n    start = moment().subtract(6, "months").startOf("day");\n  }\n\n  if (start) {\n    const startDate = start.toDate();\n    const endDate = end.toDate();\n\n    out = out.filter((n) => {\n      const created = new Date(n.created_at);\n      if (Number.isNaN(created.getTime())) return false; // exclude invalid dates when date filter active\n      return created >= startDate && created <= endDate;\n    });\n  }\n\n  // ---------- 3) Sub-filter: Intervention actions (multi) ----------\n  // Applies ONLY to intervention rows, so it works when notes/support_factor are also selected.\n  const selectedActions = toArray(interventionActionFilterSelect.value).map(pick).filter(Boolean);\n\n  if (selectedActions.length > 0) {\n    out = out.filter((n) => {\n      if (n.content_type !== "intervention") return true;\n      return selectedActions.includes(n.intervention_action);\n    });\n  }\n\n  // ---------- 4) Sub-filter: Support factors (multi) ----------\n  // Applies ONLY to support_factor rows.\n  const selectedSF = toArray(supportFactorFilterMultiselect.value).map(pick).filter(Boolean);\n\n  if (selectedSF.length > 0) {\n    out = out.filter((n) => {\n      if (n.content_type !== "support_factor") return true;\n      const sf = Array.isArray(n.support_factors) ? n.support_factors : [];\n      // OR match: any selected factor\n      return selectedSF.some((x) => sf.includes(x));\n    });\n  }\n\n  // ---------- 5) Sort: oldest -> newest ----------\n  return [...out].sort((a, b) => new Date(a.created_at) - new Date(b.created_at));\n})() }}'
      }
      heightType="auto"
      itemWidth="200px"
      margin="0"
      maxHeight="100vh"
      numColumns={3}
      padding="8px"
    >
      <Container
        id="viewNotesContainer3"
        _align="center"
        _direction="vertical"
        _gap="0px"
        _justify="space-between"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        overflowType="hidden"
        padding="0"
        showBody={true}
        showBorder={false}
      >
        <View id="00030" viewKey="View 1">
          <Include src="./collapsibleContainer2.rsx" />
        </View>
      </Container>
    </ListViewBeta>
  </Body>
  <Footer>
    <RadioGroup
      id="noteTypeRadioGroup2"
      groupLayout="wrap"
      hideValidationMessage={true}
      itemMode="static"
      label="Add a new log"
      labelPosition="top"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" label="Note" value="note" />
      <Option id="00031" label="Intervention" value="intervention" />
      <Option id="00032" label="Support Factor" value="support_factor" />
      <Event
        id="516a433e"
        enabled={'{{ noteTypeRadioGroup2.value !== "intervention" }}'}
        event="change"
        method="clearValue"
        params={{}}
        pluginId="interventionActionsMultiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="115cf663"
        enabled={'{{ noteTypeRadioGroup2.value !== "support_factor" }}'}
        event="change"
        method="clearValue"
        params={{}}
        pluginId="supportFactorMultiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <ButtonGroup2 id="buttonGroup2" alignment="right" overflowPosition={1}>
      <ButtonGroup2-Button
        id="9162a"
        styleVariant="outline"
        text="Copy All Notes"
      >
        <Event
          id="fe33aa28"
          event="click"
          method="trigger"
          params={{}}
          pluginId="copyAllNotes"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
    <Select
      id="interventionActionsMultiselect2"
      disabled="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup2.value !== 'intervention' }}"
      itemMode="static"
      label="Intervention Action"
      labelPosition="top"
      loading="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      overlayMaxHeight={375}
      placeholder="Select an intervention action..."
      showClear={true}
      showSelectionIndicator={true}
    >
      <Option id="00030" value="Apprentice Reminder" />
      <Option id="00031" value="BIL Actions" />
      <Option id="00032" value="Learning Adjustment" />
      <Option
        id="a4a04"
        disabled={false}
        hidden={false}
        value="Meeting Scheduled"
      />
      <Option
        id="68e32"
        disabled={false}
        hidden={false}
        value="Non-Start Review"
      />
      <Option id="464ad" disabled={false} hidden={false} value="Other" />
      <Option
        id="e4469"
        disabled={false}
        hidden={false}
        label="Referred Apprentice to..."
        value="Referred Apprentice to"
      />
      <Option
        id="1ad2f"
        disabled={false}
        hidden={false}
        label="Requested Support from..."
        value="Requested Support from"
      />
      <Option
        id="c446a"
        disabled={false}
        hidden={false}
        value="Resources Shared"
      />
      <Option
        id="26904"
        disabled={false}
        hidden={false}
        value="Withdrawal Actions"
      />
      <Event
        id="0eec6f87"
        event="change"
        method="trigger"
        params={{}}
        pluginId="getInterventionTypeOptions2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="interventionTypeMultiselect2"
      data="{{ getInterventionTypeOptions2.data }}"
      disabled="{{ 
  postLearnerNote2.isFetching ||
  postInterventionNote2.isFetching ||
  postSupportFactorNote2.isFetching ||
  !interventionActionsMultiselect2.value
}}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup2.value !== 'intervention' }}"
      label="Intervention Type"
      labelPosition="top"
      labels="{{ item.label }}"
      loading="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      overlayMaxHeight={375}
      placeholder="Select an intervention type..."
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.value }}"
    />
    <Multiselect
      id="supportFactorMultiselect2"
      disabled="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup2.value !== 'support_factor' }}"
      itemMode="static"
      label="Support Factors"
      labelPosition="top"
      loading="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      overlayMaxHeight={375}
      placeholder="Select support factors..."
      showClear={true}
      showSelectionIndicator={true}
      wrapTags={true}
    >
      <Option id="43719" disabled={false} hidden={false} value="Compliance" />
      <Option
        id="427e7"
        disabled={false}
        hidden={false}
        value="Functional Skills"
      />
      <Option
        id="9a1e0"
        disabled={false}
        hidden={false}
        value="Durable Skills"
      />
      <Option id="74af3" disabled={false} hidden={false} value="Job Security" />
      <Option
        id="08e6f"
        disabled={false}
        hidden={false}
        value="Manager Support"
      />
      <Option
        id="3d689"
        disabled={false}
        hidden={false}
        value="Mental Wellbeing"
      />
      <Option
        id="239d3"
        disabled={false}
        hidden={false}
        value="Neurodiversity"
      />
      <Option
        id="8e3ce"
        disabled={false}
        hidden={false}
        value="Physical Wellbeing"
      />
      <Option
        id="1e96f"
        disabled={false}
        hidden={false}
        value="Programme Satisfaction"
      />
      <Option id="a7e22" disabled={false} hidden={false} value="Role Fit" />
      <Option id="98ad6" disabled={false} hidden={false} value="Safeguarding" />
      <Option
        id="b618e"
        disabled={false}
        hidden={false}
        value="Skill Development"
      />
      <Option
        id="ef53b"
        disabled={false}
        hidden={false}
        value="Tech & Tools Access"
      />
      <Option
        id="ca3dc"
        disabled={false}
        hidden={false}
        value="Time Management"
      />
    </Multiselect>
    <Divider id="divider25" style={{ map: { color: "surfacePrimary" } }} />
    <TextArea
      id="notesInputTextBox2"
      autoResize={true}
      disabled="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      hideLabel={true}
      labelPosition="top"
      loading="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      maxLines="15"
      minLines={2}
      placeholder="Enter your note..."
    />
    <Button
      id="noteSubmissionButton2"
      disabled={
        '{{ (() => {\n  // Disable while any submit query is running (prevents double-submit + premature clearing issues)\n  const isSubmitting =\n    postLearnerNote2.isFetching ||\n    postInterventionNote2.isFetching ||\n    postSupportFactorNote2.isFetching;\n\n  if (isSubmitting) return true;\n\n  // Helper: if a Select returns {label, value}, grab .value; otherwise use it directly\n  const pick = (v) => (v && typeof v === "object" ? v.value : v);\n\n  const type = pick(noteTypeRadioGroup2.value);\n\n  // Note text required for ALL types\n  const noteText = (notesInputTextBox2.value || "").trim();\n  if (!noteText) return true; // disable if empty\n\n  if (type === "note") {\n    return false; // enabled if note text exists\n  }\n\n  if (type === "intervention") {\n    const action = pick(interventionActionsMultiselect2.value);\n    const iType  = pick(interventionTypeMultiselect2.value);\n    return !(action && iType); // disable unless both selected\n  }\n\n  if (type === "support_factor") {\n    const sf = supportFactorMultiselect2.value;\n    const hasSupportFactor = Array.isArray(sf) ? sf.length > 0 : !!pick(sf);\n    return !hasSupportFactor; // disable unless at least one selected\n  }\n\n  return true; // default: disabled\n})() }}'
      }
      loading="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}
"
      style={{}}
      text="Send"
    >
      <Event
        id="6009cfc5"
        enabled="{{ noteTypeRadioGroup2.value == 'note'}}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="postLearnerNote2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="0ba37c6c"
        enabled="{{ noteTypeRadioGroup2.value == 'intervention'}}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="postInterventionNote2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="0ba37c6c"
        enabled="{{ noteTypeRadioGroup2.value == 'support_factor'}}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="postSupportFactorNote2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <ButtonGroup2 id="buttonGroup5" alignment="left" overflowPosition={1}>
      <ButtonGroup2-Button
        id="9162a"
        icon="bold/interface-edit-write-1"
        iconPosition="replace"
        styleVariant="outline"
        text="Open Text Editor"
      >
        <Event
          id="fe33aa28"
          event="click"
          method="show"
          params={{}}
          pluginId="modalFrame2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="d0b9c617"
          event="click"
          method="setValue"
          params={{ map: { value: "{{ notesInputTextBox2.value }}" } }}
          pluginId="textArea3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
</DrawerFrame>
