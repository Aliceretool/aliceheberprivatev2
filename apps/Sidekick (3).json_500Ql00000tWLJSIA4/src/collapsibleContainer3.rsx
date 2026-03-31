<Container
  id="collapsibleContainer3"
  footerPadding="4px 12px"
  headerPadding="2px"
  padding="12px"
  showBody="false"
  showHeader={true}
>
  <Header>
    <Text
      id="collapsibleTitle20"
      value="###### Search and Additional Filters"
      verticalAlign="center"
    />
    <Text
      id="collapsibleTitle21"
      heightType="fixed"
      hidden="{{ !self.value }}"
      horizontalAlign="center"
      overflowType="hidden"
      style={{ map: { background: "tokens/a8455576" } }}
      value={
        '{{ (() => {\n  const pick = (v) => (v && typeof v === "object" ? (v.value ?? v.id ?? v.label) : v);\n\n  const toArray = (raw) => {\n    if (Array.isArray(raw)) return raw;\n    if (raw == null) return [];\n    if (typeof raw === "string") {\n      const s = raw.trim();\n      if (!s) return [];\n      if (s.startsWith("[") && s.endsWith("]")) {\n        try {\n          const parsed = JSON.parse(s);\n          return Array.isArray(parsed) ? parsed : [raw];\n        } catch (_) {\n          return [raw];\n        }\n      }\n      return [raw];\n    }\n    return [raw];\n  };\n\n  const canonType = (x) => {\n    const s = String(x ?? "").toLowerCase().trim();\n    if (s === "notes") return "note";\n    if (s === "interventions") return "intervention";\n    if (s === "support factors") return "support_factor";\n    return s;\n  };\n\n  // Top-level type filter: empty = not “active” (means show all)\n  const types = toArray(noteFilterMultiselect2.value).map(pick).filter(Boolean).map(canonType);\n  const typesActive = types.length > 0;\n\n  const includesIntervention = types.includes("intervention");\n  const includesSupport = types.includes("support_factor");\n\n  // Date period active?\n  const dateVal = pick(noteDatePeriodRadio.value) || "all";\n  const dateActive = dateVal !== "all";\n\n  // Sub-filters active (only count if the parent type is selected)\n  const actions = toArray(interventionActionFilterSelect?.value).map(pick).filter(Boolean);\n  const actionsActive = includesIntervention && actions.length > 0;\n\n  const sfs = toArray(supportFactorFilterMultiselect?.value).map(pick).filter(Boolean);\n  const sfActive = includesSupport && sfs.length > 0;\n\n  const count = [typesActive, dateActive, actionsActive, sfActive].filter(Boolean).length;\n\n  return count ? `**${count} active**` : "";\n})() }}'
      }
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle11"
      horizontalAlign="stretch"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer3.showBody }}"
    >
      <Event
        id="524359b2"
        event="change"
        method="setShowBody"
        params={{ map: { showBody: "{{ self.value }}" } }}
        pluginId="collapsibleContainer3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="00030" viewKey="View 1">
    <TextInput
      id="textInput1"
      label="Search"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Multiselect
      id="noteFilterMultiselect2"
      emptyMessage="No options"
      itemMode="static"
      label="Filter by log type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select log type"
      showClear={true}
      showSelectionIndicator={true}
      value="[]"
    >
      <Option id="00030" label="Notes" value="note" />
      <Option id="00031" label="Interventions" value="intervention" />
      <Option id="00032" label="Support factors" value="support_factor" />
      <Event
        id="35235abb"
        event="change"
        method="clearInstanceValues"
        params={{}}
        pluginId="viewNotesList3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="6d75356f"
        enabled={
          '{{ (() => {\n  const pick = (v) => (v && typeof v === "object" ? (v.value ?? v.id ?? v.label) : v);\n  const canon = (x) => {\n    const s = String(x ?? "").toLowerCase().trim();\n    if (s === "notes") return "note";\n    if (s === "interventions") return "intervention";\n    if (s === "support factors") return "support_factor";\n    return s;\n  };\n\n  const raw = noteFilterMultiselect2.value || [];\n  const selected = (Array.isArray(raw) ? raw : [raw]).map(pick).filter(Boolean).map(canon);\n\n  // Run the clear ONLY when interventions are NOT selected\n  return !selected.includes("intervention");\n})() }}'
        }
        event="change"
        method="clearValue"
        params={{}}
        pluginId="interventionActionFilterSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="b9c8349a"
        enabled={
          '{{ (() => {\n  const pick = (v) => (v && typeof v === "object" ? (v.value ?? v.id ?? v.label) : v);\n  const canon = (x) => {\n    const s = String(x ?? "").toLowerCase().trim();\n    if (s === "notes") return "note";\n    if (s === "interventions") return "intervention";\n    if (s === "support factors") return "support_factor";\n    return s;\n  };\n\n  const raw = noteFilterMultiselect2.value || [];\n  const selected = (Array.isArray(raw) ? raw : [raw]).map(pick).filter(Boolean).map(canon);\n\n  // Run the clear ONLY when support_factor is NOT selected\n  return !selected.includes("support_factor");\n})() }}'
        }
        event="change"
        method="clearValue"
        params={{}}
        pluginId="supportFactorFilterMultiselect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="interventionActionFilterSelect"
      data={
        '{{ [\n  { value: "Apprentice Reminder", label: "Apprentice Reminder" },\n  { value: "BIL Actions", label: "BIL Actions" },\n  { value: "Learning Adjustment", label: "Learning Adjustment" },\n  { value: "Meeting Scheduled", label: "Meeting Scheduled" },\n  { value: "Non-Start Review", label: "Non-Start Review" },\n  { value: "Other", label: "Other" },\n  { value: "Referred Apprentice to", label: "Referred Apprentice to…" },\n  { value: "Requested Support from", label: "Requested Support from…" },\n  { value: "Resources Shared", label: "Resources Shared" },\n  { value: "Withdrawal Actions", label: "Withdrawal Actions" }\n] }}'
      }
      disabled={
        '{{ (() => {\n  const pick = (v) => (v && typeof v === "object" ? (v.value ?? v.id ?? v.label) : v);\n  const raw = noteFilterMultiselect2.value;\n  const selected = (Array.isArray(raw) ? raw : (raw ? [raw] : []))\n    .map(pick)\n    .filter(Boolean);\n\n  return !selected.includes("intervention");\n})() }}'
      }
      emptyMessage="No options"
      hidden=""
      label="Filter by intervention action"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.value }}"
      wrapTags={true}
    >
      <Event
        id="ce7993a2"
        event="change"
        method="clearInstanceValues"
        params={{}}
        pluginId="viewNotesList3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="supportFactorFilterMultiselect"
      data={
        '{{ [\n  { value: "Compliance", label: "Compliance" },\n  { value: "Functional Skills", label: "Functional Skills" },\n  { value: "Durable Skills", label: "Durable Skills" },\n  { value: "Job Security", label: "Job Security" },\n  { value: "Manager Support", label: "Manager Support" },\n  { value: "Mental Wellbeing", label: "Mental Wellbeing" },\n  { value: "Neurodiversity", label: "Neurodiversity" },\n  { value: "Physical Wellbeing", label: "Physical Wellbeing" },\n  { value: "Programme Satisfaction", label: "Programme Satisfaction" },\n  { value: "Role Fit", label: "Role Fit" },\n  { value: "Safeguarding", label: "Safeguarding" },\n  { value: "Skill Development", label: "Skill Development" },\n  { value: "Tech & Tools Access", label: "Tech & Tools Access" },\n  { value: "Time Management", label: "Time Management" }\n] }}'
      }
      disabled={
        '{{ (() => {\n  const pick = (v) => (v && typeof v === "object" ? (v.value ?? v.id ?? v.label) : v);\n  const raw = noteFilterMultiselect2.value;\n  const selected = (Array.isArray(raw) ? raw : (raw ? [raw] : []))\n    .map(pick)\n    .filter(Boolean);\n\n  return !selected.includes("support_factor");\n})() }}'
      }
      emptyMessage="No options"
      hidden=""
      label="Filter by support factor type"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.value }}"
      wrapTags={true}
    >
      <Event
        id="4f002223"
        event="change"
        method="clearInstanceValues"
        params={{}}
        pluginId="viewNotesList3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
  </View>
</Container>
