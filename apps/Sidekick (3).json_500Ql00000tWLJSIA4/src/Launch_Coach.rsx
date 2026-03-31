<Screen
  id="Launch_Coach"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={13}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="ff2a3e15-464a-467e-96d7-841f8911b2fe"
>
  <RESTQuery
    id="cohort_cohort_dropdown2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    importedQueryInputs={{
      map: {
        dynamicFilters:
          '{{ \n    JSON.stringify([\n\n      // 1. Company Filter\n      (cohort_companySelect2.value && cohort_companySelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.company_name",\n        "operator": "equals",\n        "values": cohort_companySelect2.value\n      } : null,\n\n      // 2. Status Filter\n      (cohort_statusSelect2.value && cohort_statusSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_statusSelect2.value\n      } : null,\n\n    ].filter(x => x !== null)) \n  }}',
      },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Cohort Dropdown Query"
    playgroundQueryUuid="4b7b8016-f40d-4a20-b04f-06b5230f6cdf"
    query={
      'cubejs-api/v1/load?query={\n  "dimensions": [\n    "gh_apprenticeship.cohort_name"\n  ],\n  "filters": {{ dynamicFilters }},\n  "order": {\n    "gh_apprenticeship.cohort_name": "asc"\n  }\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.data"
  />
  <RESTQuery
    id="GW_stat_query2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    importedQueryInputs={{
      map: { coach_name: "{{ currentUser_fullName2.value }}" },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Gateway Bookings Rate"
    playgroundQueryUuid="7e7466b3-434e-459d-81ed-d2ea4a8babba"
    query={
      'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_gateway_booked_within_day_90_pct"\n  ],\n  "filters": [\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [\n        "{{ coach_name }}"\n      ]\n    }\n  ]\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.339.0"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RESTQuery
    id="cohort_dd_coach_dropdown2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    importedQueryInputs={{
      map: {
        dynamicFilters:
          '{{ \n    JSON.stringify([\n\n      // 1. Company Filter\n      (cohort_dd_companySelect2.value && cohort_dd_companySelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.company_name",\n        "operator": "equals",\n        "values": cohort_dd_companySelect2.value\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_dd_cohortSelect2.value && cohort_dd_cohortSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.cohort_name",\n        "operator": "equals",\n        "values": cohort_dd_cohortSelect2.value\n      } : null,\n\n      // 3. Status Filter\n      (cohort_dd_statusSelect2.value && cohort_dd_statusSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_dd_statusSelect2.value\n      } : null,\n\n      // 4. Risk Filter\n      (cohort_dd_riskSelect2.value && cohort_dd_riskSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_dd_riskSelect2.value\n      } : null\n\n    ].filter(x => x !== null)) \n  }}',
      },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Coach Dropdown Query"
    playgroundQueryUuid="f4709018-cd87-4d67-abb7-52b21037718c"
    query={
      'cubejs-api/v1/load?query={\n  "dimensions": [\n    "gh_apprenticeship.coach_full_name"\n  ],\n  "filters": {{ dynamicFilters }},\n  "order": {\n    "gh_apprenticeship.coach_full_name": "asc"\n  }\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.329.0"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.data"
  />
  <RESTQuery
    id="cohort_dd_company_dropdown2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    importedQueryInputs={{
      map: {
        dynamicFilters:
          '{{ \n    JSON.stringify([\n\n      // 1. Coach Filter\n      (cohort_dd_coachSelect2.value && cohort_dd_coachSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.coach_full_name",\n        "operator": "equals",\n        "values": cohort_dd_coachSelect2.value\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_dd_cohortSelect2.value && cohort_dd_cohortSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.cohort_name",\n        "operator": "equals",\n        "values": cohort_dd_cohortSelect2.value\n      } : null,\n\n      // 3. Status Filter\n      (cohort_dd_statusSelect2.value && cohort_dd_statusSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_dd_statusSelect2.value\n      } : null,\n\n      // 4. Risk Filter\n      (cohort_dd_riskSelect2.value && cohort_dd_riskSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_dd_riskSelect2.value\n      } : null\n\n    ].filter(x => x !== null)) \n  }}',
      },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Company Dropdown Query"
    playgroundQueryUuid="630d59db-b8f4-4559-ac57-09a251fb9dd9"
    query={
      'cubejs-api/v1/load?query={\n  "dimensions": [\n    "gh_apprenticeship.company_name"\n  ],\n  "filters": {{ dynamicFilters }},\n  "order": {\n    "gh_apprenticeship.company_name": "asc"\n  }\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.329.0"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.data"
  />
  <RESTQuery
    id="cohort_dd_cohort_dropdown2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    importedQueryInputs={{
      map: {
        dynamicFilters:
          '{{ \n    JSON.stringify([\n\n      // 1. Company Filter\n      (cohort_dd_companySelect2.value && cohort_dd_companySelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.company_name",\n        "operator": "equals",\n        "values": cohort_dd_companySelect2.value\n      } : null,\n\n      // 2. Coach Filter\n      (cohort_dd_coachSelect2.value && cohort_dd_coachSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.coach_full_name",\n        "operator": "equals",\n        "values": cohort_dd_coachSelect2.value\n      } : null,\n\n      // 3. Status Filter\n      (cohort_dd_statusSelect2.value && cohort_dd_statusSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_dd_statusSelect2.value\n      } : null,\n\n      // 4. Risk Filter\n      (cohort_dd_riskSelect2.value && cohort_dd_riskSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_dd_riskSelect2.value\n      } : null\n\n    ].filter(x => x !== null)) \n  }}',
      },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Cohort Dropdown Query"
    playgroundQueryUuid="4b7b8016-f40d-4a20-b04f-06b5230f6cdf"
    query={
      'cubejs-api/v1/load?query={\n  "dimensions": [\n    "gh_apprenticeship.cohort_name"\n  ],\n  "filters": {{ dynamicFilters }},  // <--- This is the only change\n  "order": {\n    "gh_apprenticeship.cohort_name": "asc"\n  }\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.data"
  />
  <RESTQuery
    id="cohort_dd_learners_table2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    importedQueryInputs={{
      dynamicFilters:
        '{{ \n  JSON.stringify([\n    // 0. Coach Filter\n    (cohort_dd_coachSelect2.value && cohort_dd_coachSelect2.value.length > 0) ? {\n       "member": "gh_apprenticeship.coach_full_name",\n       "operator": "equals",\n       "values": cohort_dd_coachSelect2.value\n    } : null,\n    // 1. Cohort Filter\n    (cohort_dd_cohortSelect2.value && cohort_dd_cohortSelect2.value.length > 0) ? {\n       "member": "gh_apprenticeship.cohort_name",\n       "operator": "equals",\n       "values": cohort_dd_cohortSelect2.value\n    } : null,\n\n    // 2. Company Filter\n    (cohort_dd_companySelect2.value && cohort_dd_companySelect2.value.length > 0) ? {\n       "member": "gh_apprenticeship.company_name",\n       "operator": "equals",\n       "values": cohort_dd_companySelect2.value\n    } : null,\n\n    // 3. Status Filter\n    (cohort_dd_statusSelect2.value && cohort_dd_statusSelect2.value.length > 0) ? {\n       "member": "gh_apprenticeship.apprenticeship_latest_status",\n       "operator": "equals",\n       "values": cohort_dd_statusSelect2.value\n    } : null,\n\n    // 4. Risk Level Filter\n    (cohort_dd_riskSelect2.value && cohort_dd_riskSelect2.value.length > 0) ? {\n       "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n       "operator": "equals",\n       "values": cohort_dd_riskSelect2.value\n    } : null\n\n  ].filter(item => item !== null)) // This removes the empty filters\n}}',
      dynamicOrder:
        '{{ \n  JSON.stringify(\n  cohort_currentSortContext2.value === \'eol_priority\' \n  ? { "gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at": "asc" } \n\n  : cohort_currentSortContext2.value === \'prw_priority\'\n  ? { "gh_apprenticeship.apprenticeship_latest_progress_review_completed_at": "asc" }\n\n  : cohort_currentSortContext2.value === \'gb_priority\'\n  ? { "gh_apprenticeship.apprenticeship_booked_gateway_start_time": "desc" } \n  // "Desc" puts Farthest dates (e.g. 2026) at top, which matches your "Farthest to Soonest" rule roughly.\n\n  : cohort_currentSortContext2.value === \'attendance_priority\'\n  ? { "gh_apprenticeship.apprenticeship_total_delivery_sessions_missed": "desc" }\n\n  : { "gh_apprenticeship.cohort_name": "asc" } \n  // Default for \'attendance_priority\' or if no card is clicked\n  )\n}}',
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Learners Query"
    playgroundQueryUuid="42e468ff-ee94-4dba-befb-4a79c7882f47"
    query={
      'cubejs-api/v1/load?query={\n\n  "dimensions": [\n\n    "gh_apprenticeship.apprenticeship_id",\n\n    "gh_apprenticeship.apprenticeship_latest_project_submission_grade",\n\n    "gh_apprenticeship.apprenticeship_latest_status",\n\n    "gh_apprenticeship.apprenticeship_otj_submitted_hours_to_date",\n    "gh_apprenticeship.apprenticeship_total_delivery_sessions_missed",\n\n    "gh_apprenticeship.apprenticeship_total_projects_submitted",\n\n    "gh_apprenticeship.apprenticeship_uuid",\n\n    "gh_apprenticeship.learner_job_title",\n\n    "gh_apprenticeship.company_name",\n\n    "gh_apprenticeship.cohort_name",\n\n    "gh_apprenticeship.learner_full_name",\n\n    "gh_apprenticeship.coach_account_id",\n\n    "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n\n    "gh_apprenticeship.coach_full_name",\n\n    "gh_apprenticeship.apprentice_manager_full_name",\n\n    "gh_apprenticeship.learner_email",\n\n    "gh_apprenticeship.apprentice_manager_email",\n\n    "gh_apprenticeship.bil_process_status"\n\n  ],\n"filters": {{ dynamicFilters }},\n\n"order": {{ dynamicOrder }},\n\n  "timeDimensions": [\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_coaching_session_attended_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_delivery_session_attended_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_gateway_date",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_progress_review_completed_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_project_submitted_at",\n\n      "granularity": "day"\n\n    },\n\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_booked_gateway_start_time",\n\n      "granularity": "day"\n\n    }\n\n  ]\n\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.329.0"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showLatestVersionUpdatedWarning={true}
    showSuccessToaster={false}
    transformer={
      '// 1. Safety check\nif (!data) return [];\nlet rows = data.data ? data.data : data;\n\n// ---------------------------------------------------------\n// CONFIGURATION\n// ---------------------------------------------------------\n\n// A. Risk Severity (Higher = Higher Priority)\nconst riskScore = {\n  "Very High": 6,\n  "Red": 5,      // Legacy\n  "High": 4,\n  "Amber": 3,    // Legacy\n  "Medium": 2,\n  "Low": 1,\n  "Green": 0     // Legacy\n};\n\n// B. Column Renaming Map\nconst columnMapping = {\n  "learner_full_name": "Learner",\n  "cohort_name": "Cohort",\n  "company_name": "Company",\n  "apprenticeship_latest_status": "Status",\n  "apprenticeship_latest_risk_bucket_name": "Risk",\n  "apprenticeship_otj_submitted_hours_to_date": "OTJ Total",\n  "bil_process_status": "BiL Status",\n  "apprenticeship_total_delivery_sessions_missed": "Missed Sessions",\n  "apprenticeship_latest_evidence_of_learning_at": "Latest EOL",\n  "apprenticeship_latest_project_submitted_at": "Latest Project",\n  "apprenticeship_latest_coaching_session_attended_at": "Latest Coaching",\n  "apprenticeship_latest_progress_review_completed_at": "Latest Review",\n  "apprenticeship_booked_gateway_start_time": "Gateway Booked", // Added this based on your prompt\n  "apprenticeship_gateway_date": "Gateway Date", // Expected date\n  "apprenticeship_latest_delivery_session_attended_at": "Latest Delivery",\n  "learner_job_title": "Job Title",\n  "apprentice_manager_full_name": "Manager",\n  "apprenticeship_id": "Learner ID"\n};\n\n// ---------------------------------------------------------\n// SORTING LOGIC\n// ---------------------------------------------------------\n\n// Helper: Get Risk Score (Default to -1 if missing)\nconst getRisk = (row) => riskScore[row[\'gh_apprenticeship.apprenticeship_latest_risk_bucket_name\']] || -1;\n\n// Helper: Compare Dates\n// Returns negative if a < b, positive if a > b\n// handlesNulls: \'first\' (nulls at top), \'last\' (nulls at bottom)\nconst compareDates = (dateA, dateB, direction = \'asc\', nullsPosition = \'first\') => {\n  if (!dateA && !dateB) return 0; // Both null\n  if (!dateA) return nullsPosition === \'first\' ? -1 : 1;\n  if (!dateB) return nullsPosition === \'first\' ? 1 : -1;\n  \n  const d1 = new Date(dateA).getTime();\n  const d2 = new Date(dateB).getTime();\n  \n  return direction === \'asc\' ? d1 - d2 : d2 - d1;\n};\n\n// Detect Context from Variable\n// Detect Context from Variable\nconst context = {{ cohort_currentSortContext2.value }};\n\nif (context) {\n  rows.sort((a, b) => {\n    let primaryDiff = 0;\n\n    // --- CASE 1: EOL PRIORITY ---\n    if (context === \'eol_priority\') {\n      const field = \'gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at\';\n      primaryDiff = compareDates(a[field], b[field], \'asc\', \'first\');\n    }\n\n    // --- CASE 2: PRW PRIORITY (Updated Name) ---\n    else if (context === \'prw_priority\') {\n       const field = \'gh_apprenticeship.apprenticeship_latest_progress_review_completed_at\';\n       primaryDiff = compareDates(a[field], b[field], \'asc\', \'first\');\n    }\n\n    // --- CASE 3: GB PRIORITY (Updated Name) ---\n    else if (context === \'gb_priority\') {\n      const field = \'gh_apprenticeship.apprenticeship_booked_gateway_start_time\';\n      // Logic: Nulls First, then Farthest (High) to Soonest (Low)\n      \n      const valA = a[field];\n      const valB = b[field];\n\n      if (!valA && valB) return -1; // A is null -> A First\n      if (valA && !valB) return 1;  // B is null -> B First\n      if (!valA && !valB) primaryDiff = 0; \n      else {\n        // Descending Sort: Farthest (High Date) -> Soonest (Low Date)\n        primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();\n      }\n    }\n    \n    // --- CASE 4: ATTENDANCE (Do Nothing / Fallback) ---\n    else if (context === \'attendance_priority\') {\n        return 0; // Keeps original order (or default cohort sort)\n    }\n\n    // --- CASE 4: ATTENDANCE ---\n    else if (context === \'attendance_priority\') {\n        const field = \'gh_apprenticeship.apprenticeship_total_delivery_sessions_missed\';\n        \n        // Treat NULL as 0 (assume no missed sessions if data is missing)\n        const valA = a[field] || 0;\n        const valB = b[field] || 0;\n\n        // Sort Descending: High numbers (lots of missed sessions) go to TOP\n        primaryDiff = valB - valA; \n    }\n\n    // --- SECONDARY SORT (Tie-Breaker: Risk) ---\n    if (primaryDiff !== 0) {\n      return primaryDiff;\n    } else {\n      // Sort by Risk (High to Low) for ties\n      return getRisk(b) - getRisk(a);\n    }\n  });\n}\n\n// ---------------------------------------------------------\n// RENAMING (Final Step)\n// ---------------------------------------------------------\nreturn rows.map(row => {\n  const newRow = {};\n  Object.keys(row).forEach(key => {\n    const rawKey = key.split(\'.\').pop();\n    if (columnMapping[rawKey]) {\n      newRow[columnMapping[rawKey]] = row[key];\n    } else {\n      newRow[_.startCase(rawKey)] = row[key];\n    }\n  });\n  return newRow;\n});'
    }
  />
  <State id="cohort_currentSortContext2" />
  <RESTQuery
    id="LSAT_stat_query2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    importedQueryInputs={{
      map: { coach_name: "{{currentUser_fullName2.value}}" },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="LSAT Query"
    playgroundQueryUuid="b06858dc-a493-45da-bc58-dc2687e4b36c"
    query={
      'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.avg_lsat_score_latest"\n  ],\n  "filters": [\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [\n        "{{ coach_name }}"\n      ]\n    }\n  ]\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.339.0"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RESTQuery
    id="cohort_company_dropdown2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    importedQueryInputs={{
      map: {
        dynamicFilters:
          '{{ \n    JSON.stringify([\n\n      // 1. Cohort Filter\n      (cohort_cohortSelect2.value && cohort_cohortSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.cohort_name",\n        "operator": "equals",\n        "values": cohort_cohortSelect2.value\n      } : null,\n\n      // 2. Status Filter\n      (cohort_statusSelect2.value && cohort_statusSelect2.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_statusSelect2.value\n      } : null,\n\n    ].filter(x => x !== null)) \n  }}',
      },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Company Dropdown Query"
    playgroundQueryUuid="630d59db-b8f4-4559-ac57-09a251fb9dd9"
    query={
      'cubejs-api/v1/load?query={\n  "dimensions": [\n    "gh_apprenticeship.company_name"\n  ],\n  "filters": {{ dynamicFilters }},\n  "order": {\n    "gh_apprenticeship.company_name": "asc"\n  }\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.329.0"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.data"
  />
  <RESTQuery
    id="EOL_stat_query2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    importedQueryInputs={{
      map: { coach_name: "{{ currentUser_fullName2.value }}" },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="EOL Rate"
    playgroundQueryUuid="23cbfe5f-105a-486d-9220-254ba962c901"
    query={
      'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_learners_with_eol_pct"\n  ],\n  "filters": [\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [\n        "{{ coach_name }}"\n      ]\n    }\n  ]\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.339.0"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RESTQuery
    id="PR_stat_query2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    importedQueryInputs={{
      map: { coach_name: "{{ currentUser_fullName2.value }}" },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="PR Completion Rate Query"
    playgroundQueryUuid="a4fa1d45-cd10-40dc-9e50-a749a92fe730"
    query={
      'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.progress_review_completed_on_time_pct"\n  ],\n  "filters": [\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [\n        "{{ coach_name }}"\n      ]\n    }\n  ]\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.339.0"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RESTQuery
    id="cohort_learners_table_test2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    importedQueryInputs={{
      dynamicFilters:
        '{{ \n  JSON.stringify([\n    // 0. Coach Filter\n    (1 > 0) ? {\n       "member": "gh_apprenticeship.coach_full_name",\n       "operator": "equals",\n       "values": ["Sara Richardson"]\n    } : null\n  ].filter(item => item !== null)) \n}}',
      dynamicOrder:
        '{{ \n  JSON.stringify(\n  { "gh_apprenticeship.cohort_name": "asc" } \n  // Default for \'attendance_priority\' or if no card is clicked\n  )\n}}',
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Learners Query"
    playgroundQueryUuid="42e468ff-ee94-4dba-befb-4a79c7882f47"
    query={
      'cubejs-api/v1/load?query={\n\n  "dimensions": [\n\n    "gh_apprenticeship.apprenticeship_id",\n\n    "gh_apprenticeship.apprenticeship_latest_project_submission_grade",\n\n    "gh_apprenticeship.apprenticeship_latest_status",\n\n    "gh_apprenticeship.apprenticeship_otj_submitted_hours_to_date",\n    "gh_apprenticeship.apprenticeship_total_delivery_sessions_missed",\n\n    "gh_apprenticeship.apprenticeship_total_projects_submitted",\n\n    "gh_apprenticeship.apprenticeship_uuid",\n\n    "gh_apprenticeship.learner_job_title",\n\n    "gh_apprenticeship.company_name",\n\n    "gh_apprenticeship.cohort_name",\n\n    "gh_apprenticeship.learner_full_name",\n\n    "gh_apprenticeship.coach_account_id",\n\n    "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n\n    "gh_apprenticeship.coach_full_name",\n\n    "gh_apprenticeship.apprentice_manager_full_name",\n\n    "gh_apprenticeship.learner_email",\n\n    "gh_apprenticeship.apprentice_manager_email",\n\n    "gh_apprenticeship.bil_process_status"\n\n  ],\n"filters": {{ dynamicFilters }},\n\n"order": {{ dynamicOrder }},\n\n  "timeDimensions": [\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_coaching_session_attended_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_delivery_session_attended_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_gateway_date",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_progress_review_completed_at",\n\n      "granularity": "day"\n\n    },\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_latest_project_submitted_at",\n\n      "granularity": "day"\n\n    },\n\n\n    {\n\n      "dimension": "gh_apprenticeship.apprenticeship_booked_gateway_start_time",\n\n      "granularity": "day"\n\n    }\n\n  ]\n\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.329.0"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showLatestVersionUpdatedWarning={true}
    showSuccessToaster={false}
    transformer={
      '// 1. Safety check\nif (!data) return [];\nlet rows = data.data ? data.data : data;\n\n// ---------------------------------------------------------\n// CONFIGURATION\n// ---------------------------------------------------------\n\n// B. Column Renaming Map\nconst columnMapping = {\n  "learner_full_name": "Learner",\n  "cohort_name": "Cohort",\n  "company_name": "Company",\n  "apprenticeship_latest_status": "Status",\n  "apprenticeship_latest_risk_bucket_name": "Risk",\n  "apprenticeship_otj_submitted_hours_to_date": "OTJ Total",\n  "bil_process_status": "BiL Status",\n  "apprenticeship_total_delivery_sessions_missed": "Missed Sessions",\n  "apprenticeship_latest_evidence_of_learning_at": "Latest EOL",\n  "apprenticeship_latest_project_submitted_at": "Latest Project",\n  "apprenticeship_latest_coaching_session_attended_at": "Latest Coaching",\n  "apprenticeship_latest_progress_review_completed_at": "Latest Review",\n  "apprenticeship_booked_gateway_start_time": "Gateway Booked", // Added this based on your prompt\n  "apprenticeship_gateway_date": "Gateway Date", // Expected date\n  "apprenticeship_latest_delivery_session_attended_at": "Latest Delivery",\n  "learner_job_title": "Job Title",\n  "apprentice_manager_full_name": "Manager",\n  "apprenticeship_id": "Learner ID"\n};\n\n\n// ---------------------------------------------------------\n// RENAMING (Final Step)\n// ---------------------------------------------------------\nreturn rows.map(row => {\n  const newRow = {};\n  Object.keys(row).forEach(key => {\n    const rawKey = key.split(\'.\').pop();\n    if (columnMapping[rawKey]) {\n      newRow[columnMapping[rawKey]] = row[key];\n    } else {\n      newRow[_.startCase(rawKey)] = row[key];\n    }\n  });\n  return newRow;\n});'
    }
  />
  <State id="currentUser_fullName2" value="Sara Richardson" />
  <RESTQuery
    id="Attendance_stat_query2"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    importedQueryInputs={{
      map: { coach_name: "{{ currentUser_fullName2.value }}" },
    }}
    isClonedDemoQuery={true}
    isImported={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    playgroundQueryName="Attendance Rate Query"
    playgroundQueryUuid="f3c94fac-8987-4e08-84a0-771e71670a29"
    query={
      'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_delivery_plan_attendance_rate"\n  ],\n  "filters": [\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [\n        "{{ coach_name }}"\n      ]\n    }\n  ]\n}'
    }
    resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
    retoolVersion="3.339.0"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Include src="./cohort_compassFrame2.rsx" />
  <Include src="./cohort_deepdive2.rsx" />
  <Include src="./drawerFrame2.rsx" />
  <Frame
    id="$main10"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="container92"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle94"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Image
          id="image8"
          fit="contain"
          heightType="fixed"
          horizontalAlign="center"
          src="https://cdn.brandfetch.io/idSlhycQeR/w/800/h/132/theme/dark/logo.png?c=1dxbfHSJFAPEGdCLU4o5B"
          style={{}}
        />
      </View>
    </Container>
    <Divider id="divider5" />
    <Text
      id="text413"
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Text
      id="text414"
      style={{ fontSize: "h2Font", fontWeight: "h2Font", fontFamily: "h2Font" }}
      value="**Success Metrics Dashboard**"
      verticalAlign="center"
    />
    <Text
      id="text415"
      value="Track your performance metrics and dive deeper to take actions"
      verticalAlign="center"
    />
    <Container
      id="container93"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle95"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Include src="./filterContainerTrends5.rsx" />
        <Include src="./tabbedContainer3.rsx" />
      </View>
    </Container>
    <Select
      id="select3"
      emptyMessage="No options"
      itemMode="static"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
      <Event
        id="2cf924fa"
        event="change"
        method="setGrouping"
        params={{}}
        pluginId="table5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Table
      id="table5"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ cohort_learners_table_test2.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      groupByColumns={[{ map: { columnId: "7b26a" } }]}
      groupedColumnConfig={{ expandByDefault: false }}
      primaryKeyColumnId="ecb80"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="ecb80"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="Learner ID"
        label="Learner id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7b26a"
        alignment="left"
        editable={false}
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
        id="88323"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Apprenticeship Latest Project Submission Grade"
        label="Apprenticeship latest project submission grade"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="87463"
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
        id="2541f"
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
        id="46a0e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Missed Sessions"
        label="Missed sessions"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="07585"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Apprenticeship Total Projects Submitted"
        label="Apprenticeship total projects submitted"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="35b3f"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Apprenticeship Uuid"
        label="Apprenticeship UUID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3419f"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Job Title"
        label="Job title"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="90318"
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
        id="05df0"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Cohort"
        label="Cohort"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="65ada"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Coach Account Id"
        label="Coach account ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="90fa7"
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
        id="3099c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Coach Full Name"
        label="Coach full name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e06ec"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Manager"
        label="Manager"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="089d3"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="Learner Email"
        label="Learner email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          id="2e361e72"
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
        id="542b4"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="Apprentice Manager Email"
        label="Apprentice manager email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          id="b559d5a6"
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
        id="6b4dd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="BiL Status"
        label="Bi l status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a990f"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Day"
        label="Day"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9282a"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Gateway Booked"
        label="Gateway booked"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0ff93"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Coaching"
        label="Latest coaching"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="626c2"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Delivery"
        label="Latest delivery"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8bc90"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest EOL"
        label="Latest eol"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8bc1c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Gateway Date"
        label="Gateway date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="dfa59"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Review"
        label="Latest review"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="83ec3"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Latest Project"
        label="Latest project"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="6ed8d"
        icon="bold/interface-text-formatting-list-bullets"
        label="Group by"
        type="groupBy"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="6dff28d5"
          event="clickToolbar"
          method="refresh"
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="42beb"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <Event
        id="222c1332"
        event="selectRow"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</Screen>
