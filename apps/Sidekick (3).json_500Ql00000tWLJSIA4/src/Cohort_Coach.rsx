<Screen
  id="Cohort_Coach"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={1}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="eab8b8ac-1234-4157-95b1-e767d3e3a180"
>
  <Folder id="Old_Queries">
    <Function
      id="smartGreet"
      funcBody={include("../lib/smartGreet.js", "string")}
    />
  </Folder>
  <Folder id="Filters">
    <Function
      id="getFilterOptions_dd"
      funcBody={include("../lib/getFilterOptions_dd.js", "string")}
    />
    <Function
      id="filters_transformer"
      funcBody={include("../lib/filters_transformer.js", "string")}
    />
    <Function
      id="filters_transformer_gw_pr"
      funcBody={include("../lib/filters_transformer_gw_pr.js", "string")}
    />
    <RESTQuery
      id="get_coach_list_cc"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={
        '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
      }
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIRequestBody=""
      query="/sidekick/v1/coach"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="get_companies_list_cc"
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
      openAPIRequestBody=""
      query="/sidekick/v1/company"
      queryTimeout="25000"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="get_cohort_list_cc"
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
      openAPIRequestBody=""
      query="/sidekick/v1/cohort"
      queryTimeout="25000"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Current_User_Context">
    <State
      id="currentUser_fullName"
      value="{{ 
  impersonate_user.value?.coach?.first_name 
  ? `${impersonate_user.value?.coach?.first_name} ${impersonate_user.value?.coach?.last_name}` 
  : current_user.fullName 
}}"
    />
    <Function
      id="current_user_transformer"
      funcBody={include("../lib/current_user_transformer.js", "string")}
    />
    <JavascriptQuery
      id="set_current_user"
      notificationDuration={4.5}
      query={include("../lib/set_current_user.js", "string")}
      resourceName="JavascriptQuery"
      runWhenPageLoads={true}
      runWhenPageLoadsDelay="200"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Best_Average">
    <Function
      id="best_avg_current"
      funcBody={include("../lib/best_avg_current.js", "string")}
    />
    <RESTQuery
      id="best_avg_query_current"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\",\\n      \\"sidekick__apprenticeship.apprenticeship_gateway_booked_total_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      ...(filters_transformer.value || [])\\n\\n    ].filter(item => item !== null)))\\n  }) \\n}}\\n"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <Folder id="Chart_Queries">
    <RESTQuery
      id="best_average_charts_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_expected_gateway_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"last 3 months\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": filters_transformer.value || []\\n  }) \\n}}"},{"key":"","value":""}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="best_average_pr_chart_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.progress_review_completed_on_time_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n\\"sidekick__apprenticeship.progress_review_due_date\\",\\n\\"sidekick__apprenticeship.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship.progress_review_due_date\\",\\n        \\"dateRange\\": \\"last 3 months\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": filters_transformer_gw_pr.value || []\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <Function
      id="best_average_historic_data"
      funcBody={include("../lib/best_average_historic_data.js", "string")}
    />
  </Folder>
  <Folder id="Stat_Queries">
    <RESTQuery
      id="gw_stat_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.apprenticeship_gateway_booked_total_pct\\"\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      // 1. The Coach Filter \\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n      ...(filters_transformer_gw_pr.value || [])\\n    ].filter(item => item !== null)))\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers="[]"
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="master_stats_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.avg_lsat_coach_score\\",\\n      \\"sidekick__apprenticeship_monthly.lsat_coach_response_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completed_count_sum\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_count_sum\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      // 1. The Coach Context\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Inject all shared UI filters\\n      ...(filters_transformer.value || [])\\n\\n    ].filter(item => item !== null)))\\n  }) \\n}}"},{"key":"","value":""}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers="[]"
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIRequestBody=""
      queryTimeout="25000"
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="pr_stat_query"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.progress_review_completed_on_time_pct\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship.progress_review_due_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": JSON.parse(JSON.stringify([\\n      \\n      // 1. The Coach Filter (Specific to this query)\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. THE MAGIC: Inject all shared UI dropdown filters here!\\n      ...(filters_transformer_gw_pr.value || [])\\n\\n    ].filter(item => item !== null)))\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers="[]"
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <State id="cohort_currentSortContext" value="" />
  <JavascriptQuery
    id="pageReloadFilters"
    notificationDuration={4.5}
    query={include("../lib/pageReloadFilters.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RESTQuery
    id="data_ops_API_query_cc"
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
    query="/sidekick/v1/apprenticeship-slim?size=500&coach={{ impersonate_user.value?.coach?.id || current_api_user.data.id }}"
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
  <Include src="./cohort_compassFrame.rsx" />
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="container80"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      tooltipText="Company-wide best number "
    >
      <Header>
        <Text
          id="containerTitle83"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Include src="./filterContainerTrends4.rsx" />
        <Include src="./tabbedContainer2.rsx" />
        <Include src="./container106.rsx" />
      </View>
    </Container>
    <Image
      id="circularImage1"
      aspectRatio={1}
      fit="contain"
      heightType="fixed"
      hidden="true"
      horizontalAlign="center"
      margin="0"
      retoolStorageFileId="7b7b214a-fbb6-4829-80df-823ab87a041e"
      src="https://picsum.photos/id/1062/800/800"
      srcType="retoolStorageFileId"
      style={{ map: { borderRadius: "0px" } }}
    />
    <Text
      id="text61"
      hidden="true"
      style={{ fontSize: "h2Font", fontWeight: "h2Font", fontFamily: "h2Font" }}
      value="Hello {{ current_user.firstName}}!

{{smartGreet.value}}"
      verticalAlign="center"
    />
    <Text
      id="text62"
      hidden="true"
      value="Track your performance metrics and dive deeper to take actions"
      verticalAlign="center"
    />
  </Frame>
</Screen>
