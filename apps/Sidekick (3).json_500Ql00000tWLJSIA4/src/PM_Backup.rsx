<Screen
  id="PM_Backup"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={2}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="7e5735b5-f01d-4563-af8c-828184fca8cf"
>
  <Folder id="Stats_Queries">
    <RESTQuery
      id="zero_eol_query4"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      },\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_cohortSelect.value\\n      } : null,\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_companySelect.value\\n      } : null,\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="zero_eol_query5"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter (Locked to Current User)\n      {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      },\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": cohort_cohortSelect4.value\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": cohort_companySelect4.value\n      } : null,\n \n(cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="lsat_count_query4"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_lsat_responses_sum\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="attendance_stat_query5"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="lsat_count_query5"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_lsat_responses_sum"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter\n      (currentUser_fullName4.value) ? {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 4. Risk Status Filter\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="attendance_stat_query6"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter\n      (currentUser_fullName4.value) ? {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 4. Risk Status Filter\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": ohort_riskSelect.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="gw_stat_query5"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.apprenticeship_gateway_booked_within_day_90_pct\\"\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="gw_stat_query6"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_gateway_booked_within_day_90_pct"\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter\n      (currentUser_fullName4.value) ? {\n        "member": "sidekick__apprenticeship.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 4. Risk Status Filter\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship.latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="risk_count_query4"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect.value) ? cohort_riskSelect.value : [cohort_riskSelect.value]\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="risk_count_query5"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter\n      (currentUser_fullName4.value) ? {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 4. Risk Status Filter (Newly Added)\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_riskSelect3.value) ? cohort_riskSelect3.value : [cohort_riskSelect3.value]\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="lsat_stat_query5"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="lsat_stat_query6"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter\n      (currentUser_fullName4.value) ? {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 4. Risk Status Filter\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="active_count_query4"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      },\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_cohortSelect.value\\n      } : null,\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_companySelect.value\\n      } : null,\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
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
    <RESTQuery
      id="active_count_query5"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter (Locked to Current User)\n      {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      },\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": cohort_cohortSelect4.value\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": cohort_companySelect4.value\n      } : null,\n \n(cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="bil_count_query4"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter (Locked to Current User)\\n      {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      },\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_cohortSelect.value\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_companySelect.value\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="bil_count_query5"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_bil_count" \n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter (Locked to Current User)\n      {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      },\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": cohort_cohortSelect4.value\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": cohort_companySelect4.value\n      } : null,\n \n(cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="eol_stat_query5"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect.value) ? cohort_riskSelect.value : [cohort_riskSelect.value]\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="pr_stat_query5"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship.progress_review_completed_on_time_pct\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship.progress_review_due_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Coach Filter\\n      (currentUser_fullName.value) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.coach_full_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": [currentUser_fullName.value]\\n      } : null,\\n\\n      // 2. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 3. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 4. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship.latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": cohort_riskSelect.value\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    />
    <RESTQuery
      id="eol_stat_query6"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter\n      (currentUser_fullName4.value) ? {\n        "member": "sidekick__apprenticeship_monthly.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 4. Risk Status Filter\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_riskSelect3.value) ? cohort_riskSelect3.value : [cohort_riskSelect3.value]\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="pr_stat_query6"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.progress_review_completed_on_time_pct"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship.progress_review_due_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Coach Filter\n      (currentUser_fullName4.value) ? {\n        "member": "sidekick__apprenticeship.coach_full_name",\n        "operator": "equals",\n        "values": [currentUser_fullName4.value]\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 3. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 4. Risk Status Filter\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship.latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Old_Stats_Queries">
    <RESTQuery
      id="risk_count_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers="[]"
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
      }}
      isClonedDemoQuery={true}
      isImported={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      playgroundQueryName="High Risk Count Query"
      playgroundQueryUuid="dc45f30c-fb6d-4bc8-aa9d-3984b11a7569"
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_very_high_risk_count"\n  ],\n  "filters": {{argFilters}}\n  \n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="LSAT_stat_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
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
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.avg_lsat_score_latest"\n  ],\n  "filters": {{argFilters}}\n\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="active_count_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={'[{"key":"","value":""}]'}
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
      }}
      isClonedDemoQuery={true}
      isImported={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      playgroundQueryName="Active Learners Count Query"
      playgroundQueryUuid="2a5e2a1d-9ac3-4b4c-837d-98e9f3b0b869"
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_active_apprenticeships_count"\n  ],\n  "filters": {{argFilters}}\n\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="bil_count_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
      }}
      isClonedDemoQuery={true}
      isImported={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      playgroundQueryName="BIL Count Query"
      playgroundQueryUuid="cee490bf-84af-41e8-b486-201bbce2a7af"
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_on_bil_apprenticeships_count"\n  ],\n  "filters": {{argFilters}}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="EOL_stat_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
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
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_learners_with_eol_pct"\n  ],\n  "filters":{{argFilters}}\n\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="PR_stat_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
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
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.progress_review_completed_on_time_pct"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship.progress_review_due_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{argFilters}}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="zero_eol_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers={
        '[{"key":"x-cubejs-pass-context","value":"{\\"u_id\\": \\"user_123\\", \\"roles\\": [\\"sidekick:coach\\"]}"}]'
      }
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
      }}
      isClonedDemoQuery={true}
      isImported={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      playgroundQueryName="Zero EOL Count Query"
      playgroundQueryUuid="c92ee2a8-deda-46d1-bc32-fe22a98bfda7"
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_active_apprenticeships_count",\n    "sidekick__apprenticeship.apprenticeship_learners_with_eol_count"\n  ],\n  "filters": {{argFilters}}\n  \n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.340.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="Attendance_stat_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
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
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ argFilters ? argFilters : "[]" }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GW_stat_query_old2"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      importedQueryInputs={{
        map: {
          argFilters:
            '{{ \n  JSON.stringify([\n    // 1. Coach Filter (Locked to Current User)\n    {\n      "member": "sidekick__apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    },\n\n    // 2. Cohort Filter\n    (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.cohort_name", \n      "operator": "equals",\n      "values": cohort_cohortSelect4.value\n    } : null,\n\n    // 3. Company Filter\n    (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.company_name",\n      "operator": "equals",\n      "values": cohort_companySelect4.value\n    } : null,\n\n    // 4. Risk Status Filter\n    (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n      "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",\n      "operator": "equals",\n      "values": cohort_riskSelect3.value\n    } : null\n\n  ].filter(item => item !== null)) \n}}',
        },
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
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.apprenticeship_gateway_booked_within_day_90_pct"\n  ],\n  "filters": {{argFilters}}\n\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      retoolVersion="3.339.0"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showLatestVersionUpdatedWarning={true}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Dropdown_Queries">
    <RESTQuery
      id="cohort_cohort_dropdown3"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      importedQueryInputs={{
        map: {
          dynamicFilters:
            '{{ \n    JSON.stringify([\n      \n      // 0. Current User / Coach Filter\n    (currentUser_fullName4.value) ? {\n      "member": "gh_apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    } : null,\n\n      // 1. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.company_name",\n        "operator": "equals",\n        "values": cohort_companySelect4.value\n      } : null,\n\n      // 2. Status Filter\n      (cohort_statusSelect4.value && cohort_statusSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_statusSelect4.value\n      } : null,\n\n    ].filter(x => x !== null)) \n  }}',
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
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    />
    <RESTQuery
      id="cohort_dd_coach_dropdown3"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      importedQueryInputs={{
        map: {
          dynamicFilters:
            '{{ \n    JSON.stringify([\n\n      // 1. Company Filter\n      (cohort_dd_companySelect4.value && cohort_dd_companySelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.company_name",\n        "operator": "equals",\n        "values": cohort_dd_companySelect4.value\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_dd_cohortSelect4.value && cohort_dd_cohortSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.cohort_name",\n        "operator": "equals",\n        "values": cohort_dd_cohortSelect4.value\n      } : null,\n\n      // 3. Status Filter\n      (cohort_dd_statusSelect4.value && cohort_dd_statusSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_dd_statusSelect4.value\n      } : null,\n\n      // 4. Risk Filter\n      (cohort_dd_riskSelect4.value && cohort_dd_riskSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_dd_riskSelect4.value\n      } : null\n\n    ].filter(x => x !== null)) \n  }}',
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
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    />
    <RESTQuery
      id="cohort_dd_company_dropdown3"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      importedQueryInputs={{
        map: {
          dynamicFilters:
            '{{ \n    JSON.stringify([\n\n      // 1. Coach Filter\n      (cohort_dd_coachSelect4.value && cohort_dd_coachSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.coach_full_name",\n        "operator": "equals",\n        "values": cohort_dd_coachSelect4.value\n      } : null,\n\n      // 2. Cohort Filter\n      (cohort_dd_cohortSelect4.value && cohort_dd_cohortSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.cohort_name",\n        "operator": "equals",\n        "values": cohort_dd_cohortSelect4.value\n      } : null,\n\n      // 3. Status Filter\n      (cohort_dd_statusSelect4.value && cohort_dd_statusSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_dd_statusSelect4.value\n      } : null,\n\n      // 4. Risk Filter\n      (cohort_dd_riskSelect4.value && cohort_dd_riskSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_dd_riskSelect4.value\n      } : null\n\n    ].filter(x => x !== null)) \n  }}',
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
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    />
    <RESTQuery
      id="cohort_dd_cohort_dropdown3"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      importedQueryInputs={{
        map: {
          dynamicFilters:
            '{{ \n    JSON.stringify([\n\n      // 1. Company Filter\n      (cohort_dd_companySelect4.value && cohort_dd_companySelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.company_name",\n        "operator": "equals",\n        "values": cohort_dd_companySelect4.value\n      } : null,\n\n      // 2. Coach Filter\n      (cohort_dd_coachSelect4.value && cohort_dd_coachSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.coach_full_name",\n        "operator": "equals",\n        "values": cohort_dd_coachSelect4.value\n      } : null,\n\n      // 3. Status Filter\n      (cohort_dd_statusSelect4.value && cohort_dd_statusSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_dd_statusSelect4.value\n      } : null,\n\n      // 4. Risk Filter\n      (cohort_dd_riskSelect4.value && cohort_dd_riskSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_dd_riskSelect4.value\n      } : null\n\n    ].filter(x => x !== null)) \n  }}',
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
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    />
    <RESTQuery
      id="cohort_company_dropdown3"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      importedQueryInputs={{
        map: {
          dynamicFilters:
            '{{ \n    JSON.stringify([\n\n      // 0. Current User / Coach Filter\n    (currentUser_fullName4.value) ? {\n      "member": "gh_apprenticeship.coach_full_name",\n      "operator": "equals",\n      "values": [currentUser_fullName4.value]\n    } : null,\n\n      // 1. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.cohort_name",\n        "operator": "equals",\n        "values": cohort_cohortSelect4.value\n      } : null,\n\n      // 2. Status Filter\n      (cohort_statusSelect4.value && cohort_statusSelect4.value.length > 0) ? {\n        "member": "gh_apprenticeship.apprenticeship_latest_status", \n        "operator": "equals",\n        "values": cohort_statusSelect4.value\n      } : null,\n\n    ].filter(x => x !== null)) \n  }}',
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
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    />
  </Folder>
  <Folder id="Best_Average">
    <Function
      id="best_avg_current3"
      funcBody={include("../lib/best_avg_current3.js", "string")}
    />
    <RESTQuery
      id="best_avg_query_current4"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_bil_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship.progress_review_completed_on_time_pct\\",\\n      \\"sidekick__apprenticeship.apprenticeship_gateway_booked_within_day_90_pct\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"This month\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      // 1. Cohort Filter\\n      (cohort_cohortSelect.value && cohort_cohortSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n\\n      // 2. Company Filter\\n      (cohort_companySelect.value && cohort_companySelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n\\n      // 3. Risk Status Filter\\n      (cohort_riskSelect.value && cohort_riskSelect.value.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect.value) ? cohort_riskSelect.value : [cohort_riskSelect.value]\\n      } : null\\n    ].filter(item => item !== null)\\n  }) \\n}}"}]'
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
    <RESTQuery
      id="best_avg_query_current5"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_bil_count",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct",\n    "sidekick__apprenticeship.progress_review_completed_on_time_pct",\n    "sidekick__apprenticeship.apprenticeship_gateway_booked_within_day_90_pct"\n  ],\n  "dimensions": [\n    "sidekick__apprenticeship_monthly.coach_full_name"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "This month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      // 1. Cohort Filter\n      (cohort_cohortSelect4.value && cohort_cohortSelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n\n      // 2. Company Filter\n      (cohort_companySelect4.value && cohort_companySelect4.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n\n      // 3. Risk Status Filter\n      (cohort_riskSelect3.value && cohort_riskSelect3.value.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": cohort_riskSelect3.value\n      } : null\n\n    ].filter(item => item !== null))\n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      resourceTypeOverride=""
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Chart_Queries">
    <Function
      id="best_average_historic_data2"
      funcBody={include("../lib/best_average_historic_data2.js", "string")}
    />
    <RESTQuery
      id="best_average_pr_chart_query4"
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
      id="best_average_pr_chart_query5"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship.progress_review_completed_on_time_pct"\n  ],\n  "dimensions": [\n    "sidekick__apprenticeship.coach_full_name"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship.progress_review_due_date",\n      "dateRange": "last 3 months",\n      "granularity": "month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      (cohort_cohortSelect4.value?.length > 0) ? {\n        "member": "sidekick__apprenticeship.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n      (cohort_companySelect4.value?.length > 0) ? {\n        "member": "sidekick__apprenticeship.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n      (cohort_riskSelect3.value?.length > 0) ? {\n        "member": "sidekick__apprenticeship.latest_risk_bucket_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_riskSelect3.value) ? cohort_riskSelect3.value : [cohort_riskSelect3.value]\n      } : null\n    ].filter(x => x !== null)) \n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="best_average_charts_query3"
      body={
        '[{"key":"query","value":"{{ \\n  ({\\n    \\"measures\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_expected_gateway_rate_pct\\",\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count\\"\\n    ],\\n    \\"dimensions\\": [\\n      \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n      \\"sidekick__apprenticeship_monthly.coach_full_name\\"\\n    ],\\n    \\"timeDimensions\\": [\\n      {\\n        \\"dimension\\": \\"sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date\\",\\n        \\"dateRange\\": \\"last 3 months\\",\\n        \\"granularity\\": \\"month\\"\\n      }\\n    ],\\n    \\"filters\\": [\\n      (cohort_cohortSelect.value?.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.cohort_name\\", \\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_cohortSelect.value) ? cohort_cohortSelect.value : [cohort_cohortSelect.value]\\n      } : null,\\n      (cohort_companySelect.value?.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.company_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_companySelect.value) ? cohort_companySelect.value : [cohort_companySelect.value]\\n      } : null,\\n      (cohort_riskSelect.value?.length > 0) ? {\\n        \\"member\\": \\"sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name\\",\\n        \\"operator\\": \\"equals\\",\\n        \\"values\\": Array.isArray(cohort_riskSelect.value) ? cohort_riskSelect.value : [cohort_riskSelect.value]\\n      } : null\\n    ].filter(x => x !== null)\\n  }) \\n}}"}]'
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
      id="best_average_charts_query4"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n  "measures": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_expected_gateway_rate_pct",\n    "sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count"\n  ],\n  "dimensions": [\n    "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n    "sidekick__apprenticeship_monthly.coach_full_name"\n  ],\n  "timeDimensions": [\n    {\n      "dimension": "sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date",\n      "dateRange": "last 3 months",\n      "granularity": "month"\n    }\n  ],\n  "filters": {{ \n    JSON.stringify([\n      (cohort_cohortSelect4.value?.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.cohort_name", \n        "operator": "equals",\n        "values": Array.isArray(cohort_cohortSelect4.value) ? cohort_cohortSelect4.value : [cohort_cohortSelect4.value]\n      } : null,\n      (cohort_companySelect4.value?.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.company_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_companySelect4.value) ? cohort_companySelect4.value : [cohort_companySelect4.value]\n      } : null,\n      (cohort_riskSelect3.value?.length > 0) ? {\n        "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",\n        "operator": "equals",\n        "values": Array.isArray(cohort_riskSelect3.value) ? cohort_riskSelect3.value : [cohort_riskSelect3.value]\n      } : null\n    ].filter(x => x !== null)) \n  }}\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="Current_User_Context">
    <JavascriptQuery
      id="set_current_user3"
      notificationDuration={4.5}
      query={include("../lib/set_current_user3.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <Function
      id="current_user_transformer3"
      funcBody={include("../lib/current_user_transformer3.js", "string")}
    />
    <State
      id="currentUser_fullName4"
      value="{{ 
  impersonate_user.value?.first_name 
  ? `${impersonate_user.value.first_name} ${impersonate_user.value.last_name}` 
  : current_user.fullName 
}}"
    />
  </Folder>
  <Folder id="Learners_Queries">
    <RESTQuery
      id="cohort_dd_learners_table3"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      importedQueryInputs={{
        dynamicFilters:
          '{{ \n  JSON.stringify([\n    // 0. Coach Filter\n    (cohort_dd_coachSelect4.value && cohort_dd_coachSelect4.value.length > 0) ? {\n       "member": "gh_apprenticeship.coach_full_name",\n       "operator": "equals",\n       "values": cohort_dd_coachSelect4.value\n    } : null,\n    // 1. Cohort Filter\n    (cohort_dd_cohortSelect4.value && cohort_dd_cohortSelect4.value.length > 0) ? {\n       "member": "gh_apprenticeship.cohort_name",\n       "operator": "equals",\n       "values": cohort_dd_cohortSelect4.value\n    } : null,\n\n    // 2. Company Filter\n    (cohort_dd_companySelect4.value && cohort_dd_companySelect4.value.length > 0) ? {\n       "member": "gh_apprenticeship.company_name",\n       "operator": "equals",\n       "values": cohort_dd_companySelect4.value\n    } : null,\n\n    // 3. Status Filter\n    (cohort_dd_statusSelect4.value && cohort_dd_statusSelect4.value.length > 0) ? {\n       "member": "gh_apprenticeship.apprenticeship_latest_status",\n       "operator": "equals",\n       "values": cohort_dd_statusSelect4.value\n    } : null,\n\n    // 4. Risk Level Filter\n    (cohort_dd_riskSelect4.value && cohort_dd_riskSelect4.value.length > 0) ? {\n       "member": "gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n       "operator": "equals",\n       "values": cohort_dd_riskSelect4.value\n    } : null\n\n  ].filter(item => item !== null)) // This removes the empty filters\n}}',
        dynamicOrder:
          '{{ \n  JSON.stringify(\n  cohort_currentSortContext4.value === \'eol_priority\' \n  ? { "gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at": "asc" } \n\n  : cohort_currentSortContext4.value === \'prw_priority\'\n  ? { "gh_apprenticeship.apprenticeship_latest_progress_review_completed_at": "asc" }\n\n  : cohort_currentSortContext4.value === \'gb_priority\'\n  ? { "gh_apprenticeship.apprenticeship_booked_gateway_start_time": "desc" } \n  // "Desc" puts Farthest dates (e.g. 2026) at top, which matches your "Farthest to Soonest" rule roughly.\n\n  : cohort_currentSortContext4.value === \'attendance_priority\'\n  ? { "gh_apprenticeship.apprenticeship_total_delivery_sessions_missed": "desc" }\n\n  : { "gh_apprenticeship.cohort_name": "asc" } \n  // Default for \'attendance_priority\' or if no card is clicked\n  )\n}}',
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
        '// 1. Safety check\nif (!data) return [];\nlet rows = data.data ? data.data : data;\n\n// ---------------------------------------------------------\n// CONFIGURATION\n// ---------------------------------------------------------\n\n// A. Risk Severity (Higher = Higher Priority)\nconst riskScore = {\n  "Very High": 6,\n  "Red": 5,      // Legacy\n  "High": 4,\n  "Amber": 3,    // Legacy\n  "Medium": 2,\n  "Low": 1,\n  "Green": 0     // Legacy\n};\n\n// B. Column Renaming Map\nconst columnMapping = {\n  "learner_full_name": "Learner",\n  "cohort_name": "Cohort",\n  "company_name": "Company",\n  "apprenticeship_latest_status": "Status",\n  "apprenticeship_latest_risk_bucket_name": "Risk",\n  "apprenticeship_otj_submitted_hours_to_date": "OTJ Total",\n  "bil_process_status": "BiL Status",\n  "apprenticeship_total_delivery_sessions_missed": "Missed Sessions",\n  "apprenticeship_latest_evidence_of_learning_at": "Latest EOL",\n  "apprenticeship_latest_project_submitted_at": "Latest Project",\n  "apprenticeship_latest_coaching_session_attended_at": "Latest Coaching",\n  "apprenticeship_latest_progress_review_completed_at": "Latest Review",\n  "apprenticeship_booked_gateway_start_time": "Gateway Booked", // Added this based on your prompt\n  "apprenticeship_gateway_date": "Gateway Date", // Expected date\n  "apprenticeship_latest_delivery_session_attended_at": "Latest Delivery",\n  "learner_job_title": "Job Title",\n  "apprentice_manager_full_name": "Manager",\n  "apprenticeship_id": "Learner ID"\n};\n\n// ---------------------------------------------------------\n// SORTING LOGIC\n// ---------------------------------------------------------\n\n// Helper: Get Risk Score (Default to -1 if missing)\nconst getRisk = (row) => riskScore[row[\'gh_apprenticeship.apprenticeship_latest_risk_bucket_name\']] || -1;\n\n// Helper: Compare Dates\n// Returns negative if a < b, positive if a > b\n// handlesNulls: \'first\' (nulls at top), \'last\' (nulls at bottom)\nconst compareDates = (dateA, dateB, direction = \'asc\', nullsPosition = \'first\') => {\n  if (!dateA && !dateB) return 0; // Both null\n  if (!dateA) return nullsPosition === \'first\' ? -1 : 1;\n  if (!dateB) return nullsPosition === \'first\' ? 1 : -1;\n  \n  const d1 = new Date(dateA).getTime();\n  const d2 = new Date(dateB).getTime();\n  \n  return direction === \'asc\' ? d1 - d2 : d2 - d1;\n};\n\n// Detect Context from Variable\n// Detect Context from Variable\nconst context = {{ cohort_currentSortContext4.value }};\n\nif (context) {\n  rows.sort((a, b) => {\n    let primaryDiff = 0;\n\n    // --- CASE 1: EOL PRIORITY ---\n    if (context === \'eol_priority\') {\n      const field = \'gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at\';\n      primaryDiff = compareDates(a[field], b[field], \'asc\', \'first\');\n    }\n\n    // --- CASE 2: PRW PRIORITY (Updated Name) ---\n    else if (context === \'prw_priority\') {\n       const field = \'gh_apprenticeship.apprenticeship_latest_progress_review_completed_at\';\n       primaryDiff = compareDates(a[field], b[field], \'asc\', \'first\');\n    }\n\n    // --- CASE 3: GB PRIORITY (Updated Name) ---\n    else if (context === \'gb_priority\') {\n      const field = \'gh_apprenticeship.apprenticeship_booked_gateway_start_time\';\n      // Logic: Nulls First, then Farthest (High) to Soonest (Low)\n      \n      const valA = a[field];\n      const valB = b[field];\n\n      if (!valA && valB) return -1; // A is null -> A First\n      if (valA && !valB) return 1;  // B is null -> B First\n      if (!valA && !valB) primaryDiff = 0; \n      else {\n        // Descending Sort: Farthest (High Date) -> Soonest (Low Date)\n        primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();\n      }\n    }\n    \n    // --- CASE 4: ATTENDANCE (Do Nothing / Fallback) ---\n    else if (context === \'attendance_priority\') {\n        return 0; // Keeps original order (or default cohort sort)\n    }\n\n    // --- CASE 4: ATTENDANCE ---\n    else if (context === \'attendance_priority\') {\n        const field = \'gh_apprenticeship.apprenticeship_total_delivery_sessions_missed\';\n        \n        // Treat NULL as 0 (assume no missed sessions if data is missing)\n        const valA = a[field] || 0;\n        const valB = b[field] || 0;\n\n        // Sort Descending: High numbers (lots of missed sessions) go to TOP\n        primaryDiff = valB - valA; \n    }\n\n    // --- SECONDARY SORT (Tie-Breaker: Risk) ---\n    if (primaryDiff !== 0) {\n      return primaryDiff;\n    } else {\n      // Sort by Risk (High to Low) for ties\n      return getRisk(b) - getRisk(a);\n    }\n  });\n}\n\n// ---------------------------------------------------------\n// RENAMING (Final Step)\n// ---------------------------------------------------------\nreturn rows.map(row => {\n  const newRow = {};\n  Object.keys(row).forEach(key => {\n    const rawKey = key.split(\'.\').pop();\n    if (columnMapping[rawKey]) {\n      newRow[columnMapping[rawKey]] = row[key];\n    } else {\n      newRow[_.startCase(rawKey)] = row[key];\n    }\n  });\n  return newRow;\n});'
      }
    />
  </Folder>
  <Folder id="API_Queries">
    <RESTQuery
      id="data_ops_api_query_dd3"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      headers={
        '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
      }
      isClonedDemoQuery={true}
      isMultiplayerEdited={true}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query="sidekick/v1/apprenticeship?size=500"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer={
        "// 1. EXTRACT RECORDS SAFELY\nif (!data) return [];\nlet rows = Array.isArray(data) ? data : (data.items || (data.data && data.data.items ? data.data.items : (data.data || [])));\nif (rows.length === 0) return [];\n\n// 2. SORTING LOGIC (Using nested paths)\nconst riskScore = { \"Very High\": 6, \"Red\": 5, \"High\": 4, \"Amber\": 3, \"Medium\": 2, \"Low\": 1, \"Green\": 0 };\n\n// Get risk from the nested object\nconst getRisk = (row) => riskScore[row.withdrawal_risk?.risk_bucket_name] || -1;\n\nconst compareDates = (dateA, dateB, direction = 'asc', nullsPosition = 'first') => {\n  if (!dateA && !dateB) return 0; \n  if (!dateA) return nullsPosition === 'first' ? -1 : 1;\n  if (!dateB) return nullsPosition === 'first' ? 1 : -1;\n  return direction === 'asc' ? new Date(dateA).getTime() - new Date(dateB).getTime() : new Date(dateB).getTime() - new Date(dateA).getTime();\n};\n\n// Listen to your sorting variable safely\nconst context = typeof cohort_currentSortContext !== 'undefined' ? cohort_currentSortContext?.value : null;\n\nif (context) {\n  rows.sort((a, b) => {\n    let primaryDiff = 0;\n    \n    if (context === 'eol_priority') {\n      // Look inside the 'status' object\n      const aEol = a.status?.latest_evidence_of_learning_date;\n      const bEol = b.status?.latest_evidence_of_learning_date;\n      primaryDiff = compareDates(aEol, bEol, 'asc', 'first');\n    } \n    else if (context === 'prw_priority') {\n      // Look inside the 'progress_review_summary' object\n      const aPrw = a.progress_review_summary?.previous_progress_review?.completed_at || a.progress_review_summary?.previous_progress_review?.review_date;\n      const bPrw = b.progress_review_summary?.previous_progress_review?.completed_at || b.progress_review_summary?.previous_progress_review?.review_date;\n      primaryDiff = compareDates(aPrw, bPrw, 'asc', 'first');\n    } \n    else if (context === 'gb_priority') {\n      // Look inside the 'status' object\n      const valA = a.status?.booked_gateway_start_time; \n      const valB = b.status?.booked_gateway_start_time;\n      if (!valA && valB) return -1; if (valA && !valB) return 1; if (!valA && !valB) primaryDiff = 0; \n      else primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();\n    } \n    else if (context === 'attendance_priority') {\n      // Look inside the 'status' object\n      const aMissed = a.status?.delivery_sessions_missed || 0;\n      const bMissed = b.status?.delivery_sessions_missed || 0;\n      primaryDiff = bMissed - aMissed;\n    }\n    \n    // Tie-breaker: Always fall back to sorting by Risk (Highest Risk first)\n    return primaryDiff !== 0 ? primaryDiff : getRisk(b) - getRisk(a);\n  });\n}\n\n// 3. RETURN DATA\n// Return the raw, nested data (now perfectly sorted!)\nreturn rows;"
      }
    >
      <Event
        id="491a129e"
        event="success"
        method="trigger"
        params={{}}
        pluginId="set_current_user3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="a45d7296"
        event="success"
        method="trigger"
        params={{}}
        pluginId="active_count_query4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="10d2c52d"
        event="success"
        method="trigger"
        params={{}}
        pluginId="zero_eol_query4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="eb4cfbf8"
        event="success"
        method="trigger"
        params={{}}
        pluginId="bil_count_query4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="36155b5f"
        event="success"
        method="trigger"
        params={{}}
        pluginId="lsat_count_query4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="c94bd6a2"
        event="success"
        method="trigger"
        params={{}}
        pluginId="lsat_stat_query5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="91409075"
        event="success"
        method="trigger"
        params={{}}
        pluginId="attendance_stat_query5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="72a24fd6"
        event="success"
        method="trigger"
        params={{}}
        pluginId="pr_stat_query5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="a4526ee4"
        event="success"
        method="trigger"
        params={{}}
        pluginId="gw_stat_query5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="04fc13b0"
        event="success"
        method="trigger"
        params={{}}
        pluginId="eol_stat_query5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="62c1b8e7"
        event="success"
        method="trigger"
        params={{}}
        pluginId="risk_count_query4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="b19554f1"
        event="success"
        method="trigger"
        params={{}}
        pluginId="best_avg_query_current4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="82c82049"
        event="success"
        method="trigger"
        params={{}}
        pluginId="best_average_charts_query3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="76cbd786"
        event="success"
        method="trigger"
        params={{}}
        pluginId="best_average_pr_chart_query4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <JavascriptQuery
    id="pageReloadFilters3"
    notificationDuration={4.5}
    query={include("../lib/pageReloadFilters3.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Function
    id="mergedSortedTableData_dd2"
    funcBody={include("../lib/mergedSortedTableData_dd2.js", "string")}
  />
  <Function
    id="mergedLearnerData_dd2"
    funcBody={include("../lib/mergedLearnerData_dd2.js", "string")}
  />
  <Function
    id="getFilterOptions_dd3"
    funcBody={include("../lib/getFilterOptions_dd3.js", "string")}
  />
  <SqlQueryUnified
    id="saveCoachTags_dd2"
    actionType="BULK_UPSERT_BY_KEY"
    bulkUpdatePrimaryKey="learner_id"
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    records="{{ 
  cohort_dd_table12.changesetArray.map(change => {
    return {
      learner_id: change.learner_id,
      coach_tag: change.coach_tag,
      latest_comment: change.latest_comment,
      updated_at: new Date(),
      updated_by: current_user.email
    };
  }) 
}}"
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="Coach_Tags"
    updateSetValueDynamically={true}
  >
    <Event
      id="4d3ac133"
      event="success"
      method="trigger"
      params={{}}
      pluginId="getCoachTags_mlv"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getCoachTags_dd2"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/getCoachTags_dd2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    showFailureToaster={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <State
    id="cohort_currentSortContext4"
    value="{{ 
  impersonate_user.value?.first_name 
  ? `${impersonate_user.value.first_name} ${impersonate_user.value.last_name}` 
  : current_user.fullName 
}}"
  />
  <Function
    id="smartGreet2"
    funcBody={include("../lib/smartGreet2.js", "string")}
  />
  <Function
    id="sortedTableData2"
    funcBody={include("../lib/sortedTableData2.js", "string")}
  />
  <Include src="./cohort_compassFrame4.rsx" />
  <Include src="./cohort_deepdive4.rsx" />
  <Frame
    id="$main15"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  />
  <Frame
    id="$main19"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="container128"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      tooltipText="Company-wide best number "
    >
      <View id="00030" viewKey="View 1">
        <Container
          id="filterContainerTrends7"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <View id="00030" viewKey="View 1">
            <Multiselect
              id="cohort_cohortSelect4"
              data="{{ getFilterOptions_dd3.value.cohorts }}"
              emptyMessage="No options"
              label=""
              labelPosition="top"
              labels="{{item.label}}"
              overlayMaxHeight={375}
              placeholder="Filter Cohort"
              showSelectionIndicator={true}
              tooltipByIndex="{{item.label}}"
              value=""
              values="{{item.value}}"
              wrapTags={true}
            >
              <Event
                id="88eaf373"
                event="change"
                method="run"
                params={{
                  map: {
                    src: "const filterState = {\n  cohort: cohort_cohortSelect4.value,\n  company: cohort_companySelect4.value,\n  risk: cohort_riskSelect3.value\n};\nlocalStorage.setValue('metrics_filters', filterState);",
                  },
                }}
                pluginId=""
                type="script"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                id="92aaff4e"
                event="change"
                method="trigger"
                params={{}}
                pluginId="data_ops_api_query_dd3"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Multiselect>
            <Multiselect
              id="cohort_companySelect4"
              data="{{getFilterOptions_dd3.value.companies}}"
              emptyMessage="No options"
              label=""
              labelPosition="top"
              labels="{{item.label}}"
              overlayMaxHeight={375}
              placeholder="Filter Company"
              showSelectionIndicator={true}
              tooltipByIndex="{{item.label}}"
              value=""
              values="{{item.value}}"
              wrapTags={true}
            >
              <Event
                id="87b09525"
                event="change"
                method="run"
                params={{
                  map: {
                    src: "const filterState = {\n  cohort: cohort_cohortSelect4.value,\n  company: cohort_companySelect4.value,\n  risk: cohort_riskSelect3.value\n};\nlocalStorage.setValue('metrics_filters', filterState);",
                  },
                }}
                pluginId=""
                type="script"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                id="1f724c97"
                event="change"
                method="trigger"
                params={{}}
                pluginId="data_ops_api_query_dd3"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Multiselect>
            <Multiselect
              id="cohort_riskSelect3"
              data=""
              emptyMessage="No options"
              hidden=""
              itemMode="static"
              label=""
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Filter Risk Level"
              showSelectionIndicator={true}
              value=""
              wrapTags={true}
            >
              <Option
                id="5d629"
                disabled={false}
                hidden={false}
                value="Very High"
              />
              <Option id="93bde" disabled={false} hidden={false} value="High" />
              <Option
                id="2e553"
                disabled={false}
                hidden={false}
                value="Medium"
              />
              <Option id="d9cd2" disabled={false} hidden={false} value="Low" />
              <Event
                id="51fdc3a1"
                event="change"
                method="run"
                params={{
                  map: {
                    src: "const filterState = {\n  cohort: cohort_cohortSelect4.value,\n  company: cohort_companySelect4.value,\n  risk: cohort_riskSelect3.value\n};\nlocalStorage.setValue('metrics_filters', filterState);",
                  },
                }}
                pluginId=""
                type="script"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                id="384e91bc"
                event="change"
                method="trigger"
                params={{}}
                pluginId="data_ops_api_query_dd3"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Multiselect>
            <Multiselect
              id="cohort_statusSelect4"
              data=""
              emptyMessage="No options"
              hidden="true"
              itemMode="static"
              label=""
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Filter Status"
              showSelectionIndicator={true}
              value=""
              wrapTags={true}
            >
              <Option id="00030" value="On-Programme" />
              <Option id="00031" value="Non-Starter" />
              <Option id="00032" value="No-Show" />
              <Option
                id="54f40"
                disabled={false}
                hidden={false}
                value="Completed On-Time"
              />
              <Option
                id="8d91a"
                disabled={false}
                hidden={false}
                value="Completed Late"
              />
              <Option
                id="20031"
                disabled={false}
                hidden={false}
                value="Post-Gateway"
              />
              <Option
                id="519f8"
                disabled={false}
                hidden={false}
                value="On-BIL"
              />
            </Multiselect>
          </View>
        </Container>
        <Include src="./tabbedContainer6.rsx" />
        <Include src="./container119.rsx" />
      </View>
    </Container>
    <Table
      id="cohort_dd_table11"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ data_ops_API_query3.data }}"
      defaultFilters={{
        0: {
          id: "dd570",
          columnId: "f9a6b",
          operator: "intersects",
          value: "{{ cohort_dd_cohortSelect4.value }}",
          disabled: false,
        },
        1: {
          id: "af58e",
          columnId: "4f6ec",
          operator: "intersects",
          value: "{{ cohort_dd_companySelect4.value }}",
          disabled: false,
        },
        2: {
          id: "0e866",
          columnId: "a5b5f",
          operator: "intersects",
          value: "{{ cohort_dd_riskSelect4.value }}",
          disabled: false,
        },
        3: {
          id: "d9832",
          columnId: "8a644",
          operator: "includes",
          value: "{{ cohort_dd_statusSelect4.value }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      enableSaveActions={true}
      groupByColumns={{}}
      headerTextWrap={true}
      hidden="true"
      primaryKeyColumnId="3c2e7"
      rowHeight="small"
      searchTerm="{{ cohort_dd_search4.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
    >
      <Column
        id="e9ee4"
        alignment="left"
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
        size={16}
        summaryAggregationMode="none"
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
        size={16}
        summaryAggregationMode="none"
        valueOverride=" "
      />
      <Column
        id="27d1e"
        alignment="left"
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
        size={16}
        summaryAggregationMode="none"
        valueOverride=" "
      >
        <Event
          id="19d49163"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow['Learner Email'] }}&cc={{ currentSourceRow['Apprentice Manager Email'] }}",
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
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Learner"
        label="Learner"
        placeholder="Enter value"
        position="left"
        size={57.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="f9a6b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Cohort"
        label="Cohort"
        placeholder="Select option"
        position="center"
        size={53.875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4f6ec"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Company"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={68.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="8a644"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.Status === "On-Programme"      ? "#3C92DC" : \n  currentSourceRow.Status === "Completed On-Time" ? "#2EB886" : \n  currentSourceRow.Status === "Completed Late"    ? "#D4E157" : \n  currentSourceRow.Status === "Post-Gateway"      ? "#9B51E0" : \n  currentSourceRow.Status === "On-BIL"            ? "#F2C94C" : \n  currentSourceRow.Status === "Non-Starter"       ? "#9E9E9E" : \n  currentSourceRow.Status === "No-Show"           ? "#EB5757" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        key="Status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={49.984375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a5b5f"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.Risk === "Very High" ? "#C62828" :  // Warning Red (Softer)\n  currentSourceRow.Risk === "High"      ? "#FF5252" :  // Bright Red\n  currentSourceRow.Risk === "Medium"    ? "#FFA726" :  // Orange Warning\n  currentSourceRow.Risk === "Low"       ? "#3C92DC" :  // Blue\n  null \n}}',
        }}
        groupAggregationMode="none"
        key="Risk"
        label="Risk"
        placeholder="Select option"
        position="center"
        size={37.96875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ca99b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="OTJ Total"
        label="OTJ Total"
        placeholder="Enter value"
        position="center"
        size={64.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7d664"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="boolean"
        formatOptions={{
          automaticColors: true,
          trueIcon: "bold/interface-validation-check-circle-alternate",
          trueColor: "{{ theme.success }}",
          falseIcon: "bold/interface-alert-warning-circle-alternate",
          falseColor: "{{ theme.warning }}",
        }}
        groupAggregationMode="none"
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
        summaryAggregationMode="none"
        valueOverride="{{ 

  !!(currentSourceRow['Latest EOL'] && 

  moment(currentSourceRow['Latest EOL']).isSame(moment(), 'month'))

}}"
      />
      <Column
        id="02c66"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest EOL"
        label="Latest EOL"
        placeholder="Enter value"
        position="center"
        size={73.625}
        summaryAggregationMode="none"
      >
        <Event
          id="6867ebef"
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="cohort_dd_learners_table3"
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
        key="BiL Status"
        label="BIL Status"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="559b1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Missed Sessions"
        label="Missed Delivery Sessions (Total)"
        placeholder="Enter value"
        position="center"
        size={182.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="f2ce5"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Delivery"
        label="Latest Delivery Session"
        placeholder="Enter value"
        position="center"
        size={137.5625}
        summaryAggregationMode="none"
      />
      <Column
        id="dd3a1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="Apprenticeship Total Projects Submitted"
        label="Submitted Projects"
        placeholder="Enter value"
        position="center"
        size={118.25}
        summaryAggregationMode="none"
      />
      <Column
        id="2afb1"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Project"
        label="Latest Project"
        placeholder="Enter value"
        position="center"
        size={89.234375}
        summaryAggregationMode="none"
      />
      <Column
        id="a1b41"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Coaching"
        label="Latest Coaching Session"
        placeholder="Enter value"
        position="center"
        size={147.03125}
        summaryAggregationMode="none"
      />
      <Column
        id="1ab8f"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Review"
        label="Latest Progress Review"
        placeholder="Enter value"
        position="center"
        size={139.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="45f49"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="Gateway Date"
        label="Gateway date"
        placeholder="Enter value"
        position="center"
        size={88.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="7c7ce"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Job Title"
        label="Job Title"
        placeholder="Enter value"
        position="center"
        size={61.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="7c745"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="Learner Email"
        label="Learner Email"
        position="center"
        size={0}
        summaryAggregationMode="none"
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
        groupAggregationMode="none"
        hidden="true"
        key="Manager"
        label="Learner's Manager"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="d1a42"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Apprentice Manager Email"
        label="Manager Email"
        position="center"
        size={95.703125}
        summaryAggregationMode="none"
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
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="Apprenticeship Latest Project Submission Grade"
        label="Apprenticeship latest project submission grade"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="eab48"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Apprenticeship UUID"
        label="Apprenticeship uuid"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="a47f6"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Coach account ID"
        label="Coach account id"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="55f18"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="Coach full name"
        label="Coach full name"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="dfeb1"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="Day"
        label="Day"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="1e43c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="Gateway booked"
        label="Gateway booked"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="3c2e7"
        alignment="left"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="Learner id"
        label="Learner ID"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Action
        id="ad2fc"
        icon="bold/interface-user-profile-focus"
        label="Open Learner Page"
      >
        <Event
          id="fc1ecee4"
          event="clickAction"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="3c5bdcfb"
          event="clickAction"
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
      </Action>
      <Action
        id="8430b"
        icon="bold/mail-chat-bubble-oval-alternate"
        label="Message in Chat"
      />
      <Action
        id="cb311"
        icon="bold/mail-inbox-envelope-add-2"
        label="Send Email"
      />
      <Action
        id="dc650"
        icon="bold/travel-map-flag-alternate"
        label="Escalate to CSM"
      />
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
    </Table>
    <Image
      id="circularImage2"
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
      id="text539"
      hidden="true"
      style={{ fontSize: "h2Font", fontWeight: "h2Font", fontFamily: "h2Font" }}
      value="Hello {{ current_user.firstName}}!

{{smartGreet2.value}}"
      verticalAlign="center"
    />
    <Text
      id="text540"
      hidden="true"
      value="Track your performance metrics and dive deeper to take actions"
      verticalAlign="center"
    />
  </Frame>
</Screen>
