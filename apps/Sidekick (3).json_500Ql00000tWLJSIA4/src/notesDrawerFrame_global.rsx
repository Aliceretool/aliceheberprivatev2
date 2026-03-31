<DrawerFrame
  id="notesDrawerFrame_global"
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
  width="600px"
>
  <Header>
    <Text
      id="drawerTitle16"
      value="### {{ selected_user.value.learner.first_name}} {{ selected_user.value.learner.last_name }}  Notes"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton16"
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
        pluginId="notesDrawerFrame_global"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text597"
      value="Safeguard learner privacy by documenting only the essential facts and leaving out unnecessary background details"
      verticalAlign="center"
    />
    <Icon
      id="icon25"
      horizontalAlign="center"
      icon="bold/interface-alert-information-circle-alternate"
    />
    <Multiselect
      id="noteFilterMultiselect3"
      emptyMessage="No options"
      itemMode="static"
      label="Filter logs by"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select filters"
      showClear={true}
      showSelectionIndicator={true}
      value="[]"
      wrapTags={true}
    >
      <Option id="00030" label="Notes" value="note" />
      <Option id="00031" label="Interventions" value="intervention" />
      <Option id="00032" label="Support factors" value="support_factor" />
      <Event
        id="35235abb"
        event="change"
        method="clearInstanceValues"
        params={{}}
        pluginId="viewNotesList4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
  </Header>
  <Body>
    <ListViewBeta
      id="viewNotesList4"
      _primaryKeys="{{ item.id }}"
      data={
        '{{ (() => {\n  const notes = getLearnerNotes_global.data?.items || [];\n\n  // Handles values that might be strings OR objects (and various object shapes)\n  const pick = (v) => {\n    if (!v) return v;\n    if (typeof v === "object") return v.value ?? v.id ?? v.label;\n    return v;\n  };\n\n  const raw = noteFilterMultiselect3.value || [];\n  const selected = (Array.isArray(raw) ? raw : [raw])\n    .map(pick)\n    .filter(Boolean);\n\n  // If nothing selected, show all; otherwise filter by content_type\n  const filtered =\n    selected.length === 0 ? notes : notes.filter(n => selected.includes(n.content_type));\n\n  // Oldest -> newest (newest at the bottom)\n  return [...filtered].sort((a, b) => new Date(a.created_at) - new Date(b.created_at));\n})() }}'
      }
      heightType="auto"
      itemWidth="200px"
      margin="0"
      maxHeight="100vh"
      numColumns={3}
      padding="0"
    >
      <Include src="./viewNotesContainer4.rsx" />
    </ListViewBeta>
  </Body>
  <Footer>
    <RadioGroup
      id="noteTypeRadioGroup4"
      groupLayout="wrap"
      hideValidationMessage={true}
      itemMode="static"
      label="Add a new log"
      labelPosition="top"
      value="{{ self.values[1] }}"
    >
      <Option id="00030" label="Note" value="note" />
      <Option id="00031" label="Intervention" value="intervention" />
      <Option id="00032" label="Support Factor" value="support_factor" />
      <Event
        id="516a433e"
        enabled={'{{ noteTypeRadioGroup4.value !== "intervention" }}'}
        event="change"
        method="clearValue"
        params={{}}
        pluginId="interventionActionsMultiselect4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="115cf663"
        enabled={'{{ noteTypeRadioGroup4.value !== "support_factor" }}'}
        event="change"
        method="clearValue"
        params={{}}
        pluginId="supportFactorMultiselect4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Multiselect
      id="supportFactorMultiselect4"
      disabled="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup4.value !== 'support_factor' }}"
      itemMode="static"
      label="Support Factors"
      labelPosition="top"
      loading="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}"
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
    <Select
      id="interventionActionsMultiselect4"
      disabled="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup4.value !== 'intervention' }}"
      itemMode="static"
      label="Intervention Action"
      labelPosition="top"
      loading="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}"
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
        pluginId="getInterventionTypeOptions_global"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="interventionTypeMultiselect4"
      data="{{ getInterventionTypeOptions_global.data }}"
      disabled="{{ 
  postLearnerNote_global.isFetching ||
  postInterventionNote_global.isFetching ||
  postSupportFactorNote_global.isFetching ||
  !interventionActionsMultiselect4.value
}}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup4.value !== 'intervention' }}"
      label="Intervention Type"
      labelPosition="top"
      labels="{{ item.label }}"
      loading="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}"
      overlayMaxHeight={375}
      placeholder="Select an intervention type..."
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.value }}"
    >
      <Event
        id="3ac0dc5a"
        event="change"
        method="run"
        params={{
          map: {
            src: 'const raw = interventionTypeMultiselect4.value;\n\nconst selectedValue = Array.isArray(raw)\n  ? raw[raw.length - 1]\n  : raw;\n\nconst normalizedValue =\n  selectedValue && typeof selectedValue === "object"\n    ? selectedValue.value\n    : selectedValue;\n\nconst match = (getInterventionTypeOptions_global.data || []).find(\n  item => item.value === normalizedValue\n);\n\nnotesInputTextBox3.setValue(interventionTypeMultiselect4.selectedItem?.templateText || "");',
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Divider id="divider29" style={{ map: { color: "surfacePrimary" } }} />
    <TextArea
      id="notesInputTextBox3"
      autoResize={true}
      disabled="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}"
      hideLabel={true}
      labelPosition="top"
      loading="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}"
      maxLines="15"
      minLines={2}
      placeholder="Enter your note..."
    />
    <Button
      id="noteSubmissionButton4"
      disabled={
        '{{ (() => {\n  // Disable while any submit query is running (prevents double-submit + premature clearing issues)\n  const isSubmitting =\n    postLearnerNote_global.isFetching ||\n    postInterventionNote_global.isFetching ||\n    postSupportFactorNote_global.isFetching;\n\n  if (isSubmitting) return true;\n\n  // Helper: if a Select returns {label, value}, grab .value; otherwise use it directly\n  const pick = (v) => (v && typeof v === "object" ? v.value : v);\n\n  const type = pick(noteTypeRadioGroup4.value);\n\n  // Note text required for ALL types\n  const noteText = (notesInputTextBox3.value || "").trim();\n  if (!noteText) return true; // disable if empty\n\n  if (type === "note") {\n    return false; // enabled if note text exists\n  }\n\n  if (type === "intervention") {\n    const action = pick(interventionActionsMultiselect4.value);\n    const iType  = pick(interventionTypeMultiselect4.value);\n    return !(action && iType); // disable unless both selected\n  }\n\n  if (type === "support_factor") {\n    const sf = supportFactorMultiselect4.value;\n    const hasSupportFactor = Array.isArray(sf) ? sf.length > 0 : !!pick(sf);\n    return !hasSupportFactor; // disable unless at least one selected\n  }\n\n  return true; // default: disabled\n})() }}'
      }
      loading="{{ postLearnerNote_global.isFetching || postInterventionNote_global.isFetching || postSupportFactorNote_global.isFetching }}
"
      style={{}}
      text="Send"
    >
      <Event
        id="6009cfc5"
        enabled="{{ noteTypeRadioGroup4.value == 'note'}}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="postLearnerNote_global"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="0ba37c6c"
        enabled="{{ noteTypeRadioGroup4.value == 'intervention'}}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="postInterventionNote_global"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="0ba37c6c"
        enabled="{{ noteTypeRadioGroup4.value == 'support_factor'}}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="postSupportFactorNote_global"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</DrawerFrame>
