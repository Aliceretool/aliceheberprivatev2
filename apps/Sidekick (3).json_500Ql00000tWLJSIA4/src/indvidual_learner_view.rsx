<Screen
  id="indvidual_learner_view"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={7}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="abd26142-68d9-4173-a5f8-ddf76e5ba788"
>
  <Folder id="notesMicroservice">
    <JavascriptQuery
      id="resetNoteForm"
      notificationDuration={4.5}
      query={include("../lib/resetNoteForm.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="getInterventionTypeOptions"
      notificationDuration={4.5}
      query={include("../lib/getInterventionTypeOptions.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="getLearnerNotes"
      cacheKeyTtl={300}
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
      overrideOrgCacheForUserCache={true}
      query="sidekick/v1/apprenticeship/{{ selected_user.value.id }}/note"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      showFailureToaster={false}
      showSuccessToaster={false}
    >
      <Event
        id="bcef8ca3"
        enabled="{{ !notesDrawerFrame.hidden }}"
        event="failure"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "error",
              title: "Failed to load learner notes",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="postLearnerNote"
      body={
        '[{"key":"content_type","value":"{{ noteTypeRadioGroup.value }}"},{"key":"content","value":"{{ notesInputTextBox.value }}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      headers="[]"
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      query="sidekick/v1/apprenticeship/{{selected_user.value.id}}/note"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        id="f688c00a"
        event="success"
        method="run"
        params={{
          map: {
            src: "getLearnerNotes.invalidateCache();\n\nawait getLearnerNotes.trigger({\n  onSuccess: () => {\n    resetNoteForm.trigger();\n  },\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="fdf0aac7"
        event="failure"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "info",
              title: "Failed to submit log",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="postInterventionNote"
      body={
        '[{"key":"content_type","value":"{{ noteTypeRadioGroup.value }}"},{"key":"content","value":"{{ notesInputTextBox.value }}"},{"key":"intervention_action","value":"{{ interventionActionsMultiselect.selectedItem.value }}"},{"key":"intervention_type","value":"{{ interventionTypeMultiselect.selectedItem.value }}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      query="sidekick/v1/apprenticeship/{{selected_user.value.id}}/note"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        id="324a8982"
        event="success"
        method="run"
        params={{
          map: {
            src: "getLearnerNotes.invalidateCache();\n\nawait getLearnerNotes.trigger({\n  onSuccess: () => {\n    resetNoteForm.trigger();\n  },\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="postSupportFactorNote"
      body={
        '[{"key":"content_type","value":"{{ noteTypeRadioGroup.value }}"},{"key":"content","value":"{{ notesInputTextBox.value }}"},{"key":"support_factors","value":"{{ noteTypeRadioGroup.value === \\"support_factor\\" ? supportFactorMultiselect.value : [] }}"}]'
      }
      bodyType="json"
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      query="sidekick/v1/apprenticeship/{{selected_user.value.id}}/note"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        id="2c0319c8"
        event="success"
        method="run"
        params={{
          map: {
            src: "getLearnerNotes.invalidateCache();\n\nawait getLearnerNotes.trigger({\n  onSuccess: () => {\n    resetNoteForm.trigger();\n  },\n});",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="riskFactors">
    <RESTQuery
      id="risk_factors_individual_learners"
      _comment={'{{ selected_user.value["id"] }}'}
      clonedDemoResourceType="restapi"
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n\t"dimensions": [\n\t\t"gh_apprenticeship.apprenticeship_uuid",\n\t\t"gh_apprenticeship.learner_full_name",\n\t\t"gh_apprenticeship.coach_account_id",\n\t\t"gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "gh_apprenticeship.risk_prediction_feature_name",\n        "gh_apprenticeship.risk_prediction_feature_description",\n        "gh_apprenticeship.risk_prediction_feature_shapley_value"\n\t],\n\t"filters": [\n\t\t{\n\t\t\t"values": [\n\t\t\t\t"{{ selected_user.value.id}}"\n\t\t\t],\n\t\t\t"member": "gh_apprenticeship.apprenticeship_uuid",\n\t\t\t"operator": "equals"\n\t\t}\n\t],\n\t"timeDimensions": [\n\t\t{\n\t\t\t"dimension": "gh_apprenticeship.apprenticeship_latest_risk_prediction_timestamp",\n\t\t\t"granularity": "day"\n\t\t}\n\t]\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    />
    <RESTQuery
      id="individual_learners_query_risk_factors"
      _comment="Remeber to remove hardcoded learner ID filter"
      cacheKeyTtl={300}
      clonedDemoResourceType="restapi"
      enableCaching={true}
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      mockResponseTransformer="return "
      notificationDuration={4.5}
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n\t"dimensions": [\n\t\t"gh_apprenticeship.apprenticeship_uuid",\n\t\t"gh_apprenticeship.learner_full_name",\n\t\t"gh_apprenticeship.coach_account_id",\n\t\t"gh_apprenticeship.apprenticeship_latest_risk_bucket_name",\n        "gh_apprenticeship.risk_prediction_feature_name",\n        "gh_apprenticeship.risk_prediction_feature_description",\n        "gh_apprenticeship.risk_prediction_feature_shapley_value"\n\t],\n\t"filters": [\n\t\t{\n\t\t\t"values": [\n\t\t\t\t"00013d42-cf0e-4d94-ae40-054cca1e8099"\n\t\t\t],\n\t\t\t"member": "gh_apprenticeship.apprenticeship_uuid",\n\t\t\t"operator": "equals"\n\t\t}\n\t],\n\t"timeDimensions": [\n\t\t{\n\t\t\t"dimension": "gh_apprenticeship.apprenticeship_latest_risk_prediction_timestamp",\n\t\t\t"granularity": "day"\n\t\t}\n\t]\n}'
      }
      queryDisabled="{{ !withdrawalRiskContainer.hidden }}"
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    >
      <Event
        id="a21ca02a"
        event="success"
        method="trigger"
        params={{}}
        pluginId="individual_learners_query_projects"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <Function
      id="get_top_risk_factors"
      funcBody={include("../lib/get_top_risk_factors.js", "string")}
    />
    <RESTQuery
      id="individual_learners_query_risk2"
      body={
        '[{"key":"query","value":"{{ ({\\n  dimensions: [\\n    \\"sidekick__apprenticeship.apprenticeship_uuid\\",\\n    \\"sidekick__apprenticeship.learner_full_name\\",\\n    \\"sidekick__apprenticeship.coach_account_id\\",\\n    \\"sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name\\",\\n    \\"sidekick__apprenticeship.risk_prediction_feature_name\\",\\n    \\"sidekick__apprenticeship.risk_prediction_feature_description\\",\\n    \\"sidekick__apprenticeship.risk_prediction_feature_shapley_value\\"\\n  ],\\n  filters: [\\n    {\\n      values: [selected_user.value?.id],\\n      member: \\"sidekick__apprenticeship.apprenticeship_uuid\\",\\n      operator: \\"equals\\"\\n    }\\n  ],\\n  timeDimensions: [\\n    {\\n      dimension: \\"sidekick__apprenticeship.apprenticeship_latest_risk_prediction_timestamp\\",\\n      granularity: \\"day\\"\\n    }\\n  ]\\n}) }}"}]'
      }
      bodyType="json"
      cacheKeyTtl={300}
      clonedDemoResourceType="restapi"
      enableCaching={true}
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      overrideOrgCacheForUserCache={true}
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
      type="POST"
    />
    <Function
      id="get_top_risk_factors2"
      funcBody={include("../lib/get_top_risk_factors2.js", "string")}
    />
  </Folder>
  <Folder id="projectsMicroservice">
    <Function
      id="unique_project_list"
      funcBody={include("../lib/unique_project_list.js", "string")}
    />
    <RESTQuery
      id="individual_learners_query_projects"
      _comment={
        'Currenrtly hardcoded to a random learner, Add to filter - {{ selected_user.value["id"] }} '
      }
      cacheKeyTtl={300}
      clonedDemoResourceType="restapi"
      enableCaching={true}
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      query={
        'cubejs-api/v1/load?query={\n\t"dimensions": [\n\t\t"gh_apprenticeship.apprenticeship_uuid",\n\t\t"gh_apprenticeship.learner_full_name",\n        "gh_apprenticeship.project_review_link",\n        "gh_apprenticeship.project_title",\n        "gh_apprenticeship.project_link"\n\t],\n\t"filters": [\n\t\t{\n\t\t\t"values": [\n\t\t\t\t"00013d42-cf0e-4d94-ae40-054cca1e8099"\n\t\t\t],\n\t\t\t"member": "gh_apprenticeship.apprenticeship_uuid",\n\t\t\t"operator": "equals"\n\t\t}\n\t]\n}'
      }
      resourceName="0a9ee34c-29df-4d28-8c23-4a3157e88c7d"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
    />
    <RESTQuery
      id="individual_learners_query_projects2"
      body={
        '[{"key":"query","value":"{{ ({\\n  dimensions: [\\n    \\"sidekick__apprenticeship.apprenticeship_uuid\\",\\n    \\"sidekick__apprenticeship.learner_full_name\\",\\n    \\"sidekick__apprenticeship.project_review_link\\",\\n    \\"sidekick__apprenticeship.project_title\\",\\n    \\"sidekick__apprenticeship.project_link\\"\\n  ],\\n  filters: [\\n    {\\n      values: [selected_user.value?.id],\\n      member: \\"sidekick__apprenticeship.apprenticeship_uuid\\",\\n      operator: \\"equals\\"\\n    }\\n  ]\\n}) }}"}]'
      }
      bodyType="json"
      cacheKeyTtl={300}
      clonedDemoResourceType="restapi"
      enableCaching={true}
      enableMockResponseTransformer={true}
      enableTransformer={true}
      isClonedDemoQuery={true}
      isMultiplayerEdited={false}
      mockResponseTransformer="return "
      openAPIParams="{}"
      openAPIRequestBody=""
      overrideOrgCacheForUserCache={true}
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
      type="POST"
    />
    <Function
      id="unique_project_list2"
      funcBody={include("../lib/unique_project_list2.js", "string")}
    />
  </Folder>
  <RESTQuery
    id="getLearnerData"
    cacheKeyTtl={300}
    clonedDemoResourceType="restapi"
    enableCaching={true}
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    overrideOrgCacheForUserCache={true}
    query="sidekick/v1/apprenticeship/{{ url.searchParams.apprenticeship_uuid }}"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showFailureToaster={false}
    showSuccessToaster={false}
  >
    <Event
      id="5275f9ea"
      event="success"
      method="setValue"
      params={{
        map: {
          value:
            '{{\n(() => {\n  const d = getLearnerData.data;\n  if (!d) return null;\n\n  return {\n    ...d,\n\n    // Explicit IDs\n    apprenticeship_uuid: d.id ?? null,\n    learner_id: d.learner?.id ?? null,\n\n    // Temporary backwards-compatibility\n    id: d.id ?? null,\n\n    // Preserve nested learner object\n    learner: d.learner ?? {},\n\n    // Convenience fields\n    learner_full_name: [d.learner?.first_name, d.learner?.last_name]\n      .filter(Boolean)\n      .join(" "),\n    coach_full_name: [d.coach?.first_name, d.coach?.last_name]\n      .filter(Boolean)\n      .join(" "),\n    apprentice_manager_full_name: [d.apprentice_manager?.first_name, d.apprentice_manager?.last_name]\n      .filter(Boolean)\n      .join(" ")\n  };\n})()\n}}',
        },
      }}
      pluginId="selected_user"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="933e46df"
      event="failure"
      method="setValue"
      params={{ map: { value: "{{ null }}" } }}
      pluginId="selected_user"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <State id="lastNotesKey" />
  <RESTQuery
    id="getLearnerProjectData"
    cacheKeyTtl={300}
    clonedDemoResourceType="restapi"
    enableCaching={true}
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    overrideOrgCacheForUserCache={true}
    query="sidekick/v1/apprenticeship/{{ url.searchParams.apprenticeship_uuid }}/pathway"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
  >
    <Event
      id="06890b1e"
      event="success"
      method="trigger"
      params={{}}
      pluginId="formatLearnerProjects"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <JavascriptQuery
    id="formatLearnerProjects"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/formatLearnerProjects.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="scrollTrigger"
    notificationDuration={4.5}
    query={include("../lib/scrollTrigger.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Include src="./guruDrawerFrame.rsx" />
  <Include src="./notesDrawerFrame.rsx" />
  <Include src="./oldNotesDrawerFrame.rsx" />
  <Include src="./projectsDrawerFrame.rsx" />
  <Frame
    id="$main8"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ map: { canvas: "surfacePrimary" } }}
    type="main"
  >
    <Link
      id="backToMyLearnersLink"
      allowWrap={true}
      ariaLabel=""
      margin="0"
      showUnderline="hover"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      text={
        '{{ (cameFromCoachDigestPage.value === true || cameFromCoachDigestPage.value === "true")\n    ? "< Back to My Day"\n    : "< Back to My Learners"\n}}'
      }
    >
      <Event
        id="fa0a7f13"
        enabled="{{ cameFromCoachDigestPage.value === false }}"
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "my_learners2",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="fa0a7f13"
        enabled="{{ cameFromCoachDigestPage.value === true }}"
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "coach_digest",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button id="button4" style={{}} styleVariant="outline" text="Projects">
      <Event
        id="9e26cc84"
        event="click"
        method="show"
        params={{}}
        pluginId="projectsDrawerFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="c6db0555"
        event="click"
        method="trigger"
        params={{}}
        pluginId="getLearnerProjectData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="learnerName"
      margin="0"
      value="## {{ selected_user.value.learner.first_name}} {{ selected_user.value.learner.last_name}}"
      verticalAlign="center"
    />
    <IconText
      id="cohortNameContainer"
      icon="line/interface-content-book-open"
      margin="0"
      style={{ map: { iconGap: "5px" } }}
      text="{{ selected_user.value.cohort.name}}"
    />
    <Spacer id="spacer11" />
    <IconText
      id="lastActiveContainer"
      icon="line/interface-time-clock-circle"
      margin="0"
      style={{ map: { iconGap: "5px" } }}
      text={
        '{{ \n  (() => {\n    // 1. Get the date value\n    const visitDate = selected_user.value.learner.last_login_at;\n\n    // 2. Handle empty dates\n    if (!visitDate) return "Last active: Never";\n\n    // 3. Calculate the difference in days\n    const daysAgo = moment().diff(visitDate, \'days\');\n\n    // 4. Determine if it should be singular or plural\n    const unit = daysAgo === 1 ? "day" : "days";\n\n    // 5. Return the formatted string\n    return `Last active: ${daysAgo} ${unit} ago`;\n  })()\n}}'
      }
      tooltipText="Latest activity or login across the multiverse platform,  excluding community"
    />
    <IconText
      id="jobTitleCompanyNameContainer"
      icon="line/interface-setting-tool-box"
      margin="0"
      style={{ map: { iconGap: "5px" } }}
      text={
        '{{ selected_user.value.job_title + " | " + selected_user.value.company.name}}'
      }
    />
    <Container
      id="statusContainer"
      _gap="0px"
      _justify="space-between"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { borderRadius: "tokens/e298ce1b" } }}
    >
      <Header>
        <Text
          id="containerTitle126"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text480"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Status"
          verticalAlign="center"
        />
        <Spacer id="spacer10" />
        <IconText
          id="iconText15"
          iconPosition="right"
          margin="0"
          style={{}}
          text={
            '{{\n  (() => {\n    const raw = selected_user.value?.status?.latest_status;\n\n    const labels = {\n      completed_late: "Completed late",\n      completed_on_time: "Completed on time",\n      no_show: "No show",\n      non_starter: "Non-starter",\n      on_bil: "On BIL",\n      on_programme: "On programme",\n      post_gateway: "Post gateway",\n      withdrawal: "Withdrawal",\n    };\n\n    if (!raw) return "—";\n    return (\n      labels[raw] ??\n      raw\n        .replace(/_/g, " ")\n        .replace(/\\b\\w/g, (c) => c.toUpperCase())\n    );\n  })()\n}}'
          }
        />
      </View>
    </Container>
    <Container
      id="coachContainer"
      _gap="0px"
      _justify="space-between"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { borderRadius: "tokens/e298ce1b" } }}
    >
      <Header>
        <Text
          id="containerTitle127"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text481"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Coach"
          verticalAlign="center"
        />
        <Spacer id="spacer12" />
        <IconText
          id="iconText16"
          iconPosition="right"
          margin="0"
          style={{}}
          text={
            '{{\n    [selected_user.value?.coach?.preferred_name ?? selected_user.value?.coach?.first_name,\n     selected_user.value?.coach?.last_name]\n      .filter(Boolean)\n      .join(" ")\n      .trim() || "None"\n  }}'
          }
        />
      </View>
    </Container>
    <Container
      id="daysOnProgrammeContainer"
      _gap="0px"
      _justify="space-between"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { borderRadius: "tokens/e298ce1b" } }}
    >
      <Header>
        <Text
          id="containerTitle128"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text482"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Days On Programme"
          verticalAlign="center"
        />
        <Spacer id="spacer13" />
        <IconText
          id="iconText17"
          iconPosition="right"
          margin="0"
          style={{}}
          text="{{ selected_user.value.status.latest_days_on_programme}}"
        />
      </View>
    </Container>
    <Container
      id="deliveryPlanContainer"
      _gap="0px"
      _justify="space-between"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { borderRadius: "tokens/e298ce1b" } }}
    >
      <Header>
        <Text
          id="containerTitle129"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text483"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Delivery Plan"
          verticalAlign="center"
        />
        <Spacer id="spacer14" />
        <IconText
          id="iconText18"
          icon="line/interface-link-square"
          iconPosition="right"
          margin="0"
          style={{}}
          text="{{ selected_user.value.cohort.name }}"
          tooltipText="Navigate to platform cohorts page"
        >
          <Event
            id="9ccd7595"
            event="click"
            method="openUrl"
            params={{
              map: {
                url: "https://platform.multiverse.io/apprenticeships/delivery-sessions/cohorts/{{ selected_user.value.cohort.id}}/delivery-sessions-details",
              },
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </IconText>
      </View>
    </Container>
    <Container
      id="managerContainer"
      _gap="0px"
      _justify="space-between"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { borderRadius: "tokens/e298ce1b" } }}
    >
      <Header>
        <Text
          id="containerTitle125"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text486"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Manager"
          verticalAlign="center"
        />
        <Spacer id="spacer9" />
        <IconText
          id="iconText14"
          icon="line/interface-align-front"
          iconPosition="right"
          margin="0"
          text={
            '{{\n  [\n    selected_user.value?.apprentice_manager?.first_name,\n    selected_user.value?.apprentice_manager?.last_name\n  ]\n    .filter(Boolean)\n    .join(" ")\n}}'
          }
          tooltipText="Copy Manager Email"
        >
          <Event
            id="a9918487"
            event="click"
            method="copyToClipboard"
            params={{
              map: {
                value: "{{ selected_user.value.apprentice_manager.email}}",
              },
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </IconText>
      </View>
    </Container>
    <Container
      id="ulnContainer"
      _gap="0px"
      _justify="space-between"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { borderRadius: "tokens/e298ce1b" } }}
    >
      <Header>
        <Text
          id="containerTitle130"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text484"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="ULN"
          verticalAlign="center"
        />
        <Spacer id="spacer15" />
        <IconText
          id="iconText19"
          icon="line/interface-align-front"
          iconPosition="right"
          margin="0"
          text="{{ selected_user.value.status.uln}}"
          tooltipText="Copy ULN"
        >
          <Event
            id="ef7ae086"
            event="click"
            method="copyToClipboard"
            params={{ map: { value: "{{ selected_user.value.status.uln}}" } }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </IconText>
      </View>
    </Container>
    <Container
      id="bilStatusContainer"
      _gap="0px"
      _justify="space-between"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { borderRadius: "tokens/e298ce1b" } }}
    >
      <Header>
        <Text
          id="containerTitle131"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text485"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="BIL Status"
          verticalAlign="center"
        />
        <Spacer id="spacer16" />
        <IconText
          id="iconText20"
          iconPosition="right"
          margin="0"
          text={'{{ selected_user.value.status.bil_process_status ?? "N/A"}}'}
        />
      </View>
    </Container>
    <DropdownButton
      id="actionsDropdownButton"
      _colorByIndex={["", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", ""]}
      _imageByIndex={["", "", "", "", ""]}
      _values={["", "", "", "Action 4", "Action 5"]}
      icon="bold/chevron-down"
      iconPosition="right"
      itemMode="static"
      overlayMaxHeight={375}
      overlayMinWidth="200"
      style={{}}
      styleVariant="outline"
      text="Actions"
    >
      <Option id="00030" label="Update BIL status">
        <Event
          id="7ff52706"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/apprentice-success/{{ selected_user.value.id}}/bil",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="00031" label="Update withdrawal status">
        <Event
          id="d359dc1a"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/apprentice-success/{{ selected_user.value.id}}/withdrawal",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="00032" label="Refer to apprentice support">
        <Event
          id="cf23e440"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://dis.multiverse.io/new/additional_learning_needs",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="800ba"
        disabled={false}
        hidden={false}
        label="Log BIL Check-in"
      >
        <Event
          id="8fc56773"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/apprentice-success/{{ selected_user.value.id}}/bil-management",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="0702c"
        disabled={false}
        hidden={false}
        label="Book / Edit Gateway"
      >
        <Event
          id="ae2b5e6e"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://assessment.dis.multiverse.io/view/assessment_events",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </DropdownButton>
    <DropdownButton
      id="contactDropdownButton"
      _colorByIndex={["", "", "", ""]}
      _fallbackTextByIndex={["", "", "", ""]}
      _imageByIndex={["", "", "", ""]}
      _values={["", "", "", "Action 4"]}
      icon="bold/chevron-down"
      iconPosition="right"
      itemMode="static"
      overlayMaxHeight={375}
      overlayMinWidth="200"
      style={{}}
      styleVariant="outline"
      text="Contact"
    >
      <Option id="00030" label="Chat to Learner">
        <Event
          id="83568f44"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/me?chat=User:{{ selected_user.value.learner.id }}",
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
        caption="{{selected_user.value.learner.email }}"
        label="Email Learner"
      >
        <Event
          id="faf7b404"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/u/0/?fs=1&to={{ selected_user.value.learner.email}}&tf=cm",
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
        caption="{{ selected_user.value.apprentice_manager.email }}"
        label="Email Manager"
      >
        <Event
          id="9c3aa910"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/u/0/?fs=1&to={{ selected_user.value.apprentice_manager.email}}&tf=cm",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="c1600"
        disabled={false}
        hidden={false}
        label="Email Learner and Manager"
      >
        <Event
          id="c540f39b"
          event="click"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/u/0/?fs=1&to={{ selected_user.value.learner.email}},{{selected_user.value.apprentice_manager.email }}&tf=cm",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </DropdownButton>
    <Button id="notesButton" style={{}} styleVariant="outline" text="Notes">
      <Event
        id="18116639"
        event="click"
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
        pluginId="scrollTrigger"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="notesButton3" style={{}} styleVariant="outline" text="Projects">
      <Event
        id="18116639"
        event="click"
        method="show"
        params={{}}
        pluginId="projectsDrawerFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="0daf83e3"
        event="click"
        method="trigger"
        params={{}}
        pluginId="getLearnerProjectData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="withdrawalRiskContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden=""
      padding="12px"
      showBody={true}
      showHeader="false"
    >
      <Header>
        <Text
          id="containerTitle21"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="containerTitle22"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="**Withdrawal risk**"
          verticalAlign="center"
        />
        <HTML
          id="html2"
          css={include("../lib/html2.css", "string")}
          html={include("../lib/html2.html", "string")}
        />
      </View>
    </Container>
    <Container
      id="riskFactorContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden={
        '{{\n  (() => {\n    const risk = String(\n      selected_user.value?.withdrawal_risk?.risk_bucket_name ?? ""\n    )\n      .trim()\n      .toLowerCase();\n\n    return !(risk === "high" || risk === "very_high");\n  })()\n}}'
      }
      padding="12px"
      showBody={true}
      showHeader="True"
      style={{ map: { headerBackground: "#ffddc1" } }}
    >
      <Header>
        <Text
          id="containerTitle32"
          style={{
            fontSize: "h4Font",
            fontWeight: "h4Font",
            fontFamily: "h4Font",
          }}
          value="**Withdrawal risk**"
          verticalAlign="center"
        />
        <Text
          id="containerTitle33"
          horizontalAlign="right"
          style={{
            fontSize: "h4Font",
            fontWeight: "h4Font",
            fontFamily: "h4Font",
          }}
          value={
            '{{ \n  String(selected_user.value?.withdrawal_risk?.risk_bucket_name ?? "")\n    .split("_")\n    .map(word => word.charAt(0).toUpperCase() + word.slice(1))\n    .join(" ")\n}}'
          }
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text6"
          style={{
            fontSize: "h4Font",
            fontWeight: "h4Font",
            fontFamily: "h4Font",
          }}
          value="### **Top Risk Factors**"
          verticalAlign="center"
        />
        <ListViewBeta
          id="listView1"
          _primaryKeys=""
          data="{{ get_top_risk_factors2.value }}"
          heightType="auto"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          numColumns="3"
          padding="0"
        >
          <Container
            id="container23"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
            showBorder={false}
            showHeader={true}
            showHeaderBorder={false}
          >
            <Header>
              <Text
                id="containerTitle34"
                horizontalAlign="center"
                style={{ map: { background: "rgb(255, 221, 193)" } }}
                value="#### #{{ item.rank }}"
                verticalAlign="center"
              />
            </Header>
            <View id="00030" viewKey="View 1">
              <Text
                id="text7"
                value="##### {{ item.feature_name }}"
                verticalAlign="center"
              />
              <Text
                id="text8"
                value="{{ item.display_text }}"
                verticalAlign="center"
              />
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
    <Include src="./eolContainer.rsx" />
    <Container
      id="projectsContainer"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="true"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="listViewTitle1"
          value="#### Projects"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <ListViewBeta
          id="listView2"
          _primaryKeys="{{ i }}"
          data="{{ unique_project_list2.value.slice(0, 2) }}"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          numColumns="2"
          padding="12px"
        >
          <Include src="./linkCard3.rsx" />
        </ListViewBeta>
      </View>
    </Container>
    <Include src="./prContainer.rsx" />
    <Text
      id="gatewayReadinessText"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="Gateway readiness"
      verticalAlign="center"
    />
    <Include src="./functionalSkillsCollapsible.rsx" />
    <Include src="./gatewayCollapsible.rsx" />
    <Include src="./otjCollapsible.rsx" />
    <Include src="./attendanceCollapsible.rsx" />
  </Frame>
</Screen>
