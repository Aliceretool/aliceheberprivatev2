<Screen
  id="NBA_Engine"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={17}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="722d53fe-cb34-4711-b2fc-23377a6f8279"
>
  <Function
    id="filteredLearnerData"
    funcBody={include("../lib/filteredLearnerData.js", "string")}
  />
  <Function
    id="formatter"
    funcBody={include("../lib/formatter.js", "string")}
  />
  <Function
    id="joinedLearnerData"
    funcBody={include("../lib/joinedLearnerData.js", "string")}
  />
  <RetoolAIQuery
    id="AI_call"
    clonedDemoResourceType="retoolAI"
    customSystemMessage={
      '---\n\n# ROLE & IDENTITY\n\nYou are the **Retention Prioritization Agent** and a **Senior Coaching Mentor**. Your role is to act as an expert operational assistant for Learning Coaches at Multiverse. You function as an analytical "Triage Nurse," evaluating learner data to determine who requires immediate intervention based on compliance risks, structural blockers, and behavioral disengagement.\n\n# KNOWLEDGE BASE & TOOL USAGE (RAG INTEGRATION)\n\nYou have access to a Vector Database (Knowledge Base) containing the company’s official documentation:\n\n1. **The EOL Playbook:** Contains the strict compliance timelines and "Escalation Ladder."\n2. **Intervention Logic & In-Depth Template Library:** Contains specific coaching frameworks and message templates.\n3. **Glossary of Terms:** Contains definitions of risk states.\n\n**Agentic Directive:** You must actively query your Knowledge Base when making decisions. If a learner is missing Evidence of Learning (EOL) for an extended period, you MUST retrieve the "EOL Escalation Ladder" from the Playbook to determine the exact mandated action (e.g., verifying if Day 25 requires a Manager CC vs. CSM escalation). Do not guess company policy; retrieve it.\n\n# YOUR CORE PHILOSOPHY\n\n1. **Action > Information:** Do not merely describe the data; prescribe the exact next action.\n2. **The "Green Shoot" Theory:** Prioritize high-risk learners who suddenly show activity (the "Momentum Window").\n3. **Retention > Regulatory:** Prioritize saving the learner over paperwork, *unless* a specific Compliance Red Line (e.g., Day 25+ without EOL) is crossed.\n4. **"Can, Must, Should":** You follow a strict hierarchy of decision logic: *Can* I contact them? *Must* I contact them? *Should* I contact them?\n5. **Remove the Friction:** You communicate using a B2P (Business to People) approach. You do not sound like a cold institution; you act as a knowledgeable peer.\n\n# BUSINESS LOGIC & DECISION TREE\n\nYou must execute the following logic sequence for every learner. Stop at the first step that dictates a specific Tier assignment.\n\n## PHASE 1: THE EMPATHY CHECK (CAN I contact them?) -> TIER 3\n\nAnalyze the Coach Notes, Tags, and contextual data for well-being stop signals.\n\n* **Triggers:** Keywords or tags indicating Sickness, Bereavement, Annual Leave, a formal Break in Learning (BiL), or a confirmed "Peak Period / Capacity Issue" at work.\n* **Action:** Assign **TIER 3 (SNOOZE)**.\n* **Rationale:** Stop auto-chasing. Prioritize well-being over compliance. The recommended action is to "Snooze" or log a "Peak Period Adjustment".\n\n## PHASE 2: THE COMPLIANCE PANIC (MUST I contact them?) -> TIER 1\n\nIf they pass Phase 1, check for hard compliance breaches and systemic blockers. Retrieve the EOL Playbook rules from your Knowledge Base if unsure of the thresholds.\n\n* **Triggers:**\n* *Compliance Risk:* It is past Day 25 without an EOL submission.\n* *The Double Whammy:* The current project submission is delayed AND Off-The-Job (OTJ) hours are critically low.\n* *MIA Manager:* The apprentice\'s line manager has declined or missed two consecutive 3-way reviews.\n* *Double Blockers:* 2+ Medium Risks occurring simultaneously (e.g., #Health + #Manager-Issues).\n\n\n* **Action:** Assign **TIER 1 (URGENT)**.\n* **Rationale:** Immediate intervention is required to prevent a contract breach or withdrawal. Determine the specific escalation path (e.g., Escalate to Manager, Escalate to CSM) by consulting the EOL Escalation Ladder.\n\n## PHASE 3: THE VALUE & STRUCTURAL SCAN (SHOULD I contact them?) -> TIER 2\n\nIf they pass Phases 1 and 2, diagnose structural drag, administrative blockers, or early disengagement.\n\n* **Triggers:**\n* *The 14-Day Flag:* Missing EOL between 14–24 days (Early warning).\n* *The OTJ Imbalance:* High live session attendance but very low OTJ logging (indicates an admin/habit blocker).\n* *The Promotion Trap:* The learner expresses that the course feels irrelevant to their new job role.\n* *IT/Software Blocker:* Waiting on employer IT for licenses or data access.\n\n\n* **Action:** Assign **TIER 2 (PROACTIVE COACHING)**.\n* **Rationale:** The learner needs unblocking, not escalating. The goal is to deploy specific coaching tools (e.g., The Roadmap Visualiser, The Strategic Alignment Framework) retrieved from the Knowledge Base.\n\n## PHASE 4: MESSAGE DRAFTING LAYER ("REMOVE THE FRICTION")\n\nYou must draft the communication based on the assigned Tier and retrieved templates.\n\n**Mandatory Psychological Rules:** Every draft (except Tier 3 Snooze) MUST seamlessly utilize at least ONE of the following psychological triggers from the Coaching Playbook:\n\n1. **The Micro-Goal:** Break a "submission freeze" by asking for a tiny, low-stakes action. *(e.g., "Could you send me a 5-minute rough draft or a single screenshot? It doesn\'t need to be perfect.")*\n2. **The Low-Energy Open:** Acknowledge their workload or health *before* making a request. *(e.g., "I know you\'re coming off a heavy sprint, so I want to keep this brief...")*\n3. **The Bridge (Strategic Alignment):** Connect the learning task to a problem they are trying to solve in their day job. *(e.g., "Let\'s map this data module directly to your Q3 reporting target so it saves you time at work.")*\n4. **The Exit Ramp:** Give them permission to be busy to reduce communication anxiety. *(e.g., "No need to write a long reply to this, just drop a 👍 if this plan works for you.")*\n\n*Tone Directives:*\n\n* *Tier 1 (Compliance):* Urgent, professional, clear deadline. Outline consequences factually without being aggressive.\n* *Tier 2 (Structural):* Empathetic but firm. Acknowledge the struggle, ask for a quick sync to "reset."\n* Always use British English spelling (programme, organise).\n\n# OUTPUT CONFIGURATION (STRICT JSON)\n\nYou must output ONLY a raw JSON object. Do not include markdown formatting, conversational filler, or explanations outside the JSON block. \n\nTarget JSON Schema:\n{\n  "ai_assigned_tier": "Integer (1, 2, or 3)",\n  "ai_reasoning": "String (Explain the path in 2-3 sentences: e.g., \'Recent regression but high historical engagement -> High ROI -> Tier 1\')",\n  "reasoning_headline": "String (Short summary: e.g., \'High ROI: Explainable Regression\' or \'Low ROI: Chronic Non-Engager\')",\n  "recommended_action": "String (Must be one of: \'Send Coach Chat\', \'Send Email\', \'Schedule 1x1\', \'Mark as Done\', \'Snooze\')",\n  "action_type": "String (MUST BE EXACTLY ONE OF: \'Send Email\', \'Send Email + CC Manager\', \'Send Coach Chat\', \'Schedule 1x1\', \'Escalate to CSM\', \'Snooze\')",\n  "draft_message_subject": "String (Subject line if Email, else null)",\n  "ai_draft_message": "String (The drafted text based on Phase 4 logic. If Tier 3 Deprioritize/Snooze, leave empty.)"\n}\n\n```'
    }
    customTemperature="0.2"
    defaultModelInitialized={true}
    enableMockResponseTransformer={true}
    instruction="Analyze this user, assign a tier, if it's tier 1 or 2 - recommend an action and draft communication message according to the system prompt and your knowledge base:

{{ test_table.selectedRow }}

You must output ONLY a raw JSON object. Do not include markdown formatting, conversational filler, or explanations outside the JSON block."
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    model="claude-sonnet-4-6"
    providerId="retoolAIBuiltIn::anthropic"
    providerName="anthropic"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    vectorModeEnabled={true}
    vectorNamespaceIds={["59f9c73b-d886-4b55-ad54-544f010ca3dd"]}
    vectorNamespaceIdsFilters={[
      { namespaceId: "59f9c73b-d886-4b55-ad54-544f010ca3dd", filters: [] },
    ]}
  >
    <Event
      id="db23aba6"
      event="success"
      method="trigger"
      params={{}}
      pluginId="updateAgentState"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolAIQuery>
  <RESTQuery
    id="learner_data"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value.coach?.id }}"}]'
    }
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    openAPIRequestBody=""
    query="sidekick/v1/apprenticeship?size=500"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer={
      "// 1. EXTRACT RECORDS SAFELY\nif (!data) return [];\nlet rows = Array.isArray(data) ? data : (data.items || (data.data && data.data.items ? data.data.items : (data.data || [])));\nif (rows.length === 0) return [];\n\n// 2. SORTING (Using nested paths)\nconst riskScore = { \"Very High\": 6, \"Red\": 5, \"High\": 4, \"Amber\": 3, \"Medium\": 2, \"Low\": 1, \"Green\": 0 };\n\n// Get risk from the nested object\nconst getRisk = (row) => riskScore[row.withdrawal_risk?.risk_bucket_name] || -1;\n\nconst compareDates = (dateA, dateB, direction = 'asc', nullsPosition = 'first') => {\n  if (!dateA && !dateB) return 0; \n  if (!dateA) return nullsPosition === 'first' ? -1 : 1;\n  if (!dateB) return nullsPosition === 'first' ? 1 : -1;\n  return direction === 'asc' ? new Date(dateA).getTime() - new Date(dateB).getTime() : new Date(dateB).getTime() - new Date(dateA).getTime();\n};\n\nconst context = typeof cohort_currentSortContext !== 'undefined' ? cohort_currentSortContext?.value : null;\n\nif (context) {\n  rows.sort((a, b) => {\n    let primaryDiff = 0;\n    \n    if (context === 'eol_priority') {\n      // Look inside the 'status' object\n      const aEol = a.status?.latest_evidence_of_learning_date;\n      const bEol = b.status?.latest_evidence_of_learning_date;\n      primaryDiff = compareDates(aEol, bEol, 'asc', 'first');\n    } \n    else if (context === 'prw_priority') {\n      // Look inside the 'progress_review_summary' object\n      const aPrw = a.progress_review_summary?.previous_progress_review?.completed_at || a.progress_review_summary?.previous_progress_review?.review_date;\n      const bPrw = b.progress_review_summary?.previous_progress_review?.completed_at || b.progress_review_summary?.previous_progress_review?.review_date;\n      primaryDiff = compareDates(aPrw, bPrw, 'asc', 'first');\n    } \n    else if (context === 'gb_priority') {\n      // Look inside the 'status' object\n      const valA = a.status?.booked_gateway_start_time; \n      const valB = b.status?.booked_gateway_start_time;\n      if (!valA && valB) return -1; if (valA && !valB) return 1; if (!valA && !valB) primaryDiff = 0; \n      else primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();\n    } \n    else if (context === 'attendance_priority') {\n      // Look inside the 'status' object\n      const aMissed = a.status?.delivery_sessions_missed || 0;\n      const bMissed = b.status?.delivery_sessions_missed || 0;\n      primaryDiff = bMissed - aMissed;\n    }\n    \n    return primaryDiff !== 0 ? primaryDiff : getRisk(b) - getRisk(a);\n  });\n}\n\n// Return the raw, nested data (now sorted!)\nreturn rows;"
    }
  />
  <JavascriptQuery
    id="updateLearnerStatus"
    notificationDuration={4.5}
    query={include("../lib/updateLearnerStatus.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <GoogleSheetsQuery
    id="test"
    clonedDemoResourceType="googlesheets"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    resourceName="451fc77f-da4b-4cf4-a875-618bfd478886"
    resourceTypeOverride=""
    showSuccessToaster={false}
    spreadsheetId="1csciaaVMqOxDnqOWg-bsf0hycd9rfb3ozccSKadZKDI"
    valueFormatting="unformatted"
  />
  <SqlQueryUnified
    id="Coach_Tags"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/Coach_Tags.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    resourceTypeOverride=""
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateAgentState"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    query={include("../lib/updateAgentState.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main18"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="headerText"
      value="# Sidekick Home Dashboard"
      verticalAlign="center"
    />
    <Table
      id="learner_table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ joinedLearnerData.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      dynamicRowHeights={true}
      enableSaveActions={true}
      groupByColumns={{}}
      headerTextWrap={true}
      rowHeight="small"
      showFooter={true}
      showHeader={true}
      style={{}}
    >
      <Column
        id="e9ee4"
        alignment="left"
        cellTooltip="Open Learner Page"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-user-profile-focus",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="Learner Profile"
        size={30}
        valueOverride=" "
      >
        <Event
          id="39a50fb1"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="75b38ceb"
          event="clickCell"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [
                { key: "UserID", value: "{{ currentSourceRow.email }}" },
              ],
            },
            pageName: "indvidual_learner_view",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="6c7d0"
        alignment="left"
        cellTooltip="Chat to Learner"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/mail-chat-bubble-oval",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconAfter: "",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="sendCoachMessage"
        size={52}
        valueOverride=" "
      >
        <Event
          id="08ddbe15"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/me?chat=User:{{ selected_user.value.id }}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="27d1e"
        alignment="left"
        cellTooltip="Send Email, CC Manager"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconBefore: "line/mail-inbox-envelope-add-1",
        }}
        groupAggregationMode="none"
        placeholder="Enter value"
        position="left"
        referenceId="sendEmail"
        size={30}
        valueOverride=" "
      >
        <Event
          id="19d49163"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}&cc={{ currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="5fafd"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="coach_tags"
        label="Coach tags"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="94e9c"
        alignment="left"
        backgroundColor="rgba(0, 0, 0, 0)"
        editableOptions={{ spellCheck: false }}
        format="avatar"
        formatOptions={{
          automaticColors: false,
          color: "{{ currentSourceRow.cohort }}",
        }}
        groupAggregationMode="none"
        key="learner"
        label="Learner"
        placeholder="No user"
        position="left"
        referenceId="learner_name"
        size={115.78125}
        summaryAggregationMode="none"
        valueOverride="{{item.first_name}} {{ item.last_name }}"
      >
        <Event
          id="334bab9c"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="c4979c07"
          event="clickCell"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [
                { key: "userID", value: "{{ currentSourceRow.email }}" },
              ],
            },
            pageName: "indvidual_learner_view",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="a5b5f"
        alignment="left"
        cellTooltip={
          'Risk Prediction Date: {{ currentSourceRow.withdrawal_risk?.prediction_timestamp ? moment(currentSourceRow.withdrawal_risk.prediction_timestamp).format("DD-MM-YYYY") : "" }}'
        }
        cellTooltipMode="custom"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.withdrawal_risk.risk_bucket_name === "Very High" ? "#C62828" :  // Warning Red (Softer)\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "High"      ? "#FF5252" :  // Bright Red\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "Medium"    ? "#FFA726" :  // Orange Warning\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "Low"       ? "#3C92DC" :  // Blue\n  null \n}}',
        }}
        groupAggregationMode="none"
        key="withdrawal_risk"
        label="Risk"
        optionList={{ manualData: [] }}
        placeholder="Select option"
        position="left"
        referenceId="Risk"
        size={85.96875}
        valueOverride="{{ item.risk_bucket_name }}"
      />
      <Column
        id="f9a6b"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Cohort') }}"
        key="cohort"
        label="Cohort"
        placeholder="Select option"
        position="center"
        referenceId="Cohort"
        size={81}
        valueOverride="{{item.name}}"
      />
      <Column
        id="b9802"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !colSelector.value.includes('Days on Programme') }}"
        key="status"
        label="Days on Programme"
        placeholder="Enter value"
        position="center"
        referenceId="days_on_programme"
        size={90}
        valueOverride="{{ item.latest_days_on_programme}}"
      />
      <Column
        id="4f6ec"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Company') }}"
        key="company"
        label="Company"
        placeholder="Enter value"
        position="center"
        referenceId="Company"
        size={81}
        valueOverride="{{ item.name }}"
      />
      <Column
        id="8a644"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.status.latest_status === "On-Programme"      ? "#3C92DC" : \n  currentSourceRow.status.latest_status === "Completed On-Time" ? "#2EB886" : \n  currentSourceRow.status.latest_status === "Completed Late"    ? "#D4E157" : \n  currentSourceRow.status.latest_status === "Post-Gateway"      ? "#9B51E0" : \n  currentSourceRow.status.latest_status === "On-BIL"            ? "#F2C94C" : \n  currentSourceRow.status.latest_status === "Non-Starter"       ? "#9E9E9E" : \n  currentSourceRow.status.latest_status === "No-Show"           ? "#EB5757" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Status') }}"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        referenceId="latest_status"
        size={106.375}
        valueOverride="{{ item.latest_status }}"
      />
      <Column
        id="ca99b"
        alignment="right"
        cellTooltip="Actual vs Target OTJ: {{ currentSourceRow.status.otj_pct_actual_vs_target_to_date }}%"
        cellTooltipMode="custom"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !colSelector.value.includes('OTJ Total') }}"
        key="status"
        label="OTJ Total"
        placeholder="Enter value"
        position="center"
        referenceId="otj_total"
        size={60}
        summaryAggregationMode="none"
        valueOverride="{{item.otj_submitted_hours_to_date}}"
      />
      <Column
        id="7d664"
        alignment="center"
        editableOptions={{ spellCheck: false }}
        format="boolean"
        formatOptions={{
          automaticColors: true,
          trueIcon: "bold/interface-validation-check-circle-alternate",
          trueColor: "{{ theme.success }}",
          falseIcon: "bold/interface-delete-2-alternate",
          falseColor: "{{ theme.danger }}",
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('EOL Current Month') }}"
        label="EOL Current Month"
        optionList={{
          mode: "manual",
          manualData: [
            { value: "true", label: "Yes" },
            { value: "false", label: "No" },
          ],
        }}
        placeholder="Enter value"
        position="center"
        referenceId="EOL Current Month"
        size={87}
        statusIndicatorOptions={{ manualData: [] }}
        summaryAggregationMode="none"
        valueOverride="{{
  !!(currentSourceRow.status.latest_evidence_of_learning_date && moment(currentSourceRow.status.latest_evidence_of_learning_date).isSame(moment(), 'month'))
}}"
      />
      <Column
        id="02c66"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        editableOptions={{ showStepper: true }}
        format="date"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !colSelector.value.includes('Latest EOL') }}"
        key="status"
        label="Latest EOL"
        placeholder="Enter value"
        position="center"
        referenceId="latest_eol_date"
        size={93}
        tooltip="Last Evidence of Learning

The most recent date that a learner has attended/caught up on a live session, submitted a coaching survey, or logged the relevant type of OTJ"
        valueOverride="{{ item.latest_evidence_of_learning_date }}"
      >
        <Event
          id="6867ebef"
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="cohort_dd_learners_table"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="689bd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="status"
        label="BIL Status"
        placeholder="Select option"
        position="center"
        referenceId="bil_status"
        size={0}
        valueOverride="{{item.bil_process_status}}"
      />
      <Column
        id="559b1"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !colSelector.value.includes('Missed Delivery Sessions (Total)') }}"
        key="status"
        label="Missed Delivery Sessions (Total)"
        placeholder="Enter value"
        position="center"
        referenceId="delivery_sessions_missed"
        size={104}
        valueOverride="{{ item.delivery_sessions_missed }}"
      />
      <Column
        id="f2ce5"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        editableOptions={{ spellCheck: false }}
        format="date"
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Latest Delivery Session') }}"
        key="status"
        label="Latest Delivery Session"
        placeholder="Enter value"
        position="center"
        referenceId="latest_delivery_session_date"
        size={108}
        tooltip="Last attended delivery session

The last time an apprentice attended a delivery session"
        valueOverride="{{ item.latest_delivery_session_attended_date }}"
      />
      <Column
        id="dd3a1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !colSelector.value.includes('Submitted Projects') }}"
        key="project_summary"
        label="Submitted Projects"
        placeholder="Enter value"
        position="center"
        referenceId="total_projects_submitted"
        size={83}
        tooltip="Projects submitted

The total number of projects that a learner has submitted so far. These projects will either be awaiting a review or are already graded"
        valueOverride="{{ item.projects_submitted }}"
      />
      <Column
        id="2afb1"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        editableOptions={{ spellCheck: false }}
        format="date"
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Latest Project') }}"
        key="project_summary"
        label="Latest Project"
        placeholder="Enter value"
        position="center"
        referenceId="latest_project_date"
        size={70}
        valueOverride="{{ item.latest_project_submission.submission_submitted_at }}"
      />
      <Column
        id="a1b41"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Latest Coaching Session') }}"
        key="status"
        label="Latest Coaching Session"
        placeholder="Enter value"
        position="center"
        referenceId="latest_coaching_date"
        size={109}
        tooltip="Last attended coaching session

The last time an apprentice attended a coaching session (group coaching or 1:1)"
        valueOverride="{{ item.latest_coaching_session_attended_date }}"
      />
      <Column
        id="1ab8f"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Latest Completed Progress Review') }}"
        key="progress_review_summary"
        label="Latest Completed Progress Review"
        placeholder="Enter value"
        position="center"
        referenceId="latest_progress_review"
        size={104}
        summaryAggregationMode="none"
        tooltip="Last progress review

The last time the Learner, Manager and Coach completed the Progress Review forms. If async, acknowledgements are required and if sync, a meeting is required"
        valueOverride="{{ item.previous_progress_review.completed_at }}"
      />
      <Column
        id="45f49"
        alignment="left"
        caption="{{ moment(currentSourceRow.status.booked_gateway_date).format('MMM DD, YYYY') }}"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  (currentSourceRow.status.booked_gateway_date) ? "#D1FAE5" : \n  (currentSourceRow.status.latest_days_on_programme / 30.44) >= 5 ? "#FEE2E2" : \n  (currentSourceRow.status.latest_days_on_programme / 30.44) >= 3 ? "#FEF3C7" : \n  (currentSourceRow.status.latest_days_on_programme / 30.44) < 3  ? "#F3F4F6" : \n  null \n}}',
          icon: "",
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Gateway Booked') }}"
        key="status"
        label="Gateway Booked"
        placeholder="Select option"
        position="center"
        referenceId="booked_gateway_date"
        size={103}
        tooltip={
          'Gateway booked\nIf an apprentice\'s gateway session is scheduled\nWhen showing "No":\nGrey: under 3 months on programme\nYellow: 3-4 months on programme\nRed: 5+ months on programme\nBooked gateways are always shown in grey'
        }
        valueOverride="{{ item.booked_gateway_date ? 'Yes' : 'No'}}"
      />
      <Column
        id="7c7ce"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Job Title') }}"
        key="job_title"
        label="Job Title"
        placeholder="Enter value"
        position="center"
        referenceId="learner_job_title"
        size={69}
      />
      <Column
        id="7c745"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="learner"
        label="Learner Email"
        placeholder="Enter value"
        position="center"
        referenceId="learner_email"
        size={0}
        valueOverride="{{ item.email }}"
      >
        <Event
          id="1d338838"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="42c70"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          widthType: "fit",
        }}
        groupAggregationMode="none"
        hidden={'{{ !colSelector.value.includes("Learner\'s Manager") }}'}
        key="apprentice_manager"
        label="Learner's Manager"
        placeholder="Enter value"
        position="center"
        referenceId="manager"
        size={84}
        valueOverride="{{ item.first_name}} {{ item.last_name }}"
      />
      <Column
        id="d1a42"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Manager Email') }}"
        key="apprentice_manager"
        label="Manager Email"
        placeholder="No user"
        position="center"
        referenceId="manager_email"
        size={97}
        valueOverride="{{ item.email }}"
      >
        <Event
          id="044e6ba9"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="db7d3"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="project_summary"
        label="Project summary"
        placeholder="Select option"
        position="center"
        referenceId="latest_project_grade"
        size={0}
        valueOverride="{{item.latest_project_submission_review.details.project_submission_grade}}"
      />
      <Column
        id="eab48"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={0}
      />
      <Column
        id="a47f6"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="coach"
        label="Coach account ID"
        placeholder="Enter value"
        position="center"
        size={0}
        valueOverride="{{ item.id}}"
      />
      <Column
        id="55f18"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="coach"
        label="Coach"
        placeholder="Enter value"
        position="center"
        referenceId="coach_full_name"
        size={0}
        valueOverride="{{item.first_name}} {{item.last_name}}"
      />
      <Column
        id="1e43c"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="status"
        label="Gateway booked"
        placeholder="Enter value"
        position="center"
        referenceId="gateway_booked"
        size={0}
        valueOverride="{{ item.booked_gateway_date }}"
      />
      <Column
        id="3c2e7"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="json"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="learner"
        label="Learner ID"
        placeholder="Enter value"
        position="center"
        referenceId="learner_id"
        size={0}
        valueOverride="{{ item.id }}"
      />
      <Column
        id="86962"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="withdrawal_risk"
        label="Latest risk assessment date"
        placeholder="Enter value"
        position="center"
        size={0}
        valueOverride="{{ item.prediction_timestamp }}"
      />
      <Column
        id="66eba"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="coach"
        label="Coach ID"
        placeholder="Enter value"
        position="center"
        referenceId="coach_id"
        size={0}
        valueOverride="{{ item.id }}"
      />
      <Column
        id="c59ab"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  (currentSourceRow.status.functional_skills_english_status === "Exempt with Certs" || currentSourceRow.status.functional_skills_english_status === "Achieved") ? "#F3F4F6" : \n  (currentSourceRow.status.functional_skills_english_status?.startsWith("Exam") || currentSourceRow.status.latest_days_on_programme >= 180) ? "#FEE2E2" : \n  (currentSourceRow.status.latest_days_on_programme < 180) ? "#FEF3C7" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('English Functional Skills') }}"
        key="status"
        label="English Functional Skills"
        placeholder="Select option"
        position="center"
        referenceId="english_skills"
        size={141}
        tooltip="The overall status of English functional skills completion.
Grey: completed/passed
Yellow: in progress (under 180 days on programme)
Red: urgent action required (180+ days on programme)
Please head to Apprentice Profile for more detail"
        valueOverride="{{ item.functional_skills_english_status }}"
      />
      <Column
        id="df842"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  (currentSourceRow.status.functional_skills_maths_status === "Exempt with Certs" || currentSourceRow.status.functional_skills_maths_status === "Achieved") ? "#F3F4F6" : \n  (currentSourceRow.status.functional_skills_maths_status?.startsWith("Exam") || currentSourceRow.status.latest_days_on_programme >= 180) ? "#FEE2E2" : \n  (currentSourceRow.status.latest_days_on_programme < 180) ? "#FEF3C7" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Maths Functional Skills')}}"
        key="status"
        label="Math Functional Status"
        placeholder="Select option"
        position="center"
        referenceId="math_skills"
        size={100}
        tooltip="The overall status of Maths functional skills completion.
Grey: completed/passed
Yellow: in progress (under 180 days on programme)
Red: urgent action required (180+ days on programme)
Please head to Apprentice Profile for more detail"
        valueOverride="{{ item.functional_skills_maths_status }}"
      />
      <Column
        id="b7a4e"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b2ef2"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="updated_at"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7668a"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="deleted_at"
        label="Deleted at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8f3b8"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="launch_coach"
        label="Launch coach"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="05929"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="success_coach"
        label="Success coach"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cd215"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="sidekick"
        label="Sidekick"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action
        id="ad2fc"
        icon="bold/mail-inbox-envelope-reply"
        label="Email Learner"
      >
        <Event
          id="3c5bdcfb"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="8430b"
        icon="bold/mail-inbox-envelope-favorite"
        label="Email Manager"
      >
        <Event
          id="ab4e79b6"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="cb311"
        icon="bold/mail-inbox-envelope-reply-all"
        label="Email Learner and Manager"
      >
        <Event
          id="31ae09ae"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}&cc={{ currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="d2268"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <ToolbarButton
        id="b974f"
        icon="bold/interface-text-formatting-list-bullets"
        label="Group by"
        type="groupBy"
      />
      <ToolbarButton
        id="6e3c9"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="5b732542"
          event="clickToolbar"
          method="exportData"
          pluginId="learner_table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        id="9357f586"
        event="selectRow"
        method="setValue"
        params={{ map: { value: "{{ currentSourceRow }}" } }}
        pluginId="selected_user"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="aa8839a5"
        event="save"
        method="trigger"
        params={{}}
        pluginId="saveCoachTags_mlv"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Button id="button31" text="Run Agent">
      <Event
        id="626286a0"
        event="click"
        method="trigger"
        params={{}}
        pluginId="AI_call"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Table
      id="test_table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ filteredLearnerData.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      dynamicRowHeights={true}
      enableSaveActions={true}
      groupByColumns={{}}
      headerTextWrap={true}
      rowHeight="small"
      showFooter={true}
      showHeader={true}
      style={{}}
    >
      <Column
        id="e9ee4"
        alignment="left"
        cellTooltip="Open Learner Page"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-user-profile-focus",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="Learner Profile"
        size={30}
        valueOverride=" "
      >
        <Event
          id="39a50fb1"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="75b38ceb"
          event="clickCell"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [
                { key: "UserID", value: "{{ currentSourceRow.email }}" },
              ],
            },
            pageName: "indvidual_learner_view",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="6c7d0"
        alignment="left"
        cellTooltip="Chat to Learner"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/mail-chat-bubble-oval",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconAfter: "",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="sendCoachMessage"
        size={52}
        valueOverride=" "
      >
        <Event
          id="08ddbe15"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/me?chat=User:{{ selected_user.value.id }}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="27d1e"
        alignment="left"
        cellTooltip="Send Email, CC Manager"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconBefore: "line/mail-inbox-envelope-add-1",
        }}
        groupAggregationMode="none"
        placeholder="Enter value"
        position="left"
        referenceId="sendEmail"
        size={30}
        valueOverride=" "
      >
        <Event
          id="19d49163"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}&cc={{ currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="7d664"
        alignment="center"
        editableOptions={{ spellCheck: false }}
        format="boolean"
        formatOptions={{
          automaticColors: true,
          trueIcon: "bold/interface-validation-check-circle-alternate",
          trueColor: "{{ theme.success }}",
          falseIcon: "bold/interface-delete-2-alternate",
          falseColor: "{{ theme.danger }}",
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('EOL Current Month') }}"
        label="EOL Current Month"
        optionList={{
          mode: "manual",
          manualData: [
            { value: "true", label: "Yes" },
            { value: "false", label: "No" },
          ],
        }}
        placeholder="Enter value"
        position="center"
        referenceId="EOL Current Month"
        size={87}
        statusIndicatorOptions={{ manualData: [] }}
        summaryAggregationMode="none"
        valueOverride="{{
  !!(currentSourceRow.status.latest_evidence_of_learning_date && moment(currentSourceRow.status.latest_evidence_of_learning_date).isSame(moment(), 'month'))
}}"
      />
      <Column
        id="bec86"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Coach tags"
        label="Coach tags"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="83017"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Learner"
        label="Learner"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4dd13"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Risk"
        label="Risk"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="fd136"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Cohort"
        label="Cohort"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="30b10"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Days on Programme"
        label="Days on programme"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f9363"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Company"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ea687"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6aeaf"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="OTJ Total"
        label="Otj total"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9f60d"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="EOL Current Month"
        label="Eol current month"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e6df6"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="Latest EOL"
        label="Latest eol"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="90aa2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Missed Delivery Sessions (Total)"
        label="Missed delivery sessions total"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0ffac"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="Latest Delivery Session"
        label="Latest delivery session"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c4707"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Submitted Projects"
        label="Submitted projects"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a772e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Latest Project"
        label="Latest project"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="bda2f"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="Latest Coaching Session"
        label="Latest coaching session"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="99762"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Latest Completed Progress Review"
        label="Latest completed progress review"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1238d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Gateway Booked"
        label="Gateway booked"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f6420"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Job Title"
        label="Job title"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="97260"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Project summary"
        label="Project summary"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9a0a3"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="Gateway booked"
        label="Gateway booked"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2fc48"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Learner ID_1"
        label="Learner ID"
        placeholder="Enter value"
        position="center"
        referenceId="learner_id"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="fad86"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Coach ID"
        label="Coach id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action
        id="ad2fc"
        icon="bold/mail-inbox-envelope-reply"
        label="Email Learner"
      >
        <Event
          id="3c5bdcfb"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="8430b"
        icon="bold/mail-inbox-envelope-favorite"
        label="Email Manager"
      >
        <Event
          id="ab4e79b6"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="cb311"
        icon="bold/mail-inbox-envelope-reply-all"
        label="Email Learner and Manager"
      >
        <Event
          id="31ae09ae"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}&cc={{ currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="d2268"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <ToolbarButton
        id="b974f"
        icon="bold/interface-text-formatting-list-bullets"
        label="Group by"
        type="groupBy"
      />
      <Event
        id="9357f586"
        event="selectRow"
        method="setValue"
        params={{ map: { value: "{{ currentSourceRow }}" } }}
        pluginId="selected_user"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="aa8839a5"
        event="save"
        method="trigger"
        params={{}}
        pluginId="saveCoachTags_mlv"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <KeyValue
      id="keyValue20"
      data="{{ formatter.value }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    />
  </Frame>
</Screen>
