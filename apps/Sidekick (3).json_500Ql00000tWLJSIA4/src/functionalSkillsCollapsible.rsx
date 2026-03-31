<Container
  id="functionalSkillsCollapsible"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showHeader={true}
  style={{ background: "canvas", headerBackground: "surfacePrimary" }}
  styleContext={{ surfacePrimary: "canvas", surfaceSecondary: "canvas" }}
>
  <Header>
    <Text
      id="collapsibleTitle1"
      horizontalAlign="center"
      style={{
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="Functional Skills"
      verticalAlign="center"
    />
    <Icon
      id="icon1"
      horizontalAlign="center"
      icon="line/interface-content-book-edit"
      style={{}}
    />
    <ToggleButton
      id="collapsibleToggle1"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ functionalSkillsCollapsible.showBody }}"
    >
      <Event
        id="6efe4d10"
        event="change"
        method="setShowBody"
        params={{ map: { showBody: "{{ self.value }}" } }}
        pluginId="functionalSkillsCollapsible"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Text
      id="collapsibleTitle3"
      horizontalAlign="center"
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
        color: "rgba(13, 13, 13, 0.6)",
      }}
      value={
        '{{\n  (() => {\n    const maths = selected_user.value?.status?.functional_skills_maths_status;\n    const english = selected_user.value?.status?.functional_skills_english_status;\n\n    const isOptedOut = (maths === "opt_out" && english === "opt_out");\n\n    const actionRequiredStatuses = new Set([\n      "exam_action_required",\n      "exam_action_required_no_evidence",\n    ]);\n\n    const isActionRequired =\n      actionRequiredStatuses.has(maths) ||\n      actionRequiredStatuses.has(english) ||\n      (typeof maths === "string" && maths.startsWith("yet_to_provide_")) ||\n      (typeof english === "string" && english.startsWith("yet_to_provide_"));\n\n    const isPending = (maths === "decision_pending" || english === "decision_pending");\n    const isMissing = (!maths || !english);\n\n    if (isOptedOut) return "**Opted Out**";\n    if (isActionRequired) return "**Action Required**";\n    if (isPending || isMissing) return "**Off Track**";\n    return "**On Track**";\n  })()\n}}'
      }
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <KeyValue
      id="keyValue11"
      data={
        '{\n  Maths: {{(() => {\n    const raw = selected_user.value?.status?.functional_skills_maths_status;\n\n    const labels = {\n      exempt_with_certs: "Exempt (certs provided)",\n      achieved_functional_skills: "Achieved functional skills",\n      pass: "Pass",\n      exam_booked: "Exam booked",\n      exam_action_required: "Exam action required",\n      exam_action_required_no_evidence: "Exam action required (no evidence)",\n      yet_to_provide_extension_granted: "Yet to provide (extension granted)",\n      yet_to_provide_name_change: "Yet to provide (name change)",\n      yet_to_provide_certs: "Yet to provide (certs)",\n      yet_to_provide_unacceptable_evidence: "Yet to provide (unacceptable evidence)",\n      yet_to_provide_degree_uploaded: "Yet to provide (degree uploaded)",\n      opt_out: "Opt out",\n      functional_skills_required_under_19: "Functional skills required (under 19)",\n      decision_pending: "Decision pending",\n    };\n\n    if (!raw) return "—";\n    return labels[raw]\n      ?? raw.replace(/_/g, " ").replace(/\\b\\w/g, (c) => c.toUpperCase());\n  })()}},\n  English: {{(() => {\n    const raw = selected_user.value?.status?.functional_skills_english_status;\n\n    const labels = {\n      exempt_with_certs: "Exempt (certs provided)",\n      achieved_functional_skills: "Achieved functional skills",\n      pass: "Pass",\n      exam_booked: "Exam booked",\n      exam_action_required: "Exam action required",\n      exam_action_required_no_evidence: "Exam action required (no evidence)",\n      yet_to_provide_extension_granted: "Yet to provide (extension granted)",\n      yet_to_provide_name_change: "Yet to provide (name change)",\n      yet_to_provide_certs: "Yet to provide (certs)",\n      yet_to_provide_unacceptable_evidence: "Yet to provide (unacceptable evidence)",\n      yet_to_provide_degree_uploaded: "Yet to provide (degree uploaded)",\n      opt_out: "Opt out",\n      functional_skills_required_under_19: "Functional skills required (under 19)",\n      decision_pending: "Decision pending",\n    };\n\n    if (!raw) return "—";\n    return labels[raw]\n      ?? raw.replace(/_/g, " ").replace(/\\b\\w/g, (c) => c.toUpperCase());\n  })()}}\n}'
      }
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      labelWrap={true}
      style={{}}
    />
  </View>
</Container>
