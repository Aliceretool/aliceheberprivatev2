<Screen
  id="Delivery_Manager"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={3}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="6b9838a0-0341-4f34-abd0-71b96b4d2759"
>
  <Folder id="Stats">
    <RESTQuery
      id="masterStatsQuery"
      body={
        '[{"key":"query","value":"{{\\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.lsat_coach_response_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\",\\n      \'sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completed_count_sum\',\\n      \'sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_count_sum\'\\n    ],\\n    \\"dimensions\\": [],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n      ...(filters_transformer_dm.value || [])\\n    ].filter(item => item !== null)))\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        id="222620f7"
        event="success"
        method="trigger"
        params={{}}
        pluginId="gw_stat_query_dm"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="79ed5094"
        event="success"
        method="trigger"
        params={{}}
        pluginId="best_avg_query_current3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="63559772"
        event="success"
        method="trigger"
        params={{}}
        pluginId="dm_perf_chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="gw_stat_query_dm"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.apprenticeship_gateway_booked_total_pct\\"\\n    ],\\n    \\"filters\\": [\\n      \\n      // 1. Pod Coach Filter (Forces data to the DM\'s team)\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n\\n      // 2. Cohort Filter (DM View)\\n      (cohort_cohortSelect3.value && cohort_cohortSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect3.value) ? cohort_cohortSelect3.value : [cohort_cohortSelect3.value]\\n      } : null,\\n\\n      // 3. Company Filter (DM View)\\n      (cohort_companySelect3.value && cohort_companySelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect3.value) ? cohort_companySelect3.value : [cohort_companySelect3.value]\\n      } : null,\\n\\n      // 4. Status Filter (DM View)\\n      (cohort_statusSelect3.value && cohort_statusSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.apprenticeship_latest_status\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_statusSelect3.value)\\n          ? cohort_statusSelect3.value\\n          : [cohort_statusSelect3.value]\\n      } : null,\\n\\n      // 5. Risk Status Filter (DM View)\\n      (cohort_riskSelect2.value && cohort_riskSelect2.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect2.value) ? cohort_riskSelect2.value : [cohort_riskSelect2.value]\\n      } : null\\n\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="pr_stat_query_dm"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.progress_review_completed_on_time_pct\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship.progress_review_due_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      \\n      // 1. Pod Coach Filter (Forces data to the DM\'s team)\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n\\n      // 2. Cohort Filter (DM View)\\n      (cohort_cohortSelect3.value && cohort_cohortSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect3.value) ? cohort_cohortSelect3.value : [cohort_cohortSelect3.value]\\n      } : null,\\n\\n      // 3. Company Filter (DM View)\\n      (cohort_companySelect3.value && cohort_companySelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect3.value) ? cohort_companySelect3.value : [cohort_companySelect3.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter (DM View)\\n      (cohort_riskSelect2.value && cohort_riskSelect2.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect2.value) ? cohort_riskSelect2.value : [cohort_riskSelect2.value]\\n      } : null\\n\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <Folder id="Filters">
    <Function
      id="getFilterOptions_dd2"
      funcBody={include("../lib/getFilterOptions_dd2.js", "string")}
    />
    <RESTQuery
      id="get_coach_list_dm"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={
        '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
      }
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query="/sidekick/v1/coach?managed_coaches_only=true"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      resourceTypeOverride=""
      showSuccessToaster={false}
    />
    <Function
      id="filters_transformer_dm"
      funcBody={include("../lib/filters_transformer_dm.js", "string")}
    />
    <RESTQuery
      id="get_cohort_list_dm"
      cacheKeyTtl="3600"
      clonedDemoResourceType="restapi"
      enableCaching={true}
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
      query="/sidekick/v1/cohort"
      queryTimeout="25000"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="get_companies_list_dm"
      cacheKeyTtl="3600"
      clonedDemoResourceType="restapi"
      enableCaching={true}
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
      query="/sidekick/v1/company"
      queryTimeout="25000"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Tables_Queries">
    <RESTQuery
      id="nested_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.lsat_coach_response_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n      \\"sidekick__apprenticeship_monthly.company_name\\",\\n      \\"sidekick__apprenticeship_monthly.cohort_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      // 1. Coach Filter (DM pod coaches)\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"in\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n\\n      // 2. Cohort Filter (DM View)\\n      (cohort_cohortSelect3.value && cohort_cohortSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect3.value) ? cohort_cohortSelect3.value : [cohort_cohortSelect3.value]\\n      } : null,\\n\\n      // 3. Company Filter (DM View)\\n      (cohort_companySelect3.value && cohort_companySelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect3.value) ? cohort_companySelect3.value : [cohort_companySelect3.value]\\n      } : null,\\n\\n      // 4. Status Filter (DM View)  ✅ NEW\\n      (cohort_statusSelect3.value && cohort_statusSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_status\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_statusSelect3.value) ? cohort_statusSelect3.value : [cohort_statusSelect3.value]\\n      } : null,\\n\\n      // 5. Risk Filter (DM View) ✅ (this is correct for monthly)\\n      (cohort_riskSelect2.value && cohort_riskSelect2.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect2.value) ? cohort_riskSelect2.value : [cohort_riskSelect2.value]\\n      } : null,\\n\\n      // 6. Only return rows with active apprenticeships\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count\\",\\n        \\"operator\\": \\"gt\\",\\n        \\"values\\": [\\"0\\"]\\n      }\\n    ].filter(item => item !== null)))\\n  }) \\n}}"},{"key":"","value":""}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer={
        'const rows = data?.data ?? [];\n\nconst num = (v) => {\n  const n = Number(v);\n  return Number.isFinite(n) ? n : null;\n};\n\nreturn rows.map((row) => {\n  const retainableLearners = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count"]) ?? 0;\n  const eolSubmitted = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count"]) ?? 0;\n\n  return {\n    // Dimensions\n    "Coach": row["sidekick__apprenticeship_monthly.coach_full_name"] ?? "Unknown",\n    "Company": row["sidekick__apprenticeship_monthly.company_name"] ?? "Unknown",\n    "Cohort": row["sidekick__apprenticeship_monthly.cohort_name"] ?? "Unknown",\n\n    // Measures (ALL)\n    "On Programme": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count"]) ?? 0,\n    "On BIL": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_bil_count"]) ?? 0,\n    "Very High Risk": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count"]) ?? 0,\n\n    "Retainable Learners": retainableLearners,\n    "EOL Submitted (Retainable)": eolSubmitted,\n    "Learners w/ 0 EOL": Math.max(retainableLearners - eolSubmitted, 0),\n\n    "EOL Submission Rate %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"]),\n    "Delivery Attendance %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"]),\n    "PR Coach Completion %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct"]),\n\n    "Avg LSAT Score": num(row["sidekick__apprenticeship_monthly.avg_lsat_coach_score"]),\n    "LSAT Responses": num(row["sidekick__apprenticeship_monthly.lsat_coach_response_count"]) ?? 0,\n  };\n});'
      }
      type="POST"
    />
    <RESTQuery
      id="coach_metrics_table_query"
      _comment="Coach Metrics Table Query - Gets individual coach performance metrics with dimensions for coach name, company, and cohort (supports table grouping)"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.lsat_coach_response_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      \\n      // 1. Coach Filter\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"in\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect3.value && cohort_cohortSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect3.value) ? cohort_cohortSelect3.value : [cohort_cohortSelect3.value]\\n      } : null,\\n      \\n      // 3. Company Filter\\n      (cohort_companySelect3.value && cohort_companySelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect3.value) ? cohort_companySelect3.value : [cohort_companySelect3.value]\\n      } : null,\\n\\n      // 4. Status Filter ✅ NEW\\n      (cohort_statusSelect3.value && cohort_statusSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_status\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_statusSelect3.value) ? cohort_statusSelect3.value : [cohort_statusSelect3.value]\\n      } : null,\\n      \\n      // 5. Risk Filter (monthly) ✅ correct\\n      (cohort_riskSelect2.value && cohort_riskSelect2.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect2.value) ? cohort_riskSelect2.value : [cohort_riskSelect2.value]\\n      } : null,\\n      \\n      // 6. Active apprenticeships only\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count\\",\\n        \\"operator\\": \\"gt\\",\\n        \\"values\\": [\\"0\\"]\\n      }\\n    ].filter(item => item !== null)))\\n  }) \\n}}"}]'
      }
      bodyFormData={null}
      bodyRaw={null}
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      runWhenPageLoadsDelay="200"
      showSuccessToaster={false}
      transformer={
        'const rows = data?.data ?? [];\n\nconst num = (v) => {\n  const n = Number(v);\n  return Number.isFinite(n) ? n : null;\n};\n\nreturn rows.map((row) => {\n  const retainableLearners = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count"]) ?? 0;\n  const eolSubmitted = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count"]) ?? 0;\n\n  return {\n    "Coach": row["sidekick__apprenticeship_monthly.coach_full_name"] ?? "Unknown",\n\n    "On Programme": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count"]) ?? 0,\n    "On BIL": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_bil_count"]) ?? 0,\n    "Very High Risk": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count"]) ?? 0,\n\n    "Retainable Learners": retainableLearners,\n    "EOL Submitted (Retainable)": eolSubmitted,\n    "Learners w/ 0 EOL": Math.max(retainableLearners - eolSubmitted, 0),\n\n    "EOL Submission Rate %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"]),\n    "Delivery Attendance %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"]),\n    "PR Coach Completion %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct"]),\n\n    "Avg LSAT Score": num(row["sidekick__apprenticeship_monthly.avg_lsat_coach_score"]),\n    "LSAT Responses": num(row["sidekick__apprenticeship_monthly.lsat_coach_response_count"]) ?? 0,\n  };\n});'
      }
      type="POST"
    />
    <RESTQuery
      id="cohort_metrics_table_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.lsat_coach_response_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.cohort_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n\\n      // 1. Coach Filter (limits to the DM’s pod)\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"in\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect3.value && cohort_cohortSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect3.value) ? cohort_cohortSelect3.value : [cohort_cohortSelect3.value]\\n      } : null,\\n      \\n      // 3. Company Filter\\n      (cohort_companySelect3.value && cohort_companySelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect3.value) ? cohort_companySelect3.value : [cohort_companySelect3.value]\\n      } : null,\\n\\n      // 4. Status Filter ✅ NEW\\n      (cohort_statusSelect3.value && cohort_statusSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_status\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_statusSelect3.value) ? cohort_statusSelect3.value : [cohort_statusSelect3.value]\\n      } : null,\\n      \\n      // 5. Risk Filter ✅ (correct for monthly cube)\\n      (cohort_riskSelect2.value && cohort_riskSelect2.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect2.value) ? cohort_riskSelect2.value : [cohort_riskSelect2.value]\\n      } : null,\\n      \\n      // 6. Active apprenticeships only\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count\\",\\n        \\"operator\\": \\"gt\\",\\n        \\"values\\": [\\"0\\"]\\n      }\\n    ].filter(item => item !== null)))\\n  }) \\n}}"}]'
      }
      bodyFormData={null}
      bodyRaw={null}
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      runWhenPageLoadsDelay="200"
      showSuccessToaster={false}
      transformer={
        'const rows = data?.data ?? [];\n\nconst num = (v) => {\n  const n = Number(v);\n  return Number.isFinite(n) ? n : null;\n};\n\nreturn rows.map((row) => {\n  const retainableLearners = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count"]) ?? 0;\n  const eolSubmitted = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count"]) ?? 0;\n\n  return {\n    "Cohort": row["sidekick__apprenticeship_monthly.cohort_name"] ?? "Unknown",\n\n    "On Programme": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count"]) ?? 0,\n    "On BIL": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_bil_count"]) ?? 0,\n    "Very High Risk": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count"]) ?? 0,\n\n    "Retainable Learners": retainableLearners,\n    "EOL Submitted (Retainable)": eolSubmitted,\n    "Learners w/ 0 EOL": Math.max(retainableLearners - eolSubmitted, 0),\n\n    "EOL Submission Rate %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"]),\n    "Delivery Attendance %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"]),\n    "PR Coach Completion %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct"]),\n\n    "Avg LSAT Score": num(row["sidekick__apprenticeship_monthly.avg_lsat_coach_score"]),\n    "LSAT Responses": num(row["sidekick__apprenticeship_monthly.lsat_coach_response_count"]) ?? 0,\n  };\n});'
      }
      type="POST"
    />
    <RESTQuery
      id="company_metrics_table_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.lsat_coach_response_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.company_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      \\n      // 1. Coach Filter\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"in\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect3.value && cohort_cohortSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect3.value) ? cohort_cohortSelect3.value : [cohort_cohortSelect3.value]\\n      } : null,\\n      \\n      // 3. Company Filter\\n      (cohort_companySelect3.value && cohort_companySelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect3.value) ? cohort_companySelect3.value : [cohort_companySelect3.value]\\n      } : null,\\n\\n      // 4. Status Filter ✅ NEW\\n      (cohort_statusSelect3.value && cohort_statusSelect3.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_status\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_statusSelect3.value) ? cohort_statusSelect3.value : [cohort_statusSelect3.value]\\n      } : null,\\n      \\n      // 5. Risk Filter ✅ correct\\n      (cohort_riskSelect2.value && cohort_riskSelect2.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect2.value) ? cohort_riskSelect2.value : [cohort_riskSelect2.value]\\n      } : null,\\n      \\n      // 6. Active apprenticeships only\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count\\",\\n        \\"operator\\": \\"gt\\",\\n        \\"values\\": [\\"0\\"]\\n      }\\n    ].filter(item => item !== null)))\\n  }) \\n}}"}]'
      }
      bodyFormData={null}
      bodyRaw={null}
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      runWhenPageLoadsDelay="200"
      showSuccessToaster={false}
      transformer={
        'const rows = data?.data ?? [];\n\nconst num = (v) => {\n  const n = Number(v);\n  return Number.isFinite(n) ? n : null;\n};\n\nreturn rows.map((row) => {\n  const retainableLearners = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count"]) ?? 0;\n  const eolSubmitted = num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count"]) ?? 0;\n\n  return {\n    "Company": row["sidekick__apprenticeship_monthly.company_name"] ?? "Unknown",\n\n    "On Programme": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count"]) ?? 0,\n    "On BIL": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_bil_count"]) ?? 0,\n    "Very High Risk": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count"]) ?? 0,\n\n    "Retainable Learners": retainableLearners,\n    "EOL Submitted (Retainable)": eolSubmitted,\n    "Learners w/ 0 EOL": Math.max(retainableLearners - eolSubmitted, 0),\n\n    "EOL Submission Rate %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"]),\n    "Delivery Attendance %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"]),\n    "PR Coach Completion %": num(row["sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct"]),\n\n    "Avg LSAT Score": num(row["sidekick__apprenticeship_monthly.avg_lsat_coach_score"]),\n    "LSAT Responses": num(row["sidekick__apprenticeship_monthly.lsat_coach_response_count"]) ?? 0,\n  };\n});'
      }
      type="POST"
    />
  </Folder>
  <Folder id="Best_Average">
    <Function
      id="best_avg_current2"
      funcBody={include("../lib/best_avg_current2.js", "string")}
    />
    <RESTQuery
      id="best_avg_query_current3"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\",\\n      \\"sidekick__apprenticeship.apprenticeship_gateway_booked_total_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\":\\n    JSON.parse(JSON.stringify([\\n      ...(filters_transformer_dm.value || [])\\n\\n    ].flat().filter(item => item !== null && Object.keys(item).length > 0)))\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <Folder id="Current_User_Context">
    <JavascriptQuery
      id="set_current_user2"
      notificationDuration={4.5}
      query={include("../lib/set_current_user2.js", "string")}
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <Function
      id="current_user_transformer2"
      funcBody={include("../lib/current_user_transformer2.js", "string")}
    />
    <State
      id="currentUser_fullName3"
      value="{{ 
  impersonate_user.value?.first_name 
  ? `${impersonate_user.value.first_name} ${impersonate_user.value.last_name}` 
  : current_user.fullName 
}}"
    />
  </Folder>
  <Folder id="Chart_Queries">
    <Function
      id="chart_transformer"
      funcBody={include("../lib/chart_transformer.js", "string")}
    />
    <RESTQuery
      id="dm_perf_chart"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\"\\n    ],\\n    \\"dimensions\\": [], \\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"last 3 months\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      \\n      // 1. Pod Coach Filter (Forces data to the DM\'s team)\\n      (getFilterOptions_dd2.value && getFilterOptions_dd2.value.coaches && getFilterOptions_dd2.value.coaches.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(getFilterOptions_dd2.value.coaches) \\n          ? getFilterOptions_dd2.value.coaches.map(c => c.value || c.label || c)\\n          : [getFilterOptions_dd2.value.coaches.value || getFilterOptions_dd2.value.coaches]\\n      } : null,\\n\\n      // 2. Global UI Filters (The spread operator unpacks the array)\\n      ...(filters_transformer_dm.value || [])\\n\\n    ].flat().filter(item => item !== null && Object.keys(item).length > 0)))\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        id="c2ab5c0d"
        event="success"
        method="trigger"
        params={{}}
        pluginId="dm_average_chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ec8d7a60"
        event="success"
        method="trigger"
        params={{}}
        pluginId="dm_best_chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="best_average_pr_chart_query3"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.progress_review_completed_on_time_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship.progress_review_due_date\\",\\n        \\"dateRange\\": \\"last 3 months\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      (cohort_cohortSelect.value?.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n      (cohort_companySelect.value?.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n      (cohort_riskSelect.value?.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect.value) ? cohort_riskSelect.value : [cohort_riskSelect.value]\\n      } : null\\n    ].filter(x => x !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="dm_average_chart"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\"\\n    ],\\n    \\"dimensions\\": [],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"last 3 months\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      ...(filters_transformer_dm.value || []),\\n\\n      // Only benchmark-eligible coaches in the company average\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n        \\"operator\\": \\"gt\\",\\n        \\"values\\": [\\"10\\"]\\n      }\\n\\n    ].flat().filter(item => item !== null && Object.keys(item).length > 0)))\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="dm_best_chart"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"last 3 months\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      ...(filters_transformer_dm.value || []),\\n\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n        \\"operator\\": \\"gt\\",\\n        \\"values\\": [\\"10\\"]\\n      }\\n\\n    ].flat().filter(item => item !== null && Object.keys(item).length > 0)))\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <State
    id="cohort_currentSortContext3"
    value="{{ 
  impersonate_user.value?.first_name 
  ? `${impersonate_user.value.first_name} ${impersonate_user.value.last_name}` 
  : current_user.fullName 
}}"
  />
  <JavascriptQuery
    id="pageReloadFilters2"
    notificationDuration={4.5}
    query={include("../lib/pageReloadFilters2.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Include src="./cohort_compassFrame3.rsx" />
  <Include src="./cohort_deepdive3.rsx" />
  <Frame
    id="$main7"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="container118"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      tooltipText="Company-wide best number "
    >
      <View id="00030" viewKey="View 1">
        <Include src="./filterContainerTrends6.rsx" />
        <Include src="./tabbedContainer4.rsx" />
      </View>
    </Container>
    <Include src="./tabbedContainer5.rsx" />
  </Frame>
</Screen>
