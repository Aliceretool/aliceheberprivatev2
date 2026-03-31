<Screen
  id="my_learners"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={4}
  _searchParams={[]}
  browserTitle=""
  margin="4px 8px"
  title="Page 1"
  urlSlug=""
  uuid="728aedc6-340e-46f4-80ba-6aad60e70946"
>
  <Folder id="statWidgets">
    <JavascriptQuery
      id="totalFilteredLearnerCount"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/totalFilteredLearnerCount.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="filteredLearners"
      notificationDuration={4.5}
      query={include("../lib/filteredLearners.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    >
      <Event
        id="490ad3c4"
        event="success"
        method="trigger"
        params={{}}
        pluginId="totalFilteredLearnerCount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="gatewayNotBookedMetric"
      isMultiplayerEdited={false}
      query={include("../lib/gatewayNotBookedMetric.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="highRiskLearnersMetric"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/highRiskLearnersMetric.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="behindOnOtjMetric"
      notificationDuration={4.5}
      query={include("../lib/behindOnOtjMetric.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="attendanceOffTrackMetric"
      notificationDuration={4.5}
      query={include("../lib/attendanceOffTrackMetric.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="noRecentEvidenceMetric"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/noRecentEvidenceMetric.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="progressReviewOverdueMetric"
      notificationDuration={4.5}
      query={include("../lib/progressReviewOverdueMetric.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="tableFilters">
    <JavascriptQuery
      id="riskOptions"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/riskOptions.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="coachOptions"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/coachOptions.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="statusOptions"
      isMultiplayerEdited={false}
      query={include("../lib/statusOptions.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="companyOptions"
      isMultiplayerEdited={false}
      query={include("../lib/companyOptions.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="cohortOptions"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/cohortOptions.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
  </Folder>
  <RESTQuery
    id="data_ops_API_query2"
    cacheKeyTtl={300}
    clonedDemoResourceType="restapi"
    enableCaching={true}
    enableMockResponseTransformer={true}
    enableTransformer={true}
    headers={
      '[{"key":"impersonate-id","value":"{{ impersonate_user.value }}"}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    openAPIParams="{}"
    openAPIRequestBody=""
    overrideOrgCacheForUserCache={true}
    query="sidekick/apprenticeship?"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.items"
  >
    <Event
      id="3bbd3128"
      event="success"
      method="trigger"
      params={{}}
      pluginId="coachOptions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
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
  </RESTQuery>
  <Frame
    id="$main11"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  />
  <Frame
    id="$main12"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    margin="4px 8px"
    padding="8px 12px"
    style={{ map: { canvas: "surfacePrimary" } }}
    type="main"
  >
    <Text id="text10" value="# My learners" verticalAlign="center" />
    <Container
      id="container29"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ coach_filter_multiselect.value.length === 0 }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      highRiskLearnersMetric.isRunning ||\n      highRiskLearnersMetric.isFetching ||\n      highRiskLearnersMetric.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount.isRunning ||\n      totalFilteredLearnerCount.isFetching ||\n      totalFilteredLearnerCount.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      highRiskLearnersMetric.data &&\n      highRiskLearnersMetric.data.highRisk != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount.data != null;\n\n    const baseRunning =\n      data_ops_API_query2.isRunning ||\n      data_ops_API_query2.isFetching ||\n      data_ops_API_query2.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle39"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic12"
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
          suffix={'{{ "/ " + (totalFilteredLearnerCount.data ?? 0) }}'}
          tooltipText="Learners flagged at high or very high risk of withdrawing"
          value={'{{ highRiskLearnersMetric.data["highRisk"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container30"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ coach_filter_multiselect.value.length === 0 }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      gatewayNotBookedMetric.isRunning ||\n      gatewayNotBookedMetric.isFetching ||\n      gatewayNotBookedMetric.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount.isRunning ||\n      totalFilteredLearnerCount.isFetching ||\n      totalFilteredLearnerCount.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      gatewayNotBookedMetric.data &&\n      gatewayNotBookedMetric.data.gatewayNotBooked != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount.data != null;\n\n    const baseRunning =\n      data_ops_API_query2.isRunning ||\n      data_ops_API_query2.isFetching ||\n      data_ops_API_query2.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle40"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic15"
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
          suffix={'{{ "/ " + (totalFilteredLearnerCount.data ?? 0) }}\n'}
          tooltipText="Learners who have not bokked in their gateway session yet"
          value={'{{ gatewayNotBookedMetric.data["gatewayNotBooked"] }}'}
        />
      </View>
    </Container>
    <TextInput
      id="table_search_text_input"
      label="Search"
      labelPosition="top"
      placeholder="Search"
    >
      <Event
        id="6bb3ec2b"
        event="submit"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </TextInput>
    <Container
      id="container31"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ coach_filter_multiselect.value.length === 0 }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      behindOnOtjMetric.isRunning ||\n      behindOnOtjMetric.isFetching ||\n      behindOnOtjMetric.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount.isRunning ||\n      totalFilteredLearnerCount.isFetching ||\n      totalFilteredLearnerCount.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      behindOnOtjMetric.data &&\n      behindOnOtjMetric.data.behindOnOTJ != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount.data != null;\n\n    const baseRunning =\n      data_ops_API_query2.isRunning ||\n      data_ops_API_query2.isFetching ||\n      data_ops_API_query2.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle41"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic16"
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
          suffix={'{{ "/ " + (totalFilteredLearnerCount.data ?? 0) }}'}
          tooltipText="Learners whose OTJ is at 90% or below"
          value={'{{ behindOnOtjMetric.data["behindOnOTJ"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container32"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ coach_filter_multiselect.value.length === 0 }}"
      loading={
        '{{\n  (() => {\n    const q1Running =\n      attendanceOffTrackMetric.isRunning ||\n      attendanceOffTrackMetric.isFetching ||\n      attendanceOffTrackMetric.isLoading;\n\n    const q2Running =\n      totalFilteredLearnerCount.isRunning ||\n      totalFilteredLearnerCount.isFetching ||\n      totalFilteredLearnerCount.isLoading;\n\n    // "ready" means value is not null/undefined (0 is valid)\n    const q1Ready =\n      attendanceOffTrackMetric.data &&\n      attendanceOffTrackMetric.data.attendanceOverdue != null;\n\n    const q2Ready =\n      totalFilteredLearnerCount.data != null;\n\n    const baseRunning =\n      data_ops_API_query2.isRunning ||\n      data_ops_API_query2.isFetching ||\n      data_ops_API_query2.isLoading;\n\n    return (baseRunning || q1Running || q2Running) || (!q1Ready || !q2Ready);\n  })()\n}}'
      }
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle42"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic17"
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
          suffix={'{{ "/ " + (totalFilteredLearnerCount.data ?? 0) }}'}
          tooltipText="Learners who have not attended in over 30 days"
          value={'{{ attendanceOffTrackMetric.data["attendanceOverdue"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container33"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ coach_filter_multiselect.value.length === 0 }}"
      loading="{{
  (() => {
    const metricRunning =
      noRecentEvidenceMetric.isRunning ||
      noRecentEvidenceMetric.isFetching ||
      noRecentEvidenceMetric.isLoading;

    const totalRunning =
      totalFilteredLearnerCount.isRunning ||
      totalFilteredLearnerCount.isFetching ||
      totalFilteredLearnerCount.isLoading;

    const baseRunning =
      data_ops_API_query2.isRunning ||
      data_ops_API_query2.isFetching ||
      data_ops_API_query2.isLoading;

    return baseRunning || metricRunning || totalRunning;
  })()
}}"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle43"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic13"
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
          suffix={'{{ "/ " + (totalFilteredLearnerCount.data ?? 0) }}'}
          tooltipText="Learners with no new evidence in over 30 days"
          value={'{{ noRecentEvidenceMetric.data["noRecentEvidence"] }}'}
        />
      </View>
    </Container>
    <Container
      id="container34"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ coach_filter_multiselect.value.length === 0 }}"
      loading="{{
  (() => {
    const metricRunning =
      progressReviewOverdueMetric.isRunning ||
      progressReviewOverdueMetric.isFetching;

    const totalRunning =
      totalFilteredLearnerCount.isRunning ||
      totalFilteredLearnerCount.isFetching;

    const baseRunning =
      data_ops_API_query2.isRunning ||
      data_ops_API_query2.isFetching;

    return baseRunning || metricRunning || totalRunning;
  })()
}}"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle44"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic14"
          align="center"
          currency="USD"
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
          showSeparators={true}
          style={{}}
          suffix={'{{ "/ " + (totalFilteredLearnerCount.data ?? 0) }}'}
          tooltipText="Learners where the latest progress review date is older than 84 days"
          value={
            '{{ progressReviewOverdueMetric.data["progressReviewOverdue"] }}'
          }
        />
      </View>
    </Container>
    <Multiselect
      id="cohort_filter_multiselect"
      data="{{ cohortOptions.data }}"
      emptyMessage="No options"
      label="Cohort"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex="{{ item.label }}"
      values="{{ item.value }}"
      wrapTags={true}
    >
      <Event
        id="04e49db1"
        enabled="{{ cohort_filter_multiselect.value && cohort_filter_multiselect.value.length > 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="5de1d93c"
        enabled="{{ !cohort_filter_multiselect.value || cohort_filter_multiselect.value.length === 0 }}"
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
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="company_filter_multiselect"
      data="{{ companyOptions.data }}"
      emptyMessage="No options"
      label="Company"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      value="[]"
      values="{{ item.value }}"
      wrapTags={true}
    >
      <Event
        id="f4202b7c"
        enabled="{{ company_filter_multiselect.value && company_filter_multiselect.value.length > 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="63e5d669"
        enabled="{{ !company_filter_multiselect.value || company_filter_multiselect.value.length === 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="coach_filter_multiselect"
      captionByIndex=""
      data="{{ coachOptions.data }}"
      emptyMessage="No options"
      label="Coach"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      value="{{  localStorage.values.savedCoach }}"
      values="{{ item.value }}"
      wrapTags={true}
    >
      <Event
        id="70686fce"
        enabled="{{ coach_filter_multiselect.value && coach_filter_multiselect.value.length > 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="61c078e9"
        enabled="{{ !coach_filter_multiselect.value || coach_filter_multiselect.value.length === 0 }}"
        event="change"
        method="reset"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
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
    </Multiselect>
    <Multiselect
      id="status_filter_multiselect"
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
      value=""
      values=""
      wrapTags={true}
    >
      <Option id="0e507" disabled={false} hidden={false} value="On-Programme" />
      <Option id="5053e" disabled={false} hidden={false} value="On-BIL" />
      <Option id="8badd" disabled={false} hidden={false} value="Post-Gateway" />
      <Option id="663dc" disabled={false} hidden={false} value="Withdrawn" />
      <Option id="86b0f" disabled={false} hidden={false} value="No-Show" />
      <Option id="aa8f8" disabled={false} hidden={false} value="Non-Starter" />
      <Event
        id="868969e5"
        enabled="{{ status_filter_multiselect.value && status_filter_multiselect.value.length > 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="3d451d0d"
        enabled="{{ !status_filter_multiselect.value || status_filter_multiselect.value.length === 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="risk_level_filter_multiselect"
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
      values=""
      wrapTags={true}
    >
      <Option id="0b681" disabled={false} hidden={false} value="Very High" />
      <Option id="e40a8" disabled={false} hidden={false} value="High" />
      <Option id="b4d94" disabled={false} hidden={false} value="Medium" />
      <Option id="09d2d" disabled={false} hidden={false} value="Low" />
      <Event
        id="2961833f"
        enabled="{{ risk_level_filter_multiselect.value && risk_level_filter_multiselect.value.length > 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="33402a6e"
        enabled="{{ !risk_level_filter_multiselect.value || risk_level_filter_multiselect.value.length === 0 }}"
        event="change"
        method="trigger"
        params={{}}
        pluginId="data_ops_API_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Link
      id="link4"
      allowWrap={true}
      ariaLabel=""
      horizontalAlign="center"
      style={{}}
      text="Reset Filters"
    >
      <Event
        id="38b9011e"
        event="click"
        method="clearValue"
        params={{ map: { value: "null" } }}
        pluginId="company_filter_multiselect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="b9efc504"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="cohort_filter_multiselect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="45a83fe8"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="coach_filter_multiselect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="f7a77772"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="status_filter_multiselect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="23252ccc"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="risk_level_filter_multiselect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="6c7b7171"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="table_search_text_input"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="f9275369"
        event="click"
        method="reset"
        params={{}}
        pluginId="data_ops_API_query2"
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
    <Image
      id="image7"
      fit="contain"
      heightType="fixed"
      hidden="{{ coach_filter_multiselect.value.length > 0 }}"
      horizontalAlign="center"
      retoolStorageFileId="4f228b13-5694-4165-88d1-a0a86d627645"
      srcType="retoolStorageFileId"
    />
    <Text
      id="text11"
      hidden="{{ coach_filter_multiselect.value.length > 0 }}"
      horizontalAlign="center"
      value="### Apply Coach filter to find learners"
      verticalAlign="center"
    />
    <Table
      id="learner_table_2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ data_ops_API_query2.data }}"
      defaultFilters={{
        0: {
          id: "4e39e",
          columnId: "aa443",
          operator: "intersects",
          value: "{{ risk_level_filter_multiselect.value }}",
          disabled: false,
        },
        1: {
          id: "2ab7f",
          columnId: "a9be8",
          operator: "intersects",
          value: "{{ cohort_filter_multiselect.value }}",
          disabled: false,
        },
        2: {
          id: "8d846",
          columnId: "dadf9",
          operator: "intersects",
          value: "{{ company_filter_multiselect.value }}",
          disabled: false,
        },
        3: {
          id: "2dfc1",
          columnId: "27266",
          operator: "intersects",
          value: "{{ status_filter_multiselect.value }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="Select a coach to populate"
      enableSaveActions={true}
      groupByColumns={{}}
      hidden="{{ coach_filter_multiselect.value.length === 0 }}"
      overflowType="pagination"
      rowHeight="medium"
      rowSelection="none"
      searchTerm="{{ table_search_text_input.value }}"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      style={{ border: "#ebdfdf", rowSeparator: "rgba(235, 223, 223, 1)" }}
      templatePageSize="100"
    >
      <Column
        id="2e3db"
        alignment="left"
        editable="false"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d9508"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "outline",
          iconBefore: "line/interface-edit-view",
        }}
        groupAggregationMode="none"
        placeholder="Enter value"
        position="left"
        size={78.734375}
        valueOverride="View"
      >
        <Event
          id="fbbabf44"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="8b198e41"
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
        <Event
          id="a4e6f7b1"
          event="clickCell"
          method="setValue"
          params={{}}
          pluginId=""
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="c755a"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="learner_full_name"
        label="Name"
        placeholder="Enter value"
        position="left"
        size={175.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="aa443"
        alignment="left"
        editableOptions={{ allowCustomValue: true }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{\n  {\n    'Very High': '#C62828',   // Deep Crimson (renders as Solid Red)\n    'High': '#FFDDC1',        // Very Pale Salmon/Peach (Lighter)\n    'Medium': '#FFF59D',      // Very Pale Gold/Cream (Lighter)\n    'Low': '#C8E6C9'          // Very Pale Mint Green (Lighter)\n  }[item] || 'default'\n}}",
        }}
        groupAggregationMode="none"
        key="latest_risk_bucket_name"
        label="Risk level"
        optionList={{
          mode: "mapped",
          mappedData: "",
          valueByIndex: '{{ item["gh_apprenticeship.apprenticeship_uuid"] }}',
          labelByIndex: '{{ item["gh_apprenticeship.learner_full_name"] }}',
          colorByIndex: "{{ theme.primary }}",
        }}
        placeholder="Select option"
        position="center"
        referenceId="risk_level"
        size={108.625}
        summaryAggregationMode="none"
        valueOverride="{{ item == null ? 'None' : item }}"
      />
      <Column
        id="c4f15"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="none"
        key="latest_risk_prediction_timestamp"
        label="Intervention"
        placeholder="Select option"
        position="center"
        referenceId="intervention"
        size={106}
        summaryAggregationMode="none"
        valueOverride={
          '{{ item ? moment().diff(item, \'days\') + " days ago" : "None" }}'
        }
      />
      <Column
        id="98201"
        alignment="left"
        cellTooltip="{{ item }}"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="sum"
        key="total_projects_submitted"
        label="Projects Submitted"
        placeholder="Select option"
        position="center"
        referenceId="projectsSubmitted"
        size={129}
        summaryAggregationMode="none"
        valueOverride="{{ item == null ? 'None' : item }}"
      />
      <Column
        id="b0297"
        alignment="left"
        cellTooltip={
          '{{\n  (() => {\n    // We access the nested path you provided using optional chaining (?.) to prevent errors if data is missing\n    const rawDate = currentSourceRow[\'latest_evidence_of_learning_date\'];\n    \n    // Formatting logic\n    if (rawDate) {\n       return "Last evidence of learning: " + moment(rawDate).format("D MMM YYYY");\n    }\n    return "No evidence recorded";\n  })()\n}}'
        }
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{\n  (() => {\n    // If there is no item, return default\n    if (!item) return 'default';\n\n    // Extract the integer from the text (e.g., turns \"59 days ago\" into 59)\n    const days = parseInt(item, 10);\n\n    // Safety check: If it's not a number (like \"None\"), return default\n    if (isNaN(days)) return 'default';\n\n    // Apply Logic\n    if (days <= 20) {\n      return '#C8E6C9'; // Low (Green)\n    } else if (days <= 30) {\n      return '#FFF59D'; // Medium (Yellow)\n    } else {\n      return '#FFDDC1'; // High (> 30 days)\n    }\n  })()\n}}",
        }}
        groupAggregationMode="sum"
        key="latest_evidence_of_learning_date"
        label="Latest EOL"
        placeholder="Select option"
        position="center"
        size={107}
        summaryAggregationMode="none"
        valueOverride={
          '{{ item ? moment().diff(item, \'days\') + " days ago" : "None" }}'
        }
      />
      <Column
        id="66e58"
        alignment="left"
        cellTooltip={
          '{{\n  (() => {\n    // 1. Get the raw dates using the bracket notation\n    const coachDate = currentSourceRow[\'latest_coaching_session_attended_date\'];\n    const delivDate = currentSourceRow[\'latest_delivery_session_attended_date\'];\n\n    // 2. Helper function to format each section nicely\n    const formatLine = (label, dateVal) => {\n      if (!dateVal) return `**${label}** - None`; // Handle missing dates\n      \n      const formattedDate = moment(dateVal).format("D MMM YYYY");\n      const daysAgo = moment().diff(dateVal, \'days\');\n      \n      // Returns: "**Coaching** - 27 Jun 2025 \\n (157 days ago)"\n      return `**${label}** - ${formattedDate}\\n(${daysAgo} days ago)`;\n    };\n\n    // 3. Generate the text for both\n    const coachText = formatLine("Coaching", coachDate);\n    const delivText = formatLine("Delivery", delivDate);\n\n    // 4. Combine them with a double newline for spacing\n    return `${coachText}\\n\\n${delivText}`;\n  })()\n}}'
        }
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{ automaticColors: false, color: "" }}
        groupAggregationMode="none"
        label="Latest Attendance"
        placeholder="Select option"
        position="center"
        referenceId="latestAttendance"
        size={122}
        valueOverride={
          "{{\n  (() => {\n    // 1. Access the specific flattened keys using bracket notation\n    const coachDate = currentSourceRow['latest_coaching_session_attended_date'];\n    const delivDate = currentSourceRow['latest_delivery_session_attended_date'];\n\n    // 2. Safety check: If both are missing, return \"None\"\n    if (!coachDate && !delivDate) return \"None\";\n\n    // 3. Convert to Moment objects (using a very old date as a fallback for nulls)\n    const mCoach = coachDate ? moment(coachDate) : moment('1900-01-01');\n    const mDeliv = delivDate ? moment(delivDate) : moment('1900-01-01');\n\n    // 4. Find the most recent date\n    const latest = moment.max(mCoach, mDeliv);\n\n    // 5. Calculate diff and return string\n    return moment().diff(latest, 'days') + \" days ago\";\n  })()\n}}"
        }
      />
      <Column
        id="52c75"
        alignment="left"
        cellTooltip={
          "{{ \n  currentSourceRow['otj_pct_actual_vs_target_to_date'] \n  ? currentSourceRow['otj_pct_actual_vs_target_to_date'] + \"%\" \n  : \"\" \n}}"
        }
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{\n  (() => {\n    // 1. Get the raw percentage value directly from the row data\n    const rawPct = currentSourceRow['otj_pct_actual_vs_target_to_date'];\n\n    // 2. Safety Check: If data is missing (null or empty), return default (no color)\n    if (rawPct == null || rawPct === \"\") {\n        return ''; \n    }\n\n    // 3. Parse to a number\n    const pct = parseFloat(rawPct);\n\n    // 4. Apply Logic\n    // If greater than 90 -> Green\n    if (pct > 90) {\n      return '#C8E6C9'; \n    } \n    \n    // If 90 or below -> Red (using the hex from your example)\n    return '#FFDDC1'; \n  })()\n}}",
        }}
        groupAggregationMode="none"
        label="OTJ"
        placeholder="Select option"
        position="center"
        referenceId="otj"
        size={112}
        valueOverride={
          '{{\n  (function() {\n    // 1. SETUP: Get raw values\n    const rawPct = currentSourceRow[\'otj_pct_actual_vs_target_to_date\'];\n\n    // If no percentage data exists (null/empty), return "None"\n    if (rawPct == null || rawPct === "") {\n       return "None";\n    }\n\n    const percentRaw = parseFloat(rawPct);\n    const actual = parseFloat(currentSourceRow[\'otj_submitted_hours_to_date\'] || 0);\n\n    // Guardrail: If percent is 0, return "None" to avoid division errors\n    if (percentRaw === 0) {\n        return "None";\n    }\n\n    // 2. MATH: Calculate Expected\n    // Formula: Actual / (Percent / 100)\n    const expected = actual / (percentRaw / 100);\n\n    // 3. LOGIC: Calculate Difference\n    const diff = actual - expected;\n    \n    // We get the absolute difference rounded to 0 decimal places\n    const absDiff = Math.abs(diff).toFixed(0);\n\n    // 4. OUTPUT: Generate Tag Text\n    \n    // NEW RULE: If difference is 0 (Actual matches Expected), return "On target"\n    // Note: We use == 0 because absDiff is a string from toFixed()\n    if (absDiff == 0) {\n        return "On target";\n    }\n\n    // Define unit (hr vs hrs)\n    const unit = absDiff === \'1\' ? \'hr\' : \'hrs\';\n\n    // Handle Ahead vs Behind\n    if (diff > 0) {\n         return `${absDiff} ${unit} ahead`;\n    } else {\n         return `${absDiff} ${unit} behind`;\n    }\n  })()\n}}'
        }
      />
      <Column
        id="54a60"
        alignment="left"
        cellTooltip={
          '{{\n  (() => {\n    // 1. Get the raw date using the specific key\n    const rawDate = currentSourceRow[\'latest_progress_review_completed_date\'];\n\n    // 2. Format it if it exists\n    if (rawDate) {\n       return "Last Progress Review: " + moment(rawDate).format("D MMM YYYY");\n    }\n    \n    // 3. Fallback text\n    return "No progress review recorded";\n  })()\n}}'
        }
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="none"
        key="latest_progress_review_completed_date"
        label="Last Progress Review"
        placeholder="Select option"
        position="center"
        size={146}
        summaryAggregationMode="none"
        valueOverride={
          '{{ item ? moment().diff(item, \'days\') + " days ago" : "No PRs yet" }}'
        }
      />
      <Column
        id="7ea5b"
        alignment="left"
        cellTooltipMode="overflow"
        editableOptions={{ spellCheck: false }}
        format="html"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        label="Functional Skills"
        optionList={{
          mode: "manual",
          mappedData: "{{ my_learners_query2.data }}",
          valueByIndex:
            "{{ \n  \"Eng: \" + (currentSourceRow['gh_apprenticeship.apprenticeship_latest_functional_skills_english_status'] || '-') + \n  \"\\nMat: \" + (currentSourceRow['gh_apprenticeship.apprenticeship_latest_functional_skills_maths_status'] || '-') \n}}",
          labelByIndex: '{{ item["gh_apprenticeship.learner_full_name"] }}',
        }}
        placeholder="Select option"
        position="center"
        referenceId="functionalSkills"
        size={209.453125}
        valueOverride={
          "{{ \n  (() => {\n    // 1. PALE COLORS\n    const colorMap = {\n      'Opt Out': '#FFEBEE',          \n      'On-Programme': '#E8F5E9',     \n      'Decision Pending': '#FFFDE7', \n      'Withdrawn': '#FAFAFA'         \n    };\n\n    // 2. GET DATA\n    const eng = currentSourceRow['latest_functional_skills_english_status'];\n    const math = currentSourceRow['latest_functional_skills_maths_status'];\n\n    // 3. CREATE TAG\n    const createTag = (label, value) => {\n      if (!value) return ''; \n      \n      const bg = colorMap[value] || '#F5F5F5'; \n      \n      // LOGIC: Show 'Pending' if the value is 'Decision Pending', otherwise show original value\n      const showText = (value === 'Decision Pending') ? 'Pending' : value;\n\n      return `\n        <span style=\"\n          background-color: ${bg}; \n          color: #263238; \n          padding: 4px 10px; \n          border-radius: 12px; \n          font-size: 11px; \n          font-weight: 600; \n          display: inline-block; \n          margin-right: 4px; \n          margin-bottom: 4px;\n          border: 1px solid rgba(0,0,0,0.1);\n        \">\n          ${label}: ${showText}\n        </span>`;\n    };\n\n    // 4. RETURN\n    return createTag('Eng', eng) + createTag('Math', math);\n  })()\n}}"
        }
      />
      <Column
        id="96703"
        alignment="left"
        cellTooltip={
          "{{\n  (() => {\n    const daysOnProg = currentSourceRow['latest_days_on_programme'];\n    return daysOnProg ? `Days on programme: ${daysOnProg}` : \"\";\n  })()\n}}"
        }
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{\n  (() => {\n    const date = currentSourceRow['gateway_date'];\n    const daysOnProg = currentSourceRow['latest_days_on_programme'];\n\n    // 1. If Gateway IS booked -> Grey\n    if (date) return '#F5F5F5'; \n\n    // 2. If NOT booked (\"No\"), check Days on Programme\n    // Safety check for empty values\n    if (!daysOnProg) return '#F5F5F5'; \n\n    // Timeframe Logic (Assuming ~30 days per month)\n    if (daysOnProg < 90) {\n       return '#F5F5F5'; // Grey (< 3 months)\n    } else if (daysOnProg < 150) {\n       return '#FFF59D'; // Yellow (3 - 4.9 months)\n    } else {\n       return '#FFDDC1'; // Red (5+ months / >150 days)\n    }\n  })()\n}}",
        }}
        groupAggregationMode="none"
        key="gateway_date"
        label="Gateway Booked"
        placeholder="Select option"
        position="center"
        referenceId="gatewayBooked"
        size={195}
        summaryAggregationMode="none"
        valueOverride={
          '{{\n  (() => {\n    // Access the gateway date\n    const date = item[\'gateway_date\'];\n\n    // Format output\n    if (date) {\n      return `Gateway Booked (${moment(date).format("D MMM YYYY")})`;\n    } else {\n      return "No";\n    }\n  })()\n}}'
        }
      />
      <Column
        id="a9be8"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="cohort_name"
        label="Cohort"
        placeholder="Enter value"
        position="center"
        size={226.59375}
        summaryAggregationMode="none"
      />
      <Column
        id="dadf9"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="company_name"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={186.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="27266"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        key="latest_status"
        label="Status"
        placeholder="Enter value"
        position="center"
        size={123.03125}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="ba9ed"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="161e514b"
          event="clickToolbar"
          method="refresh"
          pluginId="learner_table_2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        id="d4275425"
        event="doubleClickRow"
        method="openPage"
        params={{
          options: {
            passDataWith: "urlParams",
            queryParams: [
              { key: "UserID", value: "{{ currentSourceRow.learner_email }}" },
            ],
          },
          pageName: "indvidual_learner_view",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="22ec3873"
        event="doubleClickRow"
        method="setValue"
        params={{ map: { value: "{{ currentSourceRow }}" } }}
        pluginId="selected_user"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</Screen>
