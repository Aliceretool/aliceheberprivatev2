<Screen
  id="NBA_Cards"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={15}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="23088bea-d8ee-4cbc-ba0b-c5c60780e386"
>
  <State id="snoozeDate" value="" />
  <RESTQuery
    id="getLearnerNotes_nba"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIRequestBody=""
    query="sidekick/v1/apprenticeship/{{ currentLearner.value.apprenticeship_uuid }}/note"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <State
    id="currentLearner"
    value="{{ _.find(merged_data_nba.value, row =>  
    row.learner_id === selectedLearnerId.value
   ) || null 
}}"
  />
  <State id="selectedLearnerId" value="{{ null }}" />
  <RESTQuery
    id="data_ops_API_query_nba"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    openAPIRequestBody=""
    query="sidekick/v1/apprenticeship?size=500&coach={{ impersonate_user.value?.coach?.id || current_api_user.data?.id }}"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer={
      "// 1. EXTRACT RECORDS SAFELY\nif (!data) return [];\nlet rows = Array.isArray(data) ? data : (data.items || (data.data && data.data.items ? data.data.items : (data.data || [])));\nif (rows.length === 0) return [];\n\n// 2. SORTING (Using nested paths)\nconst riskScore = { \"very_high\": 6, \"red\": 5, \"high\": 4, \"amber\": 3, \"medium\": 2, \"low\": 1, \"green\": 0 };\n\n// Get risk from the nested object\nconst getRisk = (row) => riskScore[row.withdrawal_risk?.risk_bucket_name] || -1;\n\nconst compareDates = (dateA, dateB, direction = 'asc', nullsPosition = 'first') => {\n  if (!dateA && !dateB) return 0; \n  if (!dateA) return nullsPosition === 'first' ? -1 : 1;\n  if (!dateB) return nullsPosition === 'first' ? 1 : -1;\n  return direction === 'asc' ? new Date(dateA).getTime() - new Date(dateB).getTime() : new Date(dateB).getTime() - new Date(dateA).getTime();\n};\n\nconst context = typeof cohort_currentSortContext !== 'undefined' ? cohort_currentSortContext?.value : null;\n\nif (context) {\n  rows.sort((a, b) => {\n    let primaryDiff = 0;\n    \n    if (context === 'eol_priority') {\n      // Look inside the 'status' object\n      const aEol = a.status?.latest_evidence_of_learning_date;\n      const bEol = b.status?.latest_evidence_of_learning_date;\n      primaryDiff = compareDates(aEol, bEol, 'asc', 'first');\n    } \n    else if (context === 'prw_priority') {\n      // Look inside the 'progress_review_summary' object\n      const aPrw = a.progress_review_summary?.previous_progress_review?.completed_at || a.progress_review_summary?.previous_progress_review?.review_date;\n      const bPrw = b.progress_review_summary?.previous_progress_review?.completed_at || b.progress_review_summary?.previous_progress_review?.review_date;\n      primaryDiff = compareDates(aPrw, bPrw, 'asc', 'first');\n    } \n    else if (context === 'gb_priority') {\n      // Look inside the 'status' object\n      const valA = a.status?.booked_gateway_start_time; \n      const valB = b.status?.booked_gateway_start_time;\n      if (!valA && valB) return -1; if (valA && !valB) return 1; if (!valA && !valB) primaryDiff = 0; \n      else primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();\n    } \n    else if (context === 'attendance_priority') {\n      // Look inside the 'status' object\n      const aMissed = a.status?.delivery_sessions_missed || 0;\n      const bMissed = b.status?.delivery_sessions_missed || 0;\n      primaryDiff = bMissed - aMissed;\n    }\n    \n    return primaryDiff !== 0 ? primaryDiff : getRisk(b) - getRisk(a);\n  });\n}\n\n// Return the raw, nested data (now sorted!)\nreturn rows;"
    }
  />
  <Function
    id="merged_data_nba"
    funcBody={include("../lib/merged_data_nba.js", "string")}
  />
  <SqlQueryUnified
    id="get_agent_state"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/get_agent_state.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    resourceTypeOverride=""
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <Function
    id="lastCommentsFilter"
    funcBody={include("../lib/lastCommentsFilter.js", "string")}
  />
  <SqlQueryUnified
    id="sendRecommendationFeedback"
    actionType="UPDATE_OR_INSERT_BY"
    changeset={'[{"key":"coach_feedback","value":"{{currentFeedback.value}}"}]'}
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    filterBy={
      '[{"key":"learner_id","value":"{{ currentLearner.value.learner_id }}","operation":"="}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="agent_learner_state"
    warningCodes={[]}
  >
    <Event
      id="5bdd5075"
      event="success"
      method="setValue"
      params={{ map: { value: "null" } }}
      pluginId="currentFeedback"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State id="currentFeedback" />
  <SqlQueryUnified
    id="moveRecordToHistoric"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    query={include("../lib/moveRecordToHistoric.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <State id="actionType" />
  <SqlQueryUnified
    id="updateMessageText"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    query={include("../lib/updateMessageText.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Include src="./learnerProfileModal.rsx" />
  <Frame
    id="$main17"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="agentHeaderText"
      value="# Retention Agent Workspace"
      verticalAlign="center"
    />
    <Text
      id="pendingCountText"
      value="{{ merged_data_nba.value.length }} pending actions in your queue"
      verticalAlign="center"
    />
    <ListViewBeta
      id="retentionQueue"
      _primaryKeys="{{ item.id }}"
      data="{{ merged_data_nba.value }}"
      itemWidth="200px"
      layoutType="grid"
      margin="0"
      numColumns={4}
      padding="0"
    >
      <Include src="./learnerCardContainer2.rsx" />
    </ListViewBeta>
  </Frame>
</Screen>
