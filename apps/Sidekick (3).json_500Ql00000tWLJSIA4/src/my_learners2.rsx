<Screen
  id="my_learners2"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={6}
  _searchParams={[]}
  browserTitle=""
  margin="4px 8px"
  title="Page 1"
  urlSlug=""
  uuid="dea33527-0459-4785-912f-2b998f530532"
>
  <Folder id="User_Views">
    <State id="is_applying_view" value="false" />
    <JavascriptQuery
      id="applyUserView"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/applyUserView.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <SqlQueryUnified
      id="saveUserView"
      actionType="UPDATE_OR_INSERT_BY"
      changeset={
        '[{"key":"config_json","value":"{{ \\n  {\\n    columns: colSelector.value,\\n    filters: {\\n      search: table_search_text_input2.value,\\n      cohort: cohort_filter_multiselect2.value,\\n      company: company_filter_multiselect2.value,\\n      status: status_filter_multiselect2.value,\\n      risk: risk_level_filter_multiselect2.value\\n    },\\n    sorts: cohort_dd_table5.sortArray\\n  } \\n}}"},{"key":"view_name","value":"{{ view1Name.value }}"}]'
      }
      clonedDemoResourceType="retoolDb"
      editorMode="gui"
      enableMockResponseTransformer={true}
      filterBy={
        '[{"key":"user_email","value":"{{ current_user.email }}","operation":"="},{"key":"view_slot","value":"{{ viewControllerTab.selectedIndex+1}}","operation":"="}]'
      }
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      resourceDisplayName="retool_db"
      resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      tableName="user_views"
    >
      <Event
        id="3816c47b"
        event="success"
        method="trigger"
        params={{}}
        pluginId="getUserViews"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <State id="tableViewConfig" />
    <SqlQueryUnified
      id="getUserViews"
      actionType="UPDATE_OR_INSERT_BY"
      changeset={
        '[{"key":"user_email","value":"{{ current_user.email }}"},{"key":"view_name","value":"My View 1"},{"key":"view_slot","value":"1"}]'
      }
      clonedDemoResourceType="retoolDb"
      enableMockResponseTransformer={true}
      filterBy={
        '[{"key":"user_email","value":"{{ current_user.email }}","operation":"="},{"key":"view_slot","value":"1","operation":"="}]'
      }
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      query={include("../lib/getUserViews.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      tableName="User_Views"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="Coach_Tags">
    <RESTQuery
      id="saveCoachTagToDataOps_mlv"
      body={
        '[{"key":"comment","value":"{{ item.comment || \\"\\" }}"},{"key":"tags","value":"{{ item.tags || [] }}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      cookies={'[{"key":"","value":""}]'}
      enableMockResponseTransformer={true}
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIRequestBody=""
      query="sidekick/v1/apprenticeship/{{ item.apprenticeship_uuid }}"
      queryTimeout="20000"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    />
    <JavascriptQuery
      id="saveCoachTagsBatch_mlv"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/saveCoachTagsBatch_mlv.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    >
      <Event
        id="3b29aba1"
        event="success"
        method="run"
        params={{
          map: {
            src: "data_ops_API_query_mlv.invalidateCache();\n\nawait data_ops_API_query_mlv.trigger({\n  onSuccess: () => {\n    cohort_dd_table5.clearChangeset();\n  },\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <Function
      id="tagsList"
      funcBody={include("../lib/tagsList.js", "string")}
    />
  </Folder>
  <Folder id="statWidgets">
    <JavascriptQuery
      id="progressReviewOverdueMetric2"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/progressReviewOverdueMetric2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="gatewayNotBookedMetric2"
      isMultiplayerEdited={false}
      query={include("../lib/gatewayNotBookedMetric2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="highRiskLearnersMetric2"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/highRiskLearnersMetric2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="behindOnOtjMetric2"
      notificationDuration={4.5}
      query={include("../lib/behindOnOtjMetric2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="filteredLearners2"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/filteredLearners2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    >
      <Event
        id="490ad3c4"
        event="success"
        method="trigger"
        params={{}}
        pluginId="totalFilteredLearnerCount2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="245d636a"
        event="success"
        method="trigger"
        params={{}}
        pluginId="progressReviewOverdueMetric2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="e70b3299"
        event="success"
        method="trigger"
        params={{}}
        pluginId="gatewayNotBookedMetric2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="0c2bd883"
        event="success"
        method="trigger"
        params={{}}
        pluginId="highRiskLearnersMetric2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="786ce4f0"
        event="success"
        method="trigger"
        params={{}}
        pluginId="behindOnOtjMetric2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="8517a5ba"
        event="success"
        method="trigger"
        params={{}}
        pluginId="attendanceOffTrackMetric2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ad9bb292"
        event="success"
        method="trigger"
        params={{}}
        pluginId="noRecentEvidenceMetric2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="attendanceOffTrackMetric2"
      notificationDuration={4.5}
      query={include("../lib/attendanceOffTrackMetric2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="noRecentEvidenceMetric2"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/noRecentEvidenceMetric2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="totalFilteredLearnerCount2"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/totalFilteredLearnerCount2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Filters">
    <RESTQuery
      id="get_company_list"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={
        '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
      }
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIRequestBody=""
      query="/sidekick/v1/company?"
      queryTimeout="25000"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="calculate_cascading_filters"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/calculate_cascading_filters.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <State
      id="filter_options_state"
      value={
        '{ "cohorts": [], "companies": [], "coaches": [], "statuses": [], "risks": [] }'
      }
    />
    <RESTQuery
      id="get_cohorts_list"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={
        '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
      }
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIRequestBody=""
      query="/sidekick/v1/cohort"
      queryTimeout="25000"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
    />
    <Function
      id="userRoleCategory"
      funcBody={include("../lib/userRoleCategory.js", "string")}
    />
  </Folder>
  <RESTQuery
    id="data_ops_API_query_mlv"
    cacheKeyTtl="600"
    clonedDemoResourceType="restapi"
    enableCaching={true}
    enableMockResponseTransformer={true}
    enableTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    openAPIRequestBody=""
    overrideOrgCacheForUserCache={true}
    query="/sidekick/v1/apprenticeship-slim?size=500&coach={{ coach_filter_multiselect2.value }}"
    queryTimeout="25000"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenPageLoads={true}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer={
      "// 1. EXTRACT RECORDS SAFELY\nif (!data) return { data: [], hasNextPage: false, nextAfterCursor: null, beforeCursor: null };\nconst nextPage = data.next_page || null;\nconst previousPage = data.previous_page || null;\n\nlet rows = Array.isArray(data) ? data : (data.items || []);\n\nif (rows.length === 0) return { \n  data: [], \n  hasNextPage: false, \n  nextAfterCursor: null,\n  beforeCursor: null\n};\n\n// 2. SORTING (Using nested paths)\nconst riskScore = { \"very_high\": 6, \"red\": 5, \"high\": 4, \"amber\": 3, \"medium\": 2, \"low\": 1, \"green\": 0 };\n\nconst getRisk = (row) => riskScore[row.withdrawal_risk?.risk_bucket_name] || -1;\n\nconst compareDates = (dateA, dateB, direction = 'asc', nullsPosition = 'first') => {\n  if (!dateA && !dateB) return 0; \n  if (!dateA) return nullsPosition === 'first' ? -1 : 1;\n  if (!dateB) return nullsPosition === 'first' ? 1 : -1;\n  return direction === 'asc' ? new Date(dateA).getTime() - new Date(dateB).getTime() : new Date(dateB).getTime() - new Date(dateA).getTime();\n};\n\nconst context = typeof cohort_currentSortContext !== 'undefined' ? cohort_currentSortContext?.value : null;\n\nif (context) {\n  rows.sort((a, b) => {\n    let primaryDiff = 0;\n    \n    if (context === 'eol_priority') {\n      const aEol = a.status?.latest_evidence_of_learning_date;\n      const bEol = b.status?.latest_evidence_of_learning_date;\n      primaryDiff = compareDates(aEol, bEol, 'asc', 'first');\n    } \n    else if (context === 'prw_priority') {\n      const aPrw = a.progress_review_summary?.previous_progress_review?.completed_at || a.progress_review_summary?.previous_progress_review?.review_date;\n      const bPrw = b.progress_review_summary?.previous_progress_review?.completed_at || b.progress_review_summary?.previous_progress_review?.review_date;\n      primaryDiff = compareDates(aPrw, bPrw, 'asc', 'first');\n    } \n    else if (context === 'gb_priority') {\n      const valA = a.status?.booked_gateway_start_time; \n      const valB = b.status?.booked_gateway_start_time;\n      if (!valA && valB) return -1; \n      if (valA && !valB) return 1; \n      if (!valA && !valB) primaryDiff = 0; \n      else primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();\n    } \n    else if (context === 'attendance_priority') {\n      const aMissed = a.status?.delivery_sessions_missed || 0;\n      const bMissed = b.status?.delivery_sessions_missed || 0;\n      primaryDiff = bMissed - aMissed;\n    }\n    \n    return primaryDiff !== 0 ? primaryDiff : getRisk(b) - getRisk(a);\n  });\n}\n\n// 3. RETURN IN CURSOR PAGINATION FORMAT\nreturn {\n  data: rows,                           // ✅ Array of items (sorted)\n  hasNextPage: !!nextPage,              // ✅ Boolean: true if next_page exists\n  nextAfterCursor: nextPage,            // ✅ Cursor for next page\n  beforeCursor: previousPage            // ✅ Cursor for previous page (bidirectional)\n};"
    }
  >
    <Event
      id="ca1ea1f2"
      event="success"
      method="trigger"
      params={{}}
      pluginId="filteredLearners2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="d9dfeba4"
      event="success"
      method="trigger"
      params={{}}
      pluginId="run_merger_logic"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="1af65836"
      event="success"
      method="trigger"
      params={{}}
      pluginId="calculate_cascading_filters"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="data_ops_API_query_test_temp"
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
    overrideOrgCacheForUserCache={true}
    query="sidekick/v1/apprenticeship?"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer={
      '// 1. SAFETY CHECK & EXTRACT RECORDS\n// ---------------------------------------------------------\nif (!data) return [];\n\n// Check all possible places the API might hide the array\nlet records = [];\nif (Array.isArray(data)) records = data;\nelse if (Array.isArray(data.items)) records = data.items;\nelse if (data.data && Array.isArray(data.data)) records = data.data;\nelse if (data.data && Array.isArray(data.data.items)) records = data.data.items;\n\nif (records.length === 0) return [];\n\n// 2. FLATTEN THE NESTED JSON\n// ---------------------------------------------------------\nlet rows = records.map(row => {\n  return {\n    id: row.id, \n    \n    // Flatten Learner\n    learner_id: row.learner?.id,\n    learner_full_name: `${row.learner?.first_name || \'\'} ${row.learner?.last_name || \'\'}`.trim(),\n    learner_job_title: row.job_title || row.learner?.job_title, // Updated based on new schema\n    learner_email: row.learner?.email,\n    \n    // Flatten Coach\n    coach_account_id: row.coach?.id,\n    coach_full_name: `${row.coach?.first_name || \'\'} ${row.coach?.last_name || \'\'}`.trim(),\n    \n    // Flatten Manager\n    apprentice_manager_full_name: `${row.apprentice_manager?.first_name || \'\'} ${row.apprentice_manager?.last_name || \'\'}`.trim(),\n    apprentice_manager_email: row.apprentice_manager?.email,\n    \n    // Extract nested groupings & risk\n    company_name: row.company?.name,\n    cohort_name: row.cohort?.name,\n    latest_risk_bucket_name: row.withdrawal_risk?.risk_bucket_name,\n    latest_risk_assessment_date: row.withdrawal_risk?.prediction_timestamp,\n    \n    // --- NEW: Flatten Project Summary ---\n    total_projects_submitted: row.project_summary?.projects_submitted,\n    // Falls back to started_at if submitted_at is null (based on your JSON sample)\n    latest_project_submitted_date: row.project_summary?.latest_project_submission?.submission_submitted_at || row.project_summary?.latest_project_submission?.submission_started_at,\n    latest_project_submission_grade: row.project_summary?.latest_project_submission_review?.details?.project_submission_grade,\n\n    // --- NEW: Flatten Progress Review Summary ---\n    // Falls back to review_date if completed_at is null\n    latest_progress_review_completed_date: row.progress_review_summary?.previous_progress_review?.completed_at || row.progress_review_summary?.previous_progress_review?.review_date,\n\n    // Spread all metrics and dates from the \'status\' object safely\n    ...(row.status || {})\n  };\n});\n\n// 3. CONFIGURATION FOR SORTING & RENAMING\n// ---------------------------------------------------------\nconst riskScore = {\n  "Very High": 6, "Red": 5, "High": 4, "Amber": 3, "Medium": 2, "Low": 1, "Green": 0     \n};\n\n// EXACT matching to the Retool UI column names from the screenshot\nconst columnMapping = {\n  "learner_full_name": "Learner",\n  "cohort_name": "Cohort",\n  "company_name": "Company",\n  "latest_status": "Status",\n  "latest_risk_bucket_name": "Risk",\n  "latest_risk_assessment_date": "Latest Risk Assessment Date",\n  "otj_submitted_hours_to_date": "OTJ Total",\n  "latest_evidence_of_learning_date": "Latest EOL",\n  "bil_process_status": "BiL Status",\n  "delivery_sessions_missed": "Missed Sessions",\n  "latest_delivery_session_attended_date": "Latest Delivery",\n  "total_projects_submitted": "Apprenticeship Total Projects Submitted",\n  "latest_project_submitted_date": "Latest Project", \n  "latest_coaching_session_attended_date": "Latest Coaching",\n  "latest_progress_review_completed_date": "Latest Review", \n  "booked_gateway_date": "Gateway Date", \n  "learner_job_title": "Job Title",\n  "learner_email": "Learner Email",\n  "apprentice_manager_full_name": "Manager",\n  "apprentice_manager_email": "Apprentice Manager Email",\n  "latest_project_submission_grade": "Apprenticeship latest project submission grade", \n  "id": "Apprenticeship UUID", \n  "coach_account_id": "Coach account ID",\n  "coach_full_name": "Coach full name",\n  "booked_gateway_start_time": "Gateway booked",\n  "learner_id": "Learner id"\n};\n\n// 4. SORTING LOGIC\n// ---------------------------------------------------------\nconst getRisk = (row) => riskScore[row[\'latest_risk_bucket_name\']] || -1;\n\nconst compareDates = (dateA, dateB, direction = \'asc\', nullsPosition = \'first\') => {\n  if (!dateA && !dateB) return 0; \n  if (!dateA) return nullsPosition === \'first\' ? -1 : 1;\n  if (!dateB) return nullsPosition === \'first\' ? 1 : -1;\n  \n  const d1 = new Date(dateA).getTime();\n  const d2 = new Date(dateB).getTime();\n  \n  return direction === \'asc\' ? d1 - d2 : d2 - d1;\n};\n\n// Safely get the context so it doesn\'t crash if the dropdown doesn\'t exist yet\nconst context = typeof cohort_currentSortContext !== \'undefined\' ? cohort_currentSortContext?.value : null;\n\nif (context) {\n  rows.sort((a, b) => {\n    let primaryDiff = 0;\n\n    if (context === \'eol_priority\') {\n      primaryDiff = compareDates(a.latest_evidence_of_learning_date, b.latest_evidence_of_learning_date, \'asc\', \'first\');\n    } \n    else if (context === \'prw_priority\') {\n       primaryDiff = compareDates(a.latest_progress_review_completed_date, b.latest_progress_review_completed_date, \'asc\', \'first\');\n    } \n    else if (context === \'gb_priority\') {\n      const valA = a.booked_gateway_start_time;\n      const valB = b.booked_gateway_start_time;\n\n      if (!valA && valB) return -1; \n      if (valA && !valB) return 1;  \n      if (!valA && !valB) primaryDiff = 0; \n      else {\n        primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();\n      }\n    } \n    else if (context === \'attendance_priority\') {\n        const valA = a.delivery_sessions_missed || 0;\n        const valB = b.delivery_sessions_missed || 0;\n        primaryDiff = valB - valA; \n    }\n\n    if (primaryDiff !== 0) return primaryDiff;\n    return getRisk(b) - getRisk(a);\n  });\n}\n\n// 5. COLUMN RENAMING\n// ---------------------------------------------------------\nreturn rows.map(row => {\n  const newRow = {};\n  Object.keys(row).forEach(key => {\n    if (columnMapping[key]) {\n      newRow[columnMapping[key]] = row[key];\n    } else {\n      // Use fallback if lodash (_) is available, otherwise just capitalize first letter safely\n      newRow[typeof _ !== \'undefined\' ? _.startCase(key) : key] = row[key]; \n    }\n  });\n  return newRow;\n});'
    }
  >
    <Event
      id="3bbd3128"
      event="success"
      method="trigger"
      params={{}}
      pluginId="coachOptions2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="1d385998"
      event="success"
      method="trigger"
      params={{}}
      pluginId="cohortOptions2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="2c02a9ac"
      event="success"
      method="trigger"
      params={{}}
      pluginId="companyOptions2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="7a5cad91"
      event="success"
      method="trigger"
      params={{}}
      pluginId="statusOptions2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="9c273411"
      event="success"
      method="trigger"
      params={{}}
      pluginId="riskOptions2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="ca1ea1f2"
      event="success"
      method="trigger"
      params={{}}
      pluginId="filteredLearners2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="016bc5bf"
      event="success"
      method="trigger"
      params={{}}
      pluginId="gatewayNotBookedMetric2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="9e612cd2"
      event="success"
      method="trigger"
      params={{}}
      pluginId="highRiskLearnersMetric2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="20765d39"
      event="success"
      method="trigger"
      params={{}}
      pluginId="behindOnOtjMetric2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="e777b13c"
      event="success"
      method="trigger"
      params={{}}
      pluginId="attendanceOffTrackMetric2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="4cc11a3c"
      event="success"
      method="trigger"
      params={{}}
      pluginId="noRecentEvidenceMetric2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="c1e65491"
      event="success"
      method="trigger"
      params={{}}
      pluginId="progressReviewOverdueMetric2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <JavascriptQuery
    id="run_merger_logic"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/run_merger_logic.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <State id="merged_data_state" value="" />
  <State id="sorting_context" />
  <JavascriptQuery
    id="handleSortContextFromUrl"
    notificationDuration={4.5}
    query={include("../lib/handleSortContextFromUrl.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Include src="./drawerFrame5.rsx" />
  <Frame
    id="$main13"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  />
  <Frame
    id="$main14"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    margin="4px 8px"
    padding="8px 12px"
    style={{ map: { canvas: "surfacePrimary" } }}
    type="main"
  >
    <Container
      id="container100"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !coach_filter_multiselect2.value?.length }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      highRiskLearnersMetric2.isRunning ||\n      highRiskLearnersMetric2.isFetching ||\n      highRiskLearnersMetric2.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount2.isRunning ||\n      totalFilteredLearnerCount2.isFetching ||\n      totalFilteredLearnerCount2.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      highRiskLearnersMetric2.data &&\n      highRiskLearnersMetric2.data.highRisk != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount2.data != null;\n\n    const baseRunning =\n      data_ops_API_query_mlv.isRunning ||\n      data_ops_API_query_mlv.isFetching ||\n      data_ops_API_query_mlv.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle116"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic84"
          align="center"
          currency="USD"
          label="High Risk Learners"
          margin="0"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          style={{}}
          suffix={'{{ "/ " + (totalFilteredLearnerCount2.data ?? 0) }}'}
          tooltipText="Learners flagged at high or very high risk of withdrawing"
          value={'{{ highRiskLearnersMetric2.data["highRisk"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container101"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !coach_filter_multiselect2.value?.length }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      gatewayNotBookedMetric2.isRunning ||\n      gatewayNotBookedMetric2.isFetching ||\n      gatewayNotBookedMetric2.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount2.isRunning ||\n      totalFilteredLearnerCount2.isFetching ||\n      totalFilteredLearnerCount2.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      gatewayNotBookedMetric2.data &&\n      gatewayNotBookedMetric2.data.gatewayNotBooked != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount2.data != null;\n\n    const baseRunning =\n      data_ops_API_query_mlv.isRunning ||\n      data_ops_API_query_mlv.isFetching ||\n      data_ops_API_query_mlv.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle117"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic87"
          align="center"
          currency="USD"
          hidden=""
          label="Gateway not booked"
          margin="0"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          style={{}}
          suffix={'{{ "/ " + (totalFilteredLearnerCount2.data ?? 0) }}\n'}
          tooltipText="Learners who have not booked in their gateway session yet"
          value={'{{ gatewayNotBookedMetric2.data["gatewayNotBooked"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container102"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !coach_filter_multiselect2.value?.length }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      behindOnOtjMetric2.isRunning ||\n      behindOnOtjMetric2.isFetching ||\n      behindOnOtjMetric2.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount2.isRunning ||\n      totalFilteredLearnerCount2.isFetching ||\n      totalFilteredLearnerCount2.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      behindOnOtjMetric2.data &&\n      behindOnOtjMetric2.data.behindOnOTJ != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount2.data != null;\n\n    const baseRunning =\n      data_ops_API_query_mlv.isRunning ||\n      data_ops_API_query_mlv.isFetching ||\n      data_ops_API_query_mlv.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle118"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic88"
          align="center"
          currency="USD"
          label="Behind on OTJ"
          margin="0"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          style={{}}
          suffix={'{{ "/ " + (totalFilteredLearnerCount2.data ?? 0) }}'}
          tooltipText="Learners whose OTJ is at 90% or below"
          value={'{{ behindOnOtjMetric2.data["behindOnOTJ"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container103"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !coach_filter_multiselect2.value?.length }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      attendanceOffTrackMetric2.isRunning ||\n      attendanceOffTrackMetric2.isFetching ||\n      attendanceOffTrackMetric2.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount2.isRunning ||\n      totalFilteredLearnerCount2.isFetching ||\n      totalFilteredLearnerCount2.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      attendanceOffTrackMetric2.data &&\n      attendanceOffTrackMetric2.data.attendanceOverdue != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount2.data != null;\n\n    const baseRunning =\n      data_ops_API_query_mlv.isRunning ||\n      data_ops_API_query_mlv.isFetching ||\n      data_ops_API_query_mlv.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle119"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic89"
          align="center"
          currency="USD"
          label="Attendance off track"
          margin="0"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          style={{}}
          suffix={'{{ "/ " + (totalFilteredLearnerCount2.data ?? 0) }}'}
          tooltipText="Learners who have not attended in over 30 days"
          value={'{{ attendanceOffTrackMetric2.data["attendanceOverdue"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container104"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !coach_filter_multiselect2.value?.length }}"
      loading="{{
  (() => {
    const metricRunning =
      noRecentEvidenceMetric2.isRunning ||
      noRecentEvidenceMetric2.isFetching ||
      noRecentEvidenceMetric2.isLoading;

    const totalRunning =
      totalFilteredLearnerCount2.isRunning ||
      totalFilteredLearnerCount2.isFetching ||
      totalFilteredLearnerCount2.isLoading;

    const baseRunning =
      data_ops_API_query_mlv.isRunning ||
      data_ops_API_query_mlv.isFetching ||
      data_ops_API_query_mlv.isLoading;

    return baseRunning || metricRunning || totalRunning;
  })()
}}"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle120"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic85"
          align="center"
          currency="USD"
          label="No recent learning evidence"
          margin="0"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          style={{}}
          suffix={'{{ "/ " + (totalFilteredLearnerCount2.data ?? 0) }}'}
          tooltipText="Learners with no new evidence in over 30 days"
          value={'{{ noRecentEvidenceMetric2.data["noRecentEvidence"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container105"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !coach_filter_multiselect2.value?.length }}"
      loading="{{
  (() => {
    const metricRunning =
      progressReviewOverdueMetric2.isRunning ||
      progressReviewOverdueMetric2.isFetching;

    const totalRunning =
      totalFilteredLearnerCount2.isRunning ||
      totalFilteredLearnerCount2.isFetching;

    const baseRunning =
      data_ops_API_query_mlv.isRunning ||
      data_ops_API_query_mlv.isFetching;

    return baseRunning || metricRunning || totalRunning;
  })()
}}"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle121"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic86"
          _comment={
            '{{ progressReviewOverdueMetric2.data["progressReviewOverdue"] }}'
          }
          align="center"
          currency="USD"
          hidden=""
          label="Progress review overdue"
          margin="0"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          style={{}}
          suffix={'{{ "/ " + (totalFilteredLearnerCount2.data ?? 0) }}'}
          tooltipText="Learners where the latest progress review date is older than 84 days"
          value="{{ progressReviewOverdueMetric2.data.progressReviewOverdue }}"
        />
      </View>
    </Container>
    <TextInput
      id="table_search_text_input2"
      label="Search"
      labelPosition="top"
      placeholder="Search on this page"
    />
    <Multiselect
      id="cohort_filter_multiselect2"
      captionByIndex=""
      colorByIndex=""
      data="{{ filter_options_state.value.cohorts.length > 0 
         ? filter_options_state.value.cohorts 
         : [] }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Cohort"
      labelPosition="top"
      labels="{{item.label}}"
      loading="{{ get_cohorts_list.isFetching }}"
      maxCount="{{ userRoleCategory.value === 'coach' ? null : 1 }}"
      overlayMaxHeight={375}
      placeholder="Select a cohort"
      showSelectionIndicator={true}
      tooltipByIndex="{{item.name}}"
      value=""
      values="{{item.value}}"
      wrapTags={true}
    >
      <Event
        id="c7f23997"
        event="change"
        method="trigger"
        params={{}}
        pluginId="filteredLearners2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="32197613"
        event="change"
        method="trigger"
        params={{}}
        pluginId="calculate_cascading_filters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="company_filter_multiselect2"
      data="{{ filter_options_state.value.companies.length > 0 
         ? filter_options_state.value.companies 
         : [] }}"
      emptyMessage="No options"
      label="Company"
      labelPosition="top"
      labels="{{item.label}}"
      loading="{{ get_company_list.isFetching }}"
      maxCount="{{ userRoleCategory.value === 'coach' ? null : 1 }}"
      overlayMaxHeight={375}
      placeholder="Select a company"
      showSelectionIndicator={true}
      tooltipByIndex="{{item.name}}"
      value=""
      values="{{item.value}}"
      wrapTags={true}
    >
      <Event
        id="a85e88b7"
        event="change"
        method="trigger"
        params={{}}
        pluginId="filteredLearners2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="377e4176"
        event="change"
        method="trigger"
        params={{}}
        pluginId="calculate_cascading_filters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Select
      id="coach_filter_multiselect2"
      data="{{get_coaches_list.data}}"
      emptyMessage="No options"
      label="Coach"
      labelPosition="top"
      labels="{{item.first_name}} {{item.last_name}} "
      labelWidth={33}
      overlayMaxHeight={375}
      placeholder="Select a coach"
      required={true}
      showClear={true}
      showSelectionIndicator={true}
      value="{{ impersonate_user.value?.coach?.id || current_api_user.data?.id }}"
      values="{{ item.id }}"
    >
      <Event
        id="073b7173"
        event="change"
        method="run"
        params={{
          map: { src: 'localStorage.setValue("savedCoach", self.value);' },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="8a9f0604"
        event="change"
        method="trigger"
        params={{}}
        pluginId="calculate_cascading_filters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Multiselect
      id="status_filter_multiselect2"
      _comment={'for defaiult value field - ["On-Programme"]'}
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Status"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      value={'["on_programme"]'}
      values=""
      wrapTags={true}
    >
      <Option
        id="0e507"
        disabled={false}
        hidden={false}
        label="On-Programme"
        value="on_programme"
      />
      <Option
        id="5053e"
        disabled={false}
        hidden={false}
        label="On-BIL"
        value="on_bil"
      />
      <Option
        id="8badd"
        disabled={false}
        hidden={false}
        label="Post-Gateway"
        value="post_gateway"
      />
      <Option
        id="663dc"
        disabled={false}
        hidden={false}
        label="Withdrawal"
        value="withdrawal"
      />
      <Option
        id="86b0f"
        disabled={false}
        hidden={false}
        label="No-Show"
        value="no_show"
      />
      <Option
        id="aa8f8"
        disabled={false}
        hidden={false}
        label="Non-Starter"
        value="non_starter"
      />
      <Option
        id="13b54"
        disabled={false}
        hidden={false}
        label="Completed Late"
        value="completed_late"
      />
      <Option
        id="2a90b"
        disabled={false}
        hidden={false}
        label="Completed On Time"
        value="completed_on_time"
      />
      <Event
        id="f1b22eea"
        event="change"
        method="trigger"
        params={{}}
        pluginId="filteredLearners2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="c2a24cc3"
        event="change"
        method="trigger"
        params={{}}
        pluginId="calculate_cascading_filters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="risk_level_filter_multiselect2"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Risk level"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="[]"
      values=""
      wrapTags={true}
    >
      <Option
        id="0b681"
        disabled={false}
        hidden={false}
        label="Very High"
        value="very_high"
      />
      <Option
        id="e40a8"
        disabled={false}
        hidden={false}
        label="High"
        value="high"
      />
      <Option
        id="b4d94"
        disabled={false}
        hidden={false}
        label="Medium"
        value="medium"
      />
      <Option
        id="09d2d"
        disabled={false}
        hidden={false}
        label="Low"
        value="low"
      />
      <Event
        id="48391814"
        event="change"
        method="trigger"
        params={{}}
        pluginId="filteredLearners2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="2c7c0e73"
        event="change"
        method="trigger"
        params={{}}
        pluginId="calculate_cascading_filters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Link
      id="resetFiltersLink"
      allowWrap={true}
      horizontalAlign="right"
      iconBefore="line/interface-arrows-synchronize"
      style={{
        fontSize: "12px",
        fontWeight: "600",
        fontFamily: "Saans, Inter, sans-serif",
      }}
      text="Reset Filters"
    >
      <Event
        id="38b9011e"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="company_filter_multiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="b9efc504"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="cohort_filter_multiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="f7a77772"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="status_filter_multiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="23252ccc"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="risk_level_filter_multiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="6c7b7171"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="table_search_text_input2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="f9275369"
        event="click"
        method="reset"
        params={{}}
        pluginId="data_ops_API_query_mlv"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="7a802bc3"
        event="click"
        method="run"
        params={{ map: { src: "localStorage.setValue('savedCoach', null);" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Tabs
      id="viewController"
      itemMode="static"
      style={{}}
      value="{{ self.values[0] }}"
    >
      <Option id="00030" label="Default" value="0" />
      <Option
        id="00031"
        label="{{ formatDataAsArray(getUserViews.data).find(row => row.view_slot == 1)?.view_name || 'View 1' }}"
        value="1"
      />
      <Option
        id="00032"
        label="{{ formatDataAsArray(getUserViews.data).find(row => row.view_slot == 2)?.view_name || 'View 2' }}"
        value="2"
      />
      <Event
        id="e5e3704e"
        event="change"
        method="trigger"
        params={{
          map: {
            options: {
              object: {
                onSuccess: null,
                onFailure: null,
                additionalScope: null,
              },
            },
          },
        }}
        pluginId="applyUserView"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Tabs>
    <Link
      id="showPaneLink"
      horizontalAlign="right"
      iconBefore="line/interface-edit-view"
      style={{
        fontSize: "12px",
        fontWeight: "600",
        fontFamily: "Saans, Inter, sans-serif",
      }}
      text="Personalize Columns"
    >
      <Event
        id="94007aa5"
        event="click"
        method="show"
        params={{}}
        pluginId="drawerFrame5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Link
      id="link6"
      hidden="{{ !url.searchParams.sortContext }}"
      iconBefore="bold/interface-arrows-left-circle-2-alternate"
      text="Back to Metrics"
    >
      <Event
        id="1a385258"
        event="click"
        method="run"
        params={{
          map: {
            src: 'const metricsPage = navigation1.data.find(item => item.label === "Performance Metrics");\nconst targetId = metricsPage ? metricsPage.screenTargetId : null;\n\nutils.openPage(targetId)',
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button
      id="saveButton"
      hidden="{{ cohort_dd_table5.changesetArray.length < 1 }}"
      iconBefore="line/computer-storage-floppy-disk"
      margin="0"
      text="Save Updates"
    >
      <Event
        id="d75ed284"
        event="click"
        method="trigger"
        params={{}}
        pluginId="saveCoachTagsBatch_mlv"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <IconText
      id="saveTooltip"
      hidden="{{cohort_dd_table5.changesetArray.length < 1 }}"
      horizontalAlign="center"
      icon="line/interface-content-save"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      text="Pending changes"
    />
    <Text
      id="text568"
      hidden="{{ !!coach_filter_multiselect2.value }}"
      horizontalAlign="center"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="**Please select a coach to see data**"
      verticalAlign="center"
    />
    <Table
      id="cohort_dd_table5"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ merged_data_state.value }}"
      defaultFilters={{
        0: {
          id: "03ca0",
          columnId: "f9a6b",
          operator: "intersects",
          value: "{{ cohort_filter_multiselect2.selectedLabels }}",
          disabled: false,
        },
        1: {
          id: "a084e",
          columnId: "4f6ec",
          operator: "intersects",
          value: "{{ company_filter_multiselect2.selectedLabels }}",
          disabled: false,
        },
        2: {
          id: "f6d6d",
          columnId: "8a644",
          operator: "intersects",
          value: "{{ status_filter_multiselect2.selectedLabels }}",
          disabled: false,
        },
        3: {
          id: "a139f",
          columnId: "a5b5f",
          operator: "intersects",
          value: "{{ risk_level_filter_multiselect2.selectedLabels }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      dynamicRowHeights={true}
      enableSaveActions={true}
      groupByColumns={{}}
      hasNextPage="{{ data_ops_API_query_mlv.data.hasNextPage }}"
      headerTextWrap={true}
      hidden="{{ !coach_filter_multiselect2.value }}"
      limitOffsetRowCount="{{ data_ops_API_query_mlv.data.total}}"
      nextAfterCursor="{{ data_ops_API_query_mlv.data.nextAfterCursor }}"
      primaryKeyColumnId="86d83"
      rowHeight="small"
      searchTerm="{{ table_search_text_input2.value }}"
      serverPaginationType="forwardCursorBased"
      showFooter={true}
      showHeader={true}
      style={{}}
      templatePageSize="500"
    >
      <Column
        id="e9ee4"
        alignment="left"
        cellTooltip="Add Intervention"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-user-profile-focus",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        placeholder="Enter value"
        position="left"
        referenceId="Learner Profile"
        size={44}
        summaryAggregationMode="none"
        valueOverride=" "
      >
        <Event
          id="46c6ea37"
          event="clickCell"
          method="run"
          params={{
            map: {
              src: 'await selected_user.setValue(currentSourceRow);\n\ngetLearnerNotes_global.invalidateCache();\n\nawait getLearnerNotes_global.trigger({\n  onFailure: () => {\n    utils.showNotification({\n      notificationType: "error",\n      title: "Failed to load learner notes",\n      description: "Please try again.",\n    });\n  },\n});\n\nnotesDrawerFrame_global.show();',
            },
          }}
          pluginId=""
          type="script"
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
        size={44}
        valueOverride=" "
      >
        <Event
          id="08ddbe15"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="08ddbe15"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/me?chat=User:{{ selected_user.value.learner_id }}",
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
        size={44}
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
        size={148.984375}
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
                {
                  key: "apprenticeship_uuid",
                  value: "{{ currentSourceRow.id }}",
                },
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
            '{{ \n  currentSourceRow.withdrawal_risk.risk_bucket_name === "very_high" ? "#C62828" :  // Warning Red (Softer)\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "high"      ? "#FF5252" :  // Bright Red\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "medium"    ? "#FFA726" :  // Orange Warning\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "low"       ? "#3C92DC" :  // Blue\n  null \n}}',
        }}
        groupAggregationMode="none"
        key="withdrawal_risk"
        label="Risk"
        optionList={{
          manualData: [
            { value: "Very High", label: "" },
            { value: "High", label: "" },
            { value: "Medium", label: "" },
            { value: "Low", label: "" },
          ],
        }}
        placeholder="Select option"
        position="left"
        referenceId="Risk"
        size={85.96875}
        sortMode="optionList"
        summaryAggregationMode="none"
        valueOverride={
          '{{ \n  (item.risk_bucket_name || "")\n    .split("_")\n    .map(w => w ? w[0].toUpperCase() + w.slice(1).toLowerCase() : "")\n    .join(" ")\n}}'
        }
      />
      <Column
        id="d7a24"
        alignment="left"
        cellTooltip="{{ item }}"
        cellTooltipMode="custom"
        editable="true"
        editableOptions={{ spellCheck: false, allowCustomValue: true }}
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Coach Tag') }}"
        key="coach_tag"
        label="Coach Tag"
        optionList={{
          manualData: [
            { map: { value: "On Annual Leave" } },
            { map: { value: "Sick Leave" } },
          ],
          mode: "mapped",
          mappedData: "{{ tagsList.value }}",
          valueByIndex: "{{ item }}",
          labelByIndex: "{{ item }}",
        }}
        placeholder="Add or Update Tags"
        position="center"
        referenceId="coach_tag"
        size={72.421875}
        summaryAggregationMode="none"
        valueOverride="{{ item}}"
      />
      <Column
        id="58b33"
        alignment="left"
        cellTooltip="{{ item }}"
        cellTooltipMode="custom"
        editable="true"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Coach Comment') }}"
        key="latest_comment"
        label="Coach Comment"
        placeholder="Update Comment and Click Save"
        position="center"
        referenceId="latest_comment"
        size={108.140625}
        summaryAggregationMode="none"
        valueOverride="{{ item }}"
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
        size={245.21875}
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
        size={124.5}
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
        size={168.0625}
        valueOverride="{{ item.name }}"
      />
      <Column
        id="8a644"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{\n  (() => {\n    const raw = currentSourceRow?.status?.latest_status;\n    if (!raw) return null;\n    const key = String(raw).trim().toLowerCase().replace(/_/g, "-");\n\n    return key === "on-programme"       ? "#3C92DC" :\n           key === "completed-on-time"  ? "#2EB886" :\n           key === "completed-late"     ? "#D4E157" :\n           key === "post-gateway"       ? "#9B51E0" :\n           key === "on-bil"             ? "#F2C94C" :\n           key === "non-starter"        ? "#9E9E9E" :\n           key === "no-show"            ? "#EB5757" :\n           key === "withdrawal"         ? "#9E9E9E" : // replace with the actual hex you want\n           null;\n  })()\n}}',
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Status') }}"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        referenceId="latest_status"
        size={141.21875}
        summaryAggregationMode="none"
        valueOverride={
          '{{\n  (() => {\n    const raw = currentSourceRow?.status?.latest_status;\n\n    if (!raw) return "—";\n\n    // normalize: handle underscores + casing\n    const key = String(raw).trim().toLowerCase().replace(/_/g, "-");\n\n    const labels = {\n      "on-programme": "On-Programme",\n      "completed-on-time": "Completed On Time",\n      "completed-late": "Completed Late",\n      "post-gateway": "Post-Gateway",\n      "on-bil": "On-BIL",\n      "non-starter": "Non-Starter",\n      "no-show": "No-Show",\n      "withdrawal": "Withdrawal",\n    };\n\n    // fall back to the original value if not mapped\n    return labels[key] ?? raw;\n  })()\n}}'
        }
      />
      <Column
        id="94f72"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="{{ !colSelector.value.includes('OTJ Actual vs Target') }}"
        key="status"
        label="OTJ Actual vs Target"
        placeholder="Enter value"
        position="center"
        referenceId="otj_percentage"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ item.otj_pct_actual_vs_target_to_date/100 }}"
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
        size={64.375}
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
        size={120.15625}
        statusIndicatorOptions={{ manualData: [] }}
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
        size={87.90625}
        tooltip="Last Evidence of Learning

The most recent date that a learner has attended/caught up on a live session, submitted a coaching survey, or logged the relevant type of OTJ"
        valueOverride="{{ item.latest_evidence_of_learning_date }}"
      />
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
        size={84.671875}
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
        size={182.890625}
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
        size={137.546875}
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
        size={118.25}
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
        size={89.234375}
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
        size={147.03125}
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
        size={201.8125}
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
        size={105.90625}
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
        size={61.53125}
      />
      <Column
        id="7c745"
        alignment="left"
        cellTooltip="Click to copy"
        cellTooltipMode="custom"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Learner Email') }}"
        key="learner"
        label="Learner Email"
        placeholder="Enter value"
        position="center"
        referenceId="learner_email"
        size={87}
        summaryAggregationMode="none"
        valueOverride="{{ item.email }}"
      >
        <Event
          id="1d338838"
          event="clickCell"
          method="copyToClipboard"
          params={{ map: { value: "{{ item }}" } }}
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
        size={134.125}
        valueOverride="{{ item.first_name}} {{ item.last_name }}"
      />
      <Column
        id="d1a42"
        alignment="left"
        cellTooltip="Click to copy"
        cellTooltipMode="custom"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Manager Email') }}"
        key="apprentice_manager"
        label="Manager Email"
        placeholder="No user"
        position="center"
        referenceId="manager_email"
        size={184.234375}
        summaryAggregationMode="none"
        valueOverride="{{ item.email }}"
      >
        <Event
          id="044e6ba9"
          event="clickCell"
          method="copyToClipboard"
          params={{ map: { value: "{{ item }}" } }}
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
        size={106.984375}
        valueOverride="{{item.latest_project_submission_review.details.project_submission_grade}}"
      />
      <Column
        id="eab48"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={257.28125}
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
        size={275.203125}
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
        size={81.96875}
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
        size={105.625}
        valueOverride="{{ item.booked_gateway_date }}"
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
        size={162.328125}
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
        size={238.515625}
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
            '{{\n  (() => {\n    const statusRaw = currentSourceRow?.status?.functional_skills_english_status;\n    const days = currentSourceRow?.status?.latest_days_on_programme;\n\n    // Normalize to handle minor variations like "_" vs "-" and casing\n    // (If you don\'t need this for these values, you can remove this block.)\n    const status = statusRaw == null\n      ? ""\n      : String(statusRaw).trim().replace(/_/g, "-");\n\n    if (status === "Exempt with Certs" || status === "Achieved") return "#F3F4F6";\n\n    if ((status && status.startsWith("Exam")) || (typeof days === "number" && days >= 180)) {\n      return "#FEE2E2";\n    }\n\n    if (typeof days === "number" && days < 180) return "#FEF3C7";\n\n    return null;\n  })()\n}}',
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('English Functional Skills') }}"
        key="status"
        label="English Functional Skills"
        placeholder="Select option"
        position="center"
        referenceId="english_skills"
        size={231.5625}
        summaryAggregationMode="none"
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
            '{{\n  (() => {\n    const statusRaw = currentSourceRow?.status?.functional_skills_maths_status;\n    const days = currentSourceRow?.status?.latest_days_on_programme;\n\n    // Normalize to handle "_" vs "-" (and trim whitespace)\n    const status = statusRaw == null\n      ? ""\n      : String(statusRaw).trim().replace(/_/g, "-");\n\n    if (status === "Exempt with Certs" || status === "Achieved") return "#F3F4F6";\n\n    if ((status && status.startsWith("Exam")) || (typeof days === "number" && days >= 180)) {\n      return "#FEE2E2";\n    }\n\n    if (typeof days === "number" && days < 180) return "#FEF3C7";\n\n    return null;\n  })()\n}}',
        }}
        groupAggregationMode="none"
        hidden="{{ !colSelector.value.includes('Maths Functional Skills')}}"
        key="status"
        label="Math Functional Status"
        placeholder="Select option"
        position="center"
        referenceId="math_skills"
        size={231.5625}
        summaryAggregationMode="none"
        tooltip="The overall status of Maths functional skills completion.
Grey: completed/passed
Yellow: in progress (under 180 days on programme)
Red: urgent action required (180+ days on programme)
Please head to Apprentice Profile for more detail"
        valueOverride="{{ item.functional_skills_maths_status }}"
      />
      <Column
        id="27d6e"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="32815"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="updated_at"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b7805"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="deleted_at"
        label="Deleted at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a291b"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="launch_coach"
        label="Launch coach"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="17e08"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="success_coach"
        label="Success coach"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c4277"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="sidekick"
        label="Sidekick"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d2542"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="_matched_learner_id"
        label="Matched learner ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="86d83"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="learner_id"
        label="Learner ID"
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
        pluginId="saveCoachTagsBatch_mlv"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</Screen>
