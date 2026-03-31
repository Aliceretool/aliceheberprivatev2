<Screen
  id="coach_digest"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="bbd5ac1c-fe25-4587-a28f-a6b2e3b14af8"
>
  <OpenAPIQuery
    id="coachCalendarEvents"
    clonedDemoResourceType="googleCalendar"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    method="get"
    mockResponseTransformer="return "
    notificationDuration="2.5"
    operationId="calendar_events_list"
    parameterDynamicStates={
      '{"calendarId":false,"alwaysIncludeEmail":false,"iCalUID":false,"maxAttendees":false,"maxResults":false,"orderBy":false,"pageToken":false,"privateExtendedProperty":false,"q":false,"sharedExtendedProperty":false,"showDeleted":false,"showHiddenInvitations":false,"singleEvents":false,"syncToken":false,"timeMax":false,"timeMin":false,"timeZone":false,"updatedMin":false,"fields":false,"prettyPrint":false,"alt":false,"key":false,"oauth_token":false,"quotaUser":false,"userIp":false}'
    }
    parameterMetadata="{}"
    parameters={
      '{"calendarId":"primary","timeMax":"{{ moment().endOf(\'day\').toISOString() }}","timeMin":"{{ moment().startOf(\'day\').toISOString() }}","q":"coaching","singleEvents":"true","orderBy":"startTime"}'
    }
    path="/calendars/{calendarId}/events"
    requestBodyMetadata=""
    resourceName="bd522aaa-1e37-4429-abb4-b8863928e047"
    runWhenModelUpdates={true}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RESTQuery
    id="allLearnersMasterList"
    cacheKeyTtl="3600"
    clonedDemoResourceType="restapi"
    enableCaching={true}
    enableMockResponseTransformer={true}
    enableTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"},{"key":"","value":""}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={true}
    mockResponseTransformer="return "
    notificationDuration="0.01"
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/apprenticeship?coach={{ impersonate_user.value?.coach?.id || current_api_user.data.id }}&size=500"
    queryTimeout="60000"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.items"
  >
    <Event
      id="1d385998"
      event="success"
      method="trigger"
      params={{}}
      pluginId="cohortOptions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="2c02a9ac"
      event="success"
      method="trigger"
      params={{}}
      pluginId="companyOptions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="7a5cad91"
      event="success"
      method="trigger"
      params={{}}
      pluginId="statusOptions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="9c273411"
      event="success"
      method="trigger"
      params={{}}
      pluginId="riskOptions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="ca1ea1f2"
      event="success"
      method="trigger"
      params={{}}
      pluginId="filteredLearners"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="016bc5bf"
      event="success"
      method="trigger"
      params={{}}
      pluginId="gatewayNotBookedMetric"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="9e612cd2"
      event="success"
      method="trigger"
      params={{}}
      pluginId="highRiskLearnersMetric"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="20765d39"
      event="success"
      method="trigger"
      params={{}}
      pluginId="behindOnOtjMetric"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="e777b13c"
      event="success"
      method="trigger"
      params={{}}
      pluginId="attendanceOffTrackMetric"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="4cc11a3c"
      event="success"
      method="trigger"
      params={{}}
      pluginId="noRecentEvidenceMetric"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="c1e65491"
      event="success"
      method="trigger"
      params={{}}
      pluginId="progressReviewOverdueMetric"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="676c3f06"
      event="success"
      method="setValue"
      params={{ map: { value: "false" } }}
      pluginId="cameFromCoachDigestPage"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="eca5ccb5"
      event="failure"
      method="setValue"
      params={{ map: { value: "false" } }}
      pluginId="cameFromCoachDigestPage"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <State id="selectedEvent" />
  <JavascriptQuery
    id="filteredLearnerList"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/filteredLearnerList.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  >
    <Event
      id="c90656e2"
      event="success"
      method="trigger"
      params={{}}
      pluginId="runAiSequentially"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <RESTQuery
    id="getLearnerCoachNotes"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/apprenticeship/{{ apprenticeship_id }}/note"
    queryDisabled={
      '{{ !apprenticeship_id || apprenticeship_id === "null" || apprenticeship_id === "" }}'
    }
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <State id="currentMeetingUUIDs" value="{}" />
  <State id="allLearnerNotes" value="{{ {} }}" />
  <State id="selectedNotesLearner" />
  <RESTQuery
    id="getLearnerNotesHistory"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
    }
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/apprenticeship/{{ selectedNotesLearner.value.id }}/note"
    queryDisabled="{{ !selectedNotesLearner.value?.id }}"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <State id="sessionGreeting" value={'""'} />
  <JavascriptQuery
    id="setSessionGreeting"
    notificationDuration={4.5}
    query={include("../lib/setSessionGreeting.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="runAiSequentially"
    notificationDuration={4.5}
    query={include("../lib/runAiSequentially.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <State id="aiDiscussionPoints" value="{}" />
  <RetoolAIQuery
    id="generateDiscussionPoints"
    clonedDemoResourceType="retoolAI"
    customSystemMessage={
      'You are an expert Apprenticeship Coaching Assistant. Your goal is to analyze specific learner metrics and generate 4 actionable discussion points for a coaching session.\n\n### DATA PRIVACY RULES:\n1. Use ONLY the data provided in the JSON input.\n2. If data for a specific priority is missing, move to the next priority level.\n\n### SELECTION PRIORITY LOGIC:\nAnalyze the input data and select the top 4 items based on this hierarchy:\n\n**Priority 0: Specific Meeting Agenda (HIGH PRIORITY)**\n- If "calendar_description" is not empty: then create a discussion point: "**Meeting Agenda:**  summarise whats explicitly written in it. Dont invent, or assume or suggest antything. \n- If "calendar_description" is empty: then SKIP THIS POINT ENTIRELY. Do not create a "Meeting Agenda" point if there is no specific substance.\n- This counts as one of your 4 points.\n\n**Priority 1: Critical Performance (Top 1-2 points)**\n- Calculate OTJ %. This is calculated as OTJ Submitted hrs to date / OTJ Target Hrs to date. If OTJ < 50%: "Critical Action Required: OTJ hours at [X]% - develop immediate plan to increase weekly commitment".  If OTJ 50-80%: "OTJ Progress: Currently at [X]% - discuss strategies to accelerate progress"\n- If Risk = "High": "High Risk Status: Develop concrete action plan to move out of high-risk category"\n- *Merge if needed:* "Critical Actions: Address high-risk status ([X]% OTJ) and progress plan"\n\n**Priority 2: Progress Reviews & Gateway (Next priority)**\n- Check today\'s date. Check latest progress review date against today\'s date. If latest prgress review due is already past then that means it is "Overdue" or "Incomplete": "Progress Review: [Status] - follow up on completion". \n- If latest progress review apprentice_completed_at has a date then its Yes. If there is no date or null then that neans the learner has not completed the submission. "Progress Review Reminder": "Remind Apprentice to complete Progress Review"\n- If latest progress review apprentice_manager_completed_at has a date then its Yes. If there is no date or null then that neans the apprentice manager has not completed the submission. "Progress Review Reminder": "Remind Apprentice manager to complete Progress Review"\n- If both apprentice and Apprentice manager have a completed at date that means they have submitted. If Coach completed at date is missing or null then only the coach needs to now submit PR \n- If Booked Gateway Date is within 90 days: "Gateway Preparation: Date [Date] approaching - discuss readiness". If a Gateway date is within 90 days or passed, this MUST be one of the 4 points.\n- If Expected Gateway passed: "Gateway Booking Urgent: Expected date ([Date]) passed - address delays"\n\n**Priority 3: Engagement (Fill remaining slots)**\n- If Last Evidence/Attendance > 14 days: "Engagement Check: Last activity [X] days ago - identify barriers"\n\n**Priority 4: Standard Items (Only if < 3 points exist above)**\n- "Learning Goals: Review current objectives and adjust timeline"\n- "Workplace Application: Discuss how recent learning is being applied in role"\n\n### OUTPUT RULES:\n- Return 3-5 bullet points.\n- Bold the category at the start of each point.\n- Use the actual numbers and dates from the input.\n- DO NOT use placeholders; if the data isn\'t there, skip that point.\n- If a calendar description exists, summarize it into a single, proactive bullet point. Do not repeat the description verbatim if it is wordy.'
    }
    defaultModelInitialized={true}
    enableMockResponseTransformer={true}
    instruction={
      'Analyze the provided learner metrics and meeting context to generate 3-5 discussion points for {{ filteredLearnerList.data[targetIndex]?.learner?.first_name }} following the priority rules in my System Message.\n\n{\n  "learner_name": {{ filteredLearnerList.data[targetIndex]?.learner?.first_name ?? "Missing Value" }},\n  "otj_submitted": {{ filteredLearnerList.data[targetIndex]?.status?.otj_submitted_hours_to_date ?? "Missing Value" }},\n  "otj_target": {{ filteredLearnerList.data[targetIndex]?.status?.otj_target_hours_to_date ?? "Missing Value" }},\n  "risk_level": {{ filteredLearnerList.data[targetIndex]?.withdrawal_risk?.risk_bucket_name ?? "Missing Value" }},\n  "latest_coaching_session": {{ filteredLearnerList.data[targetIndex]?.status?.latest_coaching_session_attended_date ?? "Missing Value" }},\n  "latest_evidence_of_learning": {{ filteredLearnerList.data[targetIndex]?.status?.latest_evidence_of_learning_date ?? "Missing Value" }},\n  "booked_gateway_date": {{ filteredLearnerList.data[targetIndex]?.status?.booked_gateway_date ?? "Missing Value" }},\n  "expected_gateway_date": {{ filteredLearnerList.data[targetIndex]?.status?.timely_gateway_date ?? "Missing Value" }},\n  "latest_progress_review_date": {{ filteredLearnerList.data[targetIndex]?.progress_review_summary?.latest_progress_review?.due_date ?? "Missing Value" }},\n  "apprentice_submission_completed": {{ filteredLearnerList.data[targetIndex]?.progress_review_summary?.latest_progress_review?.apprentice_completed_at ? "Yes" : "No" }},\n  "manager_submission_completed": {{ filteredLearnerList.data[targetIndex]?.progress_review_summary?.latest_progress_review?.apprentice_manager_completed_at ? "Yes" : "No" }},\n  "coach_submission_completed": {{ filteredLearnerList.data[targetIndex]?.progress_review_summary?.latest_progress_review?.coach_completed_at ? "Yes" : "No" }},\n  "calendar_description": {{ selectedEvent.value?.description || "No description" }}\n}'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    model="gpt-5.2"
    queryDisabled="{{ !filteredLearnerList.data || filteredLearnerList.data.length === 0 }}"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <Include src="./drawerFrame4.rsx" />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Include src="./emptyCalendarContainer.rsx" />
    <Include src="./mainDigestContainer.rsx" />
  </Frame>
</Screen>
