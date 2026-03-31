<Screen
  id="indvidual_learner_view2"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={5}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug="indvidual_learner_view2"
  uuid="cc3adda3-6b85-493d-a443-5ced610b5920"
>
  <Folder id="projectsMicroservice">
    <Function
      id="unique_project_list3"
      funcBody={include("../lib/unique_project_list3.js", "string")}
    />
    <Function
      id="unique_project_list4"
      funcBody={include("../lib/unique_project_list4.js", "string")}
    />
    <RESTQuery
      id="individual_learners_query_projects3"
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
      id="individual_learners_query_projects4"
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
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
      type="POST"
    />
  </Folder>
  <Folder id="notesMicroservice">
    <RESTQuery
      id="postSupportFactorNote2"
      body={
        '[{"key":"content_type","value":"{{ noteTypeRadioGroup2.value }}"},{"key":"content","value":"{{ notesInputTextBox2.value }}"},{"key":"support_factors","value":"{{ noteTypeRadioGroup.value === \\"support_factor\\" ? supportFactorMultiselect.value : [] }}"}]'
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
        id="0bb677dd"
        event="success"
        method="trigger"
        params={{}}
        pluginId="getLearnerNotes2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="05d129ad"
        event="success"
        method="trigger"
        params={{}}
        pluginId="resetNoteForm2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="5577899c"
        event="success"
        method="trigger"
        params={{}}
        pluginId="resetNoteForm3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="postInterventionNote2"
      body={
        '[{"key":"content_type","value":"{{ noteTypeRadioGroup2.value }}"},{"key":"content","value":"{{ notesInputTextBox2.value }}"},{"key":"intervention_action","value":"{{ interventionActionsMultiselect2.selectedItem.value }}"},{"key":"intervention_type","value":"{{ interventionTypeMultiselect2.selectedItem.value }}"}]'
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
        id="fe792e6c"
        event="success"
        method="trigger"
        params={{}}
        pluginId="getLearnerNotes2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="64f879c5"
        event="success"
        method="trigger"
        params={{}}
        pluginId="resetNoteForm2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="46336493"
        event="success"
        method="trigger"
        params={{}}
        pluginId="resetNoteForm3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getLearnerNotes2"
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
      query="sidekick/v1/apprenticeship/{{ selected_user.value.id }}/note"
      resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
      showFailureToaster={false}
      showSuccessToaster={false}
    >
      <Event
        id="bcef8ca3"
        enabled="{{ !notesDrawerFrame2.hidden }}"
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
    <JavascriptQuery
      id="resetNoteForm2"
      notificationDuration={4.5}
      query={include("../lib/resetNoteForm2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="postLearnerNote2"
      body={
        '[{"key":"content_type","value":"{{ noteTypeRadioGroup2.value }}"},{"key":"content","value":"{{ notesInputTextBox2.value }}"}]'
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
        id="0bb677dd"
        event="success"
        method="trigger"
        params={{}}
        pluginId="getLearnerNotes2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="918a351f"
        event="success"
        method="trigger"
        params={{}}
        pluginId="resetNoteForm2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="f75ce67e"
        event="success"
        method="trigger"
        params={{}}
        pluginId="resetNoteForm3"
        type="datasource"
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
    <JavascriptQuery
      id="getInterventionTypeOptions2"
      notificationDuration={4.5}
      query={include("../lib/getInterventionTypeOptions2.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="riskFactors">
    <Function
      id="get_top_risk_factors3"
      funcBody={include("../lib/get_top_risk_factors3.js", "string")}
    />
    <Function
      id="get_top_risk_factors4"
      funcBody={include("../lib/get_top_risk_factors4.js", "string")}
    />
    <RESTQuery
      id="individual_learners_query_risk_factors2"
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
      queryDisabled="{{ !withdrawalRiskContainer2.hidden }}"
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
        pluginId="individual_learners_query_projects3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="risk_factors_individual_learners2"
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
      id="individual_learners_query_risk3"
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
      resourceName="c8852c06-a4c5-478b-adf6-895715bc91df"
      resourceTypeOverride=""
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="return data.data"
      type="POST"
    />
  </Folder>
  <JavascriptQuery
    id="copyAllNotes"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/copyAllNotes.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <State id="expandedNoteIds" value="[]" />
  <JavascriptQuery
    id="initNotesExpansion"
    notificationDuration={4.5}
    query={include("../lib/initNotesExpansion.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="clearNotesFilters"
    notificationDuration={4.5}
    query={include("../lib/clearNotesFilters.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RetoolAIQuery
    id="query8"
    clonedDemoResourceType="retoolAI"
    customSystemMessage="You must translate the users message into Pirate speak, authentic to pirates. You must re-write per note."
    defaultModelInitialized={true}
    enableMockResponseTransformer={true}
    enableTransformer={true}
    instruction="Here are the notes you must summarise {{ getLearnerNotes2.data }}"
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    model="claude-sonnet-4-6"
    notificationDuration={4.5}
    providerId="retoolAIBuiltIn::anthropic"
    providerName="anthropic"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.data"
  />
  <JavascriptQuery
    id="resetNoteForm3"
    notificationDuration={4.5}
    query={include("../lib/resetNoteForm3.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Include src="./guruDrawerFrame2.rsx" />
  <Include src="./modalFrame2.rsx" />
  <Include src="./notesDrawerFrame2.rsx" />
  <Include src="./oldNotesDrawerFrame2.rsx" />
  <Include src="./projectsDrawerFrame2.rsx" />
  <Frame
    id="$main9"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ map: { canvas: "surfacePrimary" } }}
    type="main"
  >
    <Link
      id="backToMyLearnersLink2"
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
    <Text
      id="learnerName2"
      margin="0"
      value="## {{ selected_user.value.learner.first_name}} {{ selected_user.value.learner.last_name}}"
      verticalAlign="center"
    />
    <IconText
      id="cohortNameContainer2"
      icon="line/interface-content-book-open"
      margin="0"
      style={{ map: { iconGap: "5px" } }}
      text="{{ selected_user.value.cohort.name}}"
    />
    <Spacer id="spacer18" />
    <IconText
      id="lastActiveContainer2"
      icon="line/interface-time-clock-circle"
      margin="0"
      style={{ map: { iconGap: "5px" } }}
      text={
        '{{ \n  (() => {\n    // 1. Get the date value\n    const visitDate = selected_user.value.status.latest_website_visit_date;\n\n    // 2. Handle empty dates\n    if (!visitDate) return "Last active: Never";\n\n    // 3. Calculate the difference in days\n    const daysAgo = moment().diff(visitDate, \'days\');\n\n    // 4. Determine if it should be singular or plural\n    const unit = daysAgo === 1 ? "day" : "days";\n\n    // 5. Return the formatted string\n    return `Last active: ${daysAgo} ${unit} ago`;\n  })()\n}}'
      }
      tooltipText="Latest activity or login across the multiverse platform,  excluding community"
    />
    <IconText
      id="jobTitleCompanyNameContainer2"
      icon="line/interface-setting-tool-box"
      margin="0"
      style={{ map: { iconGap: "5px" } }}
      text={
        '{{ selected_user.value.job_title + " | " + selected_user.value.company.name}}'
      }
    />
    <Container
      id="statusContainer2"
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
          id="containerTitle133"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text489"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Status"
          verticalAlign="center"
        />
        <Spacer id="spacer17" />
        <IconText
          id="iconText22"
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
      id="coachContainer2"
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
          id="containerTitle134"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text490"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Coach"
          verticalAlign="center"
        />
        <Spacer id="spacer19" />
        <IconText
          id="iconText23"
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
      id="daysOnProgrammeContainer2"
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
          id="containerTitle135"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text491"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Days On Programme"
          verticalAlign="center"
        />
        <Spacer id="spacer20" />
        <IconText
          id="iconText24"
          iconPosition="right"
          margin="0"
          style={{}}
          text="{{ selected_user.value.status.latest_days_on_programme}}"
        />
      </View>
    </Container>
    <Container
      id="deliveryPlanContainer2"
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
          id="containerTitle136"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text492"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Delivery Plan"
          verticalAlign="center"
        />
        <Spacer id="spacer21" />
        <IconText
          id="iconText25"
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
                url: "https://platform.multiverse.io/manager/delivery/cohorts",
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
      id="managerContainer2"
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
          id="containerTitle132"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text495"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="Manager"
          verticalAlign="center"
        />
        <Spacer id="spacer26" />
        <IconText
          id="iconText21"
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
      id="ulnContainer2"
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
          id="containerTitle137"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text493"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="ULN"
          verticalAlign="center"
        />
        <Spacer id="spacer22" />
        <IconText
          id="iconText26"
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
      id="bilStatusContainer2"
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
          id="containerTitle138"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text494"
          margin="0"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="BIL Status"
          verticalAlign="center"
        />
        <Spacer id="spacer23" />
        <IconText
          id="iconText27"
          iconPosition="right"
          margin="0"
          text={'{{ selected_user.value.status.bil_process_status ?? "N/A"}}'}
        />
      </View>
    </Container>
    <DropdownButton
      id="actionsDropdownButton2"
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
      id="contactDropdownButton2"
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
              url: "https://platform.multiverse.io/manager/me?chat=User:{{ selected_user.value.id }}",
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
    <Button id="notesButton2" style={{}} styleVariant="outline" text="Notes">
      <Event
        id="18116639"
        event="click"
        method="show"
        params={{}}
        pluginId="notesDrawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="2a497a4f"
        event="click"
        method="trigger"
        params={{}}
        pluginId="initNotesExpansion"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="withdrawalRiskContainer2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden={
        "{{\n  (() => {\n    // 1. Get the risk value\n    const risk = selected_user.value?.[\"gh_apprenticeship.apprenticeship_latest_risk_bucket_name\"];\n\n    // 2. Hide if the risk is High or Very High\n    return risk === 'High' || risk === 'Very High';\n  })()\n}}"
      }
      padding="12px"
      showBody={true}
      showHeader="false"
    >
      <Header>
        <Text
          id="containerTitle139"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="containerTitle140"
          style={{
            fontSize: "labelEmphasizedFont",
            fontWeight: "labelEmphasizedFont",
            fontFamily: "labelEmphasizedFont",
          }}
          value="**Withdrawal risk**"
          verticalAlign="center"
        />
        <HTML
          id="html30"
          css={include("../lib/html30.css", "string")}
          html={include("../lib/html30.html", "string")}
        />
      </View>
    </Container>
    <Include src="./eolContainer2.rsx" />
    <Container
      id="riskFactorContainer2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{
  (() => {
    // 1. Get the risk value
    const risk = selected_user.value.withdrawal_risk.risk_bucket_name;

    // 2. Hide if the risk is NOT High AND NOT Very High
    // (This ensures it stays hidden for Low, Medium, or if the field is empty)
    return !(risk === 'High' || risk === 'Very High');
  })()
}}"
      padding="12px"
      showBody={true}
      showHeader="True"
      style={{ map: { headerBackground: "#ffddc1" } }}
    >
      <Header>
        <Text
          id="containerTitle150"
          style={{
            fontSize: "h4Font",
            fontWeight: "h4Font",
            fontFamily: "h4Font",
          }}
          value="**Withdrawal risk**"
          verticalAlign="center"
        />
        <Text
          id="containerTitle151"
          horizontalAlign="right"
          style={{
            fontSize: "h4Font",
            fontWeight: "h4Font",
            fontFamily: "h4Font",
          }}
          value="{{ selected_user.value.withdrawal_risk.risk_bucket_name }}"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text497"
          style={{
            fontSize: "h4Font",
            fontWeight: "h4Font",
            fontFamily: "h4Font",
          }}
          value="### **Top Risk Factors**"
          verticalAlign="center"
        />
        <ListViewBeta
          id="listView5"
          _primaryKeys=""
          data="{{ get_top_risk_factors4.value }}"
          heightType="auto"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          numColumns="3"
          padding="0"
        >
          <Include src="./container109.rsx" />
        </ListViewBeta>
      </View>
    </Container>
    <Include src="./prContainer2.rsx" />
    <Container
      id="projectsContainer2"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="listViewTitle2"
          value="#### Projects"
          verticalAlign="center"
        />
        <Button
          id="button25"
          style={{}}
          styleVariant="outline"
          text="View more"
        >
          <Event
            id="9e26cc84"
            event="click"
            method="show"
            params={{}}
            pluginId="projectsDrawerFrame2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="00030" viewKey="View 1">
        <ListViewBeta
          id="listView6"
          _primaryKeys="{{ i }}"
          data="{{ unique_project_list4.value.slice(0, 2) }}"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          numColumns="2"
          padding="12px"
        >
          <Include src="./linkCard4.rsx" />
        </ListViewBeta>
      </View>
    </Container>
    <Text
      id="gatewayReadinessText2"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="Gateway readiness"
      verticalAlign="center"
    />
    <Include src="./functionalSkillsCollapsible2.rsx" />
    <Include src="./gatewayCollapsible2.rsx" />
    <Include src="./otjCollapsible2.rsx" />
    <Include src="./attendanceCollapsible2.rsx" />
  </Frame>
</Screen>
