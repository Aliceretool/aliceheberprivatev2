<ModalFrame
  id="learnerProfileModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Avatar
      id="learnerAvatar2"
      fallback="{{ currentLearner.value.learner.first_name }}{{ currentLearner.value.learner.last_name }}"
      imageSize={32}
      label="{{ currentLearner.value.learner.first_name }}{{ currentLearner.value.learner.last_name }}"
      margin="0"
      style={{
        background: "automatic",
        sharedLabelFontSize: "24px",
        sharedLabelFontWeight: "600",
        sharedLabelFontFamily: "Saans, Inter, sans-serif",
      }}
    />
    <TagsWidget2
      id="riskTierTag2"
      allowWrap={true}
      colorByIndex="{{ currentLearner.value?.ai_assigned_tier == 1 ? 'red' : currentLearner.value?.ai_assigned_tier == 2 ? 'yellow' : 'blue' }}"
      data="{{ merged_data_nba.value }}"
      labels="Tier {{ currentLearner.value.ai_assigned_tier}}"
      values="{{ currentLearner.value.ai_assigned_tier}}"
    />
    <Button
      id="closeModalButton2"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="d2b00498"
        event="click"
        method="run"
        params={{ map: { src: "learnerProfileModal.hide();" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <IconText
      id="companyRoleInfo2"
      icon="bold/shopping-bag-suitcase-2"
      text="{{ currentLearner.value.company.name || 'Company' }}"
    />
    <IconText
      id="cohortInfo2"
      icon="bold/programming-application-add"
      text="{{ currentLearner.value.cohort.name || 'Cohort' }}"
    />
  </Header>
  <Body>
    <Include src="./kpiSummaryContainer.rsx" />
    <Container
      id="recommendedActionContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{
        border: "surfacePrimaryBorder",
        borderRadius: "8px",
        background: "#EEF2FF",
      }}
    >
      <Header>
        <Text
          id="recommendedActionTitle"
          value="### Recommended Action"
          verticalAlign="center"
        />
        <Icon
          id="sparkleIcon"
          horizontalAlign="center"
          icon="bold/interface-favorite-star"
          margin="0"
          style={{}}
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Include src="./actionInnerCard.rsx" />
      </View>
    </Container>
    <Container
      id="performanceMetricsContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
    >
      <Header>
        <Text
          id="performanceMetricsTitle"
          value="### Learner Performance"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <KeyValue
          id="keyValue21"
          data={
            '{{\n  (() => {\n    const l = currentLearner.value;\n    if (!l) return {};\n    \n    return {\n      "Tags": l.sidekick?.tags || \'N/A\',\n      "Comments": l.sidekick?.comment || \'N/A\',\n      "BIL Process Status": l.status?.bil_process_status || \'N/A\',\n      "Delivery Attendance": `${l.status?.delivery_sessions_attended || 0} / ${l.status?.delivery_sessions_expected_to_date || 0}`,\n      "Booked Gateway Date": l.status?.booked_gateway_date || l.status?.booked_gateway_start_time || \'Not booked\',\n      "Last PR Completion Date": l.progress_review_summary?.latest_progress_review?.completed_at || \'Not completed\',\n      "Total Projects Submitted": l.project_summary?.projects_submitted || 0,\n      "Last Project Submission Date": l.project_summary?.latest_project_submission?.submission_completed_at || \'No submissions\',\n      "Last Project Grade": l.project_summary?.latest_project_submission_review?.details?.project_submission_grade || \'Not graded\'\n    };\n  })()\n}}'
          }
          editIcon="bold/interface-edit-pencil"
          enableSaveActions={true}
          groupLayout="tree"
          itemLabelPosition="top"
          labelWrap={true}
          style={{
            labelFontSize: "12px",
            labelFontWeight: "700",
            labelFontFamily: "Saans, Inter, sans-serif",
          }}
        >
          <Property
            id="learner"
            editable="false"
            editableOptions={{}}
            format="json"
            formatOptions={{}}
            hidden="true"
            label="Learner"
          />
          <Property
            id="id"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="true"
            label="ID"
          />
          <Property
            id="learner_id"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Learner ID"
          />
          <Property
            id="log_id"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="true"
            label="Log ID"
          />
          <Property
            id="coach_id"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Coach ID"
          />
          <Property
            id="created_at"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Created at"
          />
          <Property
            id="updated_at"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Updated at"
          />
          <Property
            id="ai_assigned_tier"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="true"
            label="Ai assigned tier"
          />
          <Property
            id="ai_reasoning"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Ai reasoning"
          />
          <Property
            id="ai_draft_message"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Ai draft message"
          />
          <Property
            id="reasoning_headline"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Reasoning headline"
          />
          <Property
            id="recommended_action"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Recommended action"
          />
          <Property
            id="draft_message_subject"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Draft message subject"
          />
          <Property
            id="coach_decision"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Coach decision"
          />
          <Property
            id="queue_status"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Queue status"
          />
          <Property
            id="snooze_until_date"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Snooze until date"
          />
          <Property
            id="deleted_at"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Deleted at"
          />
          <Property
            id="job_title"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Job title"
          />
          <Property
            id="apprentice_manager"
            editable="false"
            editableOptions={{}}
            format="json"
            formatOptions={{}}
            hidden="true"
            label="Apprentice manager"
          />
          <Property
            id="coach"
            editable="false"
            editableOptions={{}}
            format="json"
            formatOptions={{}}
            hidden="true"
            label="Coach"
          />
          <Property
            id="launch_coach"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Launch coach"
          />
          <Property
            id="success_coach"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Success coach"
          />
          <Property
            id="cohort"
            editable="false"
            editableOptions={{}}
            format="json"
            formatOptions={{}}
            hidden="true"
            label="Cohort"
          />
          <Property
            id="company"
            editable="false"
            editableOptions={{}}
            format="json"
            formatOptions={{}}
            hidden="true"
            label="Company"
          />
          <Property
            id="apprenticeship_uuid"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Apprenticeship UUID"
          />
          <Property
            id="Last PR Completion Date"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Last PR Completion Date"
          />
          <Property
            id="BIL Process Status"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            hidden="false"
            label="Bil Process Status"
          />
          <Property
            id="Delivery Attendance"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Delivery Attendance"
          />
          <Property
            id="Booked Gateway Date"
            editable="false"
            editableOptions={{}}
            format="date"
            formatOptions={{}}
            hidden="false"
            label="Booked Gateway Date"
          />
          <Property
            id="Total Projects Submitted"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="false"
            label="Total Projects Submitted"
          />
          <Property
            id="Last Project Submission Date"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Last Project Date"
          />
          <Property
            id="Last Project Grade"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Last Project Grade"
          />
        </KeyValue>
      </View>
    </Container>
    <Container
      id="historyNotesContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ border: "surfacePrimaryBorder", borderRadius: "8px" }}
    >
      <Header>
        <Text
          id="historyNotesTitle"
          value="### Latest Notes"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <ListViewBeta
          id="listView9"
          _primaryKeys=""
          data="  {{
     (function() {
       const notes = getLearnerNotes_nba.data?.items || [];
       const sortedNotes = notes.sort((a, b) => 
         new Date(b.created_at) - new Date(a.created_at)
       );
       return sortedNotes.slice(0, 3);
     })()
   }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Include src="./container131.rsx" />
        </ListViewBeta>
      </View>
    </Container>
  </Body>
  <Footer>
    <Container
      id="container130"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="00030" viewKey="View 1">
        <DropdownButton
          id="dislike"
          _colorByIndex={["", "", "", ""]}
          _fallbackTextByIndex={["", "", "", ""]}
          _imageByIndex={["", "", "", ""]}
          _values={["", "", "", "Action 4"]}
          icon="bold/interface-favorite-dislike-2"
          iconPosition="replace"
          itemMode="static"
          margin="0"
          overlayMaxHeight={375}
          style={{ border: "tokens/62eaf613", icon: "tokens/87f4c49a" }}
          styleVariant="outline"
        >
          <Option
            id="00030"
            label="Priority"
            tooltip="Learner shouldn't be recommended or should have a different tier"
          >
            <Event
              id="032ca622"
              event="click"
              method="setValue"
              params={{ map: { value: "{{ item.label }}" } }}
              pluginId="currentFeedback"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="f5e54d16"
              event="click"
              method="trigger"
              params={{}}
              pluginId="sendRecommendationFeedback"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="2cc77cee"
              event="click"
              method="showNotification"
              params={{
                map: {
                  options: {
                    notificationType: "info",
                    title: "Feedback Sent",
                    duration: "3",
                  },
                },
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Option>
          <Option
            id="00031"
            label="Action"
            tooltip="Recommended action is ineffective or doesn't correspond to compliance requirements"
          >
            <Event
              id="24351171"
              event="click"
              method="setValue"
              params={{ map: { value: "{{ item.label}}" } }}
              pluginId="currentFeedback"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="c1ef4461"
              event="click"
              method="trigger"
              params={{}}
              pluginId="sendRecommendationFeedback"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="ffa0d926"
              event="click"
              method="showNotification"
              params={{
                map: {
                  options: {
                    notificationType: "info",
                    title: "Feedback Sent",
                    duration: "3",
                  },
                },
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Option>
          <Option
            id="00032"
            label="Draft Message"
            tooltip="Draft message has wrong data or tone"
          >
            <Event
              id="e1df4d5f"
              event="click"
              method="setValue"
              params={{ map: { value: "{{ item.label }}" } }}
              pluginId="currentFeedback"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="7004419a"
              event="click"
              method="trigger"
              params={{}}
              pluginId="sendRecommendationFeedback"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="8e9864fd"
              event="click"
              method="showNotification"
              params={{
                map: {
                  options: {
                    notificationType: "info",
                    title: "Feedback Sent",
                    duration: "3",
                  },
                },
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Option>
          <Option
            id="f13d7"
            disabled={false}
            hidden={false}
            label="Something else"
          >
            <Event
              id="32beb94b"
              event="click"
              method="setValue"
              params={{ map: { value: "{{ item.label }}" } }}
              pluginId="currentFeedback"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="340c1f76"
              event="click"
              method="trigger"
              params={{}}
              pluginId="sendRecommendationFeedback"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="7915a9d5"
              event="click"
              method="showNotification"
              params={{
                map: {
                  options: {
                    notificationType: "info",
                    title: "Feedback Sent",
                    duration: "3",
                  },
                },
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Option>
        </DropdownButton>
        <Text
          id="text565"
          margin="0"
          value="Rate this recommendation"
          verticalAlign="center"
        />
        <Link
          id="likeButton"
          ariaLabel=""
          disabled=""
          horizontalAlign="center"
          iconBefore="bold/interface-favorite-like-2"
          margin="0"
          style={{ map: { icon: "#4a5ff7" } }}
        >
          <Event
            id="ba3a42d7"
            event="click"
            method="setValue"
            params={{ map: { value: "Like" } }}
            pluginId="currentFeedback"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="3de3d36a"
            event="click"
            method="trigger"
            params={{}}
            pluginId="sendRecommendationFeedback"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="5e7c50ad"
            event="click"
            method="showNotification"
            params={{
              map: {
                options: {
                  notificationType: "info",
                  title: "Feedback Sent",
                  duration: "3",
                },
              },
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Button id="ignoreButton" styleVariant="outline" text="Ignore">
      <Event
        id="2b3fe316"
        event="click"
        method="setValue"
        params={{ map: { value: "ignored" } }}
        pluginId="actionType"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ba449831"
        event="click"
        method="trigger"
        params={{}}
        pluginId="moveRecordToHistoric"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="65aa6960"
        event="click"
        method="hide"
        params={{}}
        pluginId="learnerProfileModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="4f4837e0"
        event="click"
        method="trigger"
        params={{}}
        pluginId="get_agent_state"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="3495ade4"
        event="click"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "info",
              title: "Recommendation Discarded",
              duration: "3",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="d02a2aca"
        event="click"
        method="setValue"
        params={{ map: { value: "null" } }}
        pluginId="snoozeDate"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <DropdownButton
      id="snoozeButton"
      _colorByIndex={["", "", "", ""]}
      _fallbackTextByIndex={["", "", "", ""]}
      _imageByIndex={["", "", "", ""]}
      _values={["", "", "", "Action 4"]}
      data={
        '[\n  { label: "Tomorrow", value: 1 },\n  { label: "In 3 Days", value: 3 },\n  { label: "In 1 Week", value: 7 },\n  { label: "In 2 Weeks", value: 14 }\n]'
      }
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      styleVariant="outline"
      text="Snooze & Remind"
      tooltipText="Pause recommendations for this learner until the selected date"
    >
      <Option id="00030" label="Tomorrow" />
      <Option id="00031" label="in 3 days" />
      <Option id="00032" label="in 1 Week" />
      <Option id="ee211" disabled={false} hidden={false} label="in 2 Weeks" />
      <Event
        id="45035bcc"
        event="click"
        method="run"
        params={{
          map: {
            src: "// 1. Retool automatically passes the clicked 'item' into this script!\nconst daysToSnooze = item.value; \n\n// 2. Safety Check (Just in case)\nif (!daysToSnooze) {\n  utils.showNotification({ \n    title: 'Error', \n    description: 'Invalid snooze duration.', \n    notificationType: 'error' \n  });\n  return; \n}\n\n// 3. Calculate the exact future date dynamically\nconst targetDate = moment().add(daysToSnooze, 'days').format('YYYY-MM-DD');\n\n// 4. Set the state variables before archiving\nactionType.setValue('Snoozed');\nsnoozeDate.setValue(targetDate);\n\n// 5. Handle the Backend (Move to history with snooze date)\nawait moveRecordToHistoric.trigger();\n\n// 6. Clean up the UI\nawait get_agent_state.trigger(); \nlearnerProfileModal.hide(); \n\n// 7. Clear the state variables after modal closes\nactionType.setValue(null);\nsnoozeDate.setValue(null);\n\n// 8. Show Success Toast\nconst displayDate = moment(targetDate).format('MMM Do'); \nutils.showNotification({\n  title: 'Learner Snoozed',\n  description: `Removed from queue. We'll evaluate them again on ${displayDate}.`,\n  notificationType: 'success',\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </DropdownButton>
    <Button
      id="actionButton"
      iconBefore="bold/interface-validation-check"
      style={{ background: "#22C55E", label: "#FFFFFF" }}
      text={
        '{{\n  (function() {\n    const action = currentLearner.value?.action_type;\n    \n    if (action === "Send Email" || action === "Send Email + CC Manager" || action === "Escalate to CSM") {\n      return "Open Draft in Gmail";\n    } \n    if (action === "Send Coach Chat") {\n      return "Open in Coach Chat";\n    }\n    \n    // Fallback for "Schedule 1x1" or any other manual task\n    return "Mark as Done";\n  })()\n}}'
      }
    >
      <Event
        id="10718879"
        event="click"
        method="run"
        params={{
          map: {
            src: "// 1. Gather variables\nconst currentActionType = currentLearner.value?.action_type;\nconst emailActions = ['Send Email', 'Send Email + CC Manager', 'Escalate to CSM'];\nconst chatActions = ['Send Coach Chat', 'Send Coach Chat Message', 'Send Chat Message', 'Coach Chat'];\nlet dbActionType = 'Completed_Manually';\n\n// 2. Handle the Frontend Routing (Opening apps or copying text)\nif (emailActions.includes(currentActionType)) {\n  // Build the Gmail link\n  const email = currentLearner.value?.learner?.email || ''; \n  const subject = encodeURIComponent(currentLearner.value?.draft_message_subject || '');\n  const body = encodeURIComponent(draftMessageTextArea.value || '');\n  \n  // Add manager to CC if action requires it\n  let mailtoUrl = `mailto:${email}?subject=${subject}&body=${body}`;\n  \n  if (currentActionType === 'Send Email + CC Manager') {\n    const managerEmail = currentLearner.value?.apprentice_manager?.email || '';\n    if (managerEmail) {\n      mailtoUrl += `&cc=${encodeURIComponent(managerEmail)}`;\n    }\n  }\n  \n  // Open the default email client (Gmail/Outlook)\n  utils.openUrl(mailtoUrl);\n  dbActionType = 'Approved_and_Sent';\n  \n} else if (chatActions.includes(currentActionType)) {\n  // Copy the drafted message to the coach's clipboard\n  utils.copyToClipboard(draftMessageTextArea.value || '');\n  \n  // Open the Multiverse Coach Chat platform\n  utils.openUrl(`https://platform.multiverse.io/manager/me?chat=User:${currentLearner.value?.learner_id}`, { newTab: true });\n  \n  dbActionType = 'Approved_and_Sent';\n}\n\n// 3. Set the actionType state variable before archiving\nactionType.setValue(dbActionType);\n\n// 4. Handle the Backend (Moving to History)\nawait moveRecordToHistoric.trigger();\n\n// 5. Clean up the UI\nawait get_agent_state.trigger(); // Refresh the coach's queue\nlearnerProfileModal.hide(); \nsnoozeDate.setValue(null);\n\n// 6. Show Success Toast\nutils.showNotification({\n  title: 'Success',\n  description: `Action logged as ${dbActionType.replace(/_/g, ' ')}.`,\n  notificationType: 'success',\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
