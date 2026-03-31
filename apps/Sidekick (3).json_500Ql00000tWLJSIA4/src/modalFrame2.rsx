<ModalFrame
  id="modalFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="0"
  showFooter={true}
  showHeader={true}
  size="large"
>
  <Header>
    <Text id="modalTitle4" value="### Note Editor" verticalAlign="center" />
    <Button
      id="modalCloseButton7"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="25c4ec22"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./container111.rsx" />
    <TextArea
      id="textArea3"
      autoResize={true}
      label=""
      labelPosition="top"
      margin="4px 4px"
      maxLines="1000"
      minLines="40"
      placeholder="Write your log here..."
    />
  </Body>
  <Footer>
    <Text id="text501" value="###### Templates" verticalAlign="center" />
    <RadioGroup
      id="noteTypeRadioGroup3"
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
        enabled={'{{ noteTypeRadioGroup3.value !== "intervention" }}'}
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
        enabled={'{{ noteTypeRadioGroup3.value !== "support_factor" }}'}
        event="change"
        method="clearValue"
        params={{}}
        pluginId="supportFactorMultiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <ButtonGroup2 id="buttonGroup6" overflowPosition={3}>
      <ButtonGroup2-Button id="4d730" styleVariant="outline" text="STAR">
        <Event
          id="f4909b35"
          event="click"
          method="setValue"
          params={{
            map: {
              value:
                '{{ (() => {\n  const current = (textArea3.value || "");\n\n  const star =\n`S — Situation:\n- (Essential facts only)\n\nT — Task:\n- (Goal / expectation)\n\nA — Action:\n- (What happened / what you did / what was agreed)\n\nR — Result:\n- (Outcome + next steps + owners + dates)\n`;\n\n  return current.trim()\n    ? current.trimEnd() + "\\n\\n" + star\n    : star;\n})() }}',
            },
          }}
          pluginId="textArea3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="8e2e1"
        styleVariant="outline"
        text="Session Summary"
      >
        <Event
          id="e1e71d7d"
          event="click"
          method="setValue"
          params={{
            map: {
              value:
                '{{ (() => { const current = (textArea3.value || ""); const tpl = "Session summary:\\n- \\n\\nKey points:\\n- \\n\\nDecisions:\\n- \\n\\nNext steps:\\n- [ ] Owner:\\n      Due:\\n- [ ] Owner:\\n      Due:\\n"; const base = current.replace(/\\s+$/, ""); return base.trim() ? (base + "\\n\\n" + tpl) : tpl; })() }}',
            },
          }}
          pluginId="textArea3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button id="b8dbb" styleVariant="outline" text="Action Plan">
        <Event
          id="49164aea"
          event="click"
          method="setValue"
          params={{
            map: {
              value:
                '{{ (() => { const current = (textArea3.value || ""); const tpl = "Goal:\\n- \\n\\nCurrent situation:\\n- \\n\\nPlan:\\n- \\n\\nActions:\\n- [ ] \\n- [ ] \\n\\nOwner / due date:\\n- Owner:\\n  Due:\\n"; const base = current.replace(/\\s+$/, ""); return base.trim() ? (base + "\\n\\n" + tpl) : tpl; })() }}',
            },
          }}
          pluginId="textArea3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
    <Select
      id="interventionActionsMultiselect3"
      disabled="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup3.value !== 'intervention' }}"
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
      id="interventionTypeMultiselect3"
      data="{{ getInterventionTypeOptions2.data }}"
      disabled="{{ 
  postLearnerNote2.isFetching ||
  postInterventionNote2.isFetching ||
  postSupportFactorNote2.isFetching ||
  !interventionActionsMultiselect2.value
}}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup3.value !== 'intervention' }}"
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
      id="supportFactorMultiselect3"
      disabled="{{ postLearnerNote2.isFetching || postInterventionNote2.isFetching || postSupportFactorNote2.isFetching }}"
      emptyMessage="No options"
      hidden="{{ noteTypeRadioGroup3.value !== 'support_factor' }}"
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
    <Button
      id="noteSubmissionButton3"
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
        enabled="{{ noteTypeRadioGroup3.value == 'note'}}"
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
        enabled="{{ noteTypeRadioGroup3.value == 'intervention'}}"
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
        enabled="{{ noteTypeRadioGroup3.value == 'support_factor'}}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="postSupportFactorNote2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    id="37e2bf86"
    event="hide"
    method="setValue"
    params={{ map: { value: "{{ textArea3.value }}" } }}
    pluginId="notesInputTextBox2"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
