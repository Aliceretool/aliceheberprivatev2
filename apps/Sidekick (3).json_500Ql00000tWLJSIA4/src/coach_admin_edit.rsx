<Screen
  id="coach_admin_edit"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={11}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="6efd5951-e24c-4c2b-9f9a-a61cb3ca6afa"
>
  <RESTQuery
    id="getCoachHistory"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/coach/{{ url.searchParams.coach}}/history"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data.items"
  />
  <RESTQuery
    id="addCoachHistory"
    body={
      '[{"key":"effective_from","value":"{{ addCoachHistoryModal_effective_from.value }}"},{"key":"role_type","value":"{{ addCoachHistoryModal_role.value }}"},{"key":"status_type","value":"{{ addCoachHistoryModal_status.value }}"},{"key":"pod","value":"{{ addCoachHistoryModal_pod.value }}"},{"key":"delivery_manager_id","value":"{{ addCoachHistoryModal_delivery_manager.value }}"},{"key":"senior_manager_id","value":"{{ addCoachHistoryModal_senior_manager.value }}"},{"key":"is_senior_executive","value":"{{ addCoachHistoryModal_is_senior_executive.value }}"},{"key":"max_learner_caseload","value":"{{ addCoachHistoryModal_max_learner_caseload.value }}"},{"key":"max_cohort_caseload","value":"{{ addCoachHistoryModal_max_cohort_caseload.value }}"}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/coach/{{ url.searchParams.coach }}/history"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    successMessage="Coach history added"
    type="POST"
  >
    <Event
      id="97273846"
      event="success"
      method="hide"
      params={{}}
      pluginId="addCoachHistoryModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="edc505aa"
      event="success"
      method="refresh"
      params={{}}
      pluginId="coachHistoryTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="dcbba9a4"
      event="success"
      method="setHidden"
      params={{}}
      pluginId="addCoachHistory_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="c52e8b74"
      event="success"
      method="invalidateCache"
      params={{}}
      pluginId="get_coaches_list"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="7c8bf4d4"
      event="success"
      method="invalidateCache"
      params={{}}
      pluginId="allCoaches"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="cda3ad3c"
      event="failure"
      method="setValue"
      params={{ map: { value: "error" } }}
      pluginId="addCoachHistory_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="e4cc2819"
      event="failure"
      method="setHidden"
      params={{ map: { hidden: false } }}
      pluginId="addCoachHistory_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="editCoachHistory"
    body={
      '[{"key":"effective_from","value":"{{ editCoachHistoryModal_effective_from.value }}"},{"key":"role_type","value":"{{ editCoachHistoryModal_role.value }}"},{"key":"status_type","value":"{{ editCoachHistoryModal_status.value }}"},{"key":"pod","value":"{{ editCoachHistoryModal_pod.value }}"},{"key":"delivery_manager_id","value":"{{ editCoachHistoryModal_delivery_manager.value }}"},{"key":"senior_manager_id","value":"{{ editCoachHistoryModal_senior_manager.value }}"},{"key":"is_senior_executive","value":"{{ editCoachHistoryModal_is_senior_executive.value }}"},{"key":"max_learner_caseload","value":"{{ editCoachHistoryModal_max_learner_caseload.value }}"},{"key":"max_cohort_caseload","value":"{{ editCoachHistoryModal_max_cohort_caseload.value }}"}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/coach/{{ url.searchParams.coach }}/history/{{ coachHistoryTable.selectedRow.id }}"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    successMessage="Coach history added"
    type="PUT"
  >
    <Event
      id="97273846"
      event="success"
      method="hide"
      params={{}}
      pluginId="editCoachHistoryModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="edc505aa"
      event="success"
      method="refresh"
      params={{}}
      pluginId="coachHistoryTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="6cbf0fae"
      event="success"
      method="setHidden"
      params={{}}
      pluginId="editCoachHistory_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="2902a7d6"
      event="success"
      method="trigger"
      params={{
        map: {
          options: { onSuccess: null, onFailure: null, additionalScope: null },
        },
      }}
      pluginId="getSelectedCoach"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="287f25a0"
      event="success"
      method="invalidateCache"
      params={{}}
      pluginId="allCoaches"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="b5821659"
      event="success"
      method="invalidateCache"
      params={{}}
      pluginId="get_coaches_list"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="cda3ad3c"
      event="failure"
      method="setValue"
      params={{ map: { value: "error" } }}
      pluginId="editCoachHistory_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="e4cc2819"
      event="failure"
      method="setHidden"
      params={{ map: { hidden: false } }}
      pluginId="editCoachHistory_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="getSelectedCoach"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/coach/{{ url.searchParams.coach }}"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <RESTQuery
    id="updateCoachNotes"
    body={'[{"key":"notes","value":"{{ summaryContainer_notes.value }}"}]'}
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/coach/{{ url.searchParams.coach }}"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    type="PATCH"
  />
  <RESTQuery
    id="updateCoachDesignatedProgrammes"
    body={
      '[{"key":"designated_programme_types","value":"{{ summaryContainer_designated_programme.value }}"}]'
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
    query="sidekick/v1/coach/{{ url.searchParams.coach }}"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    type="PATCH"
  />
  <Include src="./addCoachHistoryModal.rsx" />
  <Include src="./editCoachHistoryModal.rsx" />
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Link
      id="backToCoachesLink"
      allowWrap={true}
      ariaLabel=""
      margin="0"
      showUnderline="hover"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      text="< Back to Coach Admin"
    >
      <Event
        id="fa0a7f13"
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "coach_admin",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button
      id="button21"
      iconBefore="bold/interface-share-user"
      style={{ map: { background: "warning" } }}
      text="Impersonate"
    >
      <Event
        id="ae587a33"
        event="click"
        method="setValue"
        params={{ map: { value: "{{ getSelectedCoach.data }}" } }}
        pluginId="impersonate_user"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="coachName"
      margin="0"
      value="## {{ getSelectedCoach.data.coach.preferred_name || getSelectedCoach.data.coach.first_name}} {{ getSelectedCoach.data.coach.last_name }}"
      verticalAlign="center"
    />
    <Container
      id="summaryContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="summaryContainer_title"
          value="#### Summary"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <KeyValue
          id="summaryContainer_deatils"
          data="{{ getSelectedCoach.data }}"
          enableSaveActions={true}
          groupLayout="singleColumn"
          labelWrap={true}
        >
          <Property
            id="id"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true
"
            label="ID"
          />
          <Property
            id="created_at"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Created at"
          />
          <Property
            id="coach"
            editable="false"
            editableOptions={{}}
            format="json"
            formatOptions={{}}
            hidden="true"
            label="Coach"
          />
          <Property
            id="updated_at"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Updated at"
          />
          <Property
            id="deleted_at"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Deleted at"
          />
          <Property
            id="pod"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            hidden="false"
            label="Pod"
            valueOverride="{{ coachPods.value[item] }}"
          />
          <Property
            id="role_type"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            hidden="false"
            label="Role"
            valueOverride="{{ coachRoleTypes.value[item] }}"
          />
          <Property
            id="status_type"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            hidden="false"
            label="Status"
            valueOverride="{{ coachStatusTypes.value[item] }}"
          />
          <Property
            id="effective_from"
            editable="false"
            editableOptions={{}}
            format="date"
            formatOptions={{}}
            hidden="true"
            label="Effective from"
          />
          <Property
            id="designated_programme_types"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Designated programme types"
          />
          <Property
            id="notes"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Notes"
          />
          <Property
            id="delivery_manager"
            editable="false"
            editableOptions={{ spellCheck: false }}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Delivery Manager"
            valueOverride="{{ item.preferred_name || item.first_name }} {{ item.last_name }}"
          />
          <Property
            id="senior_manager"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Senior Manager"
            valueOverride="{{ item.preferred_name || item.first_name }} {{ item.last_name }}"
          />
          <Property
            id="max_learner_caseload"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="false"
            label="Max Learner Caseload"
          />
          <Property
            id="max_cohort_caseload"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="false"
            label="Max Cohort Caseload"
          />
          <Property
            id="is_senior_executive"
            editable="false"
            editableOptions={{}}
            format="boolean"
            formatOptions={{}}
            hidden="false"
            label="Senior Executive"
          />
          <Property
            id="assigned_tableau_licence"
            editable="false"
            editableOptions={{}}
            format="boolean"
            formatOptions={{}}
            hidden="false"
            label="Assigned Tableau Licence"
          />
        </KeyValue>
        <Multiselect
          id="summaryContainer_designated_programme"
          emptyMessage="No options"
          itemMode="static"
          label="Designated Programmes"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          value="{{ getSelectedCoach.data.designated_programme_types }}"
          wrapTags={true}
        >
          <Option id="00030" value="ADF" />
          <Option id="00031" value="AIBV" />
          <Option id="00032" value="DF" />
          <Event
            id="667026cc"
            event="change"
            method="trigger"
            params={{}}
            pluginId="updateCoachDesignatedProgrammes"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Multiselect>
        <TextArea
          id="summaryContainer_notes"
          autoResize={true}
          label="Notes"
          labelPosition="top"
          minLines="5"
          placeholder="Enter value"
          value="{{ getSelectedCoach.data.notes }}"
        >
          <Event
            id="de2eda49"
            event="change"
            method="trigger"
            params={{}}
            pluginId="updateCoachNotes"
            type="datasource"
            waitMs="1000"
            waitType="debounce"
          />
        </TextArea>
      </View>
    </Container>
    <Container
      id="coachHistoryContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="coachHistoryContainer_title"
          value="#### Status"
          verticalAlign="center"
        />
        <Button
          id="addCoachButton"
          iconBefore="bold/interface-add-circle"
          text="Add Coach History"
        >
          <Event
            id="6edd68dc"
            event="click"
            method="show"
            params={{}}
            pluginId="addCoachHistoryModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="30f38fa4"
            event="click"
            method="hide"
            params={{}}
            pluginId="editCoachHistoryModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="0e894747"
            event="click"
            method="trigger"
            params={{}}
            pluginId="employees"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="00030" viewKey="View 1">
        <Table
          id="coachHistoryTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getCoachHistory.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="54d48"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="107a9"
            alignment="left"
            editableOptions={{ spellCheck: false }}
            format="button"
            formatOptions={{
              variant: "outline",
              iconBefore: "bold/interface-edit-write-1",
            }}
            groupAggregationMode="none"
            placeholder="Enter value"
            position="left"
            referenceId="edit"
            size={85}
            summaryAggregationMode="none"
            valueOverride="Edit"
          >
            <Event
              id="55024843"
              event="clickCell"
              method="show"
              params={{}}
              pluginId="editCoachHistoryModal"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="d617961f"
              event="clickCell"
              method="hide"
              params={{}}
              pluginId="addCoachHistoryModal"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              id="3f397381"
              event="clickCell"
              method="trigger"
              params={{}}
              pluginId="employees"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="ee80b"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            key="effective_from"
            label="Effective from"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="79949"
            alignment="center"
            editableOptions={{ spellCheck: false }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status_type"
            label="Status"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{   coachStatusTypes.value[item] || item }}"
          />
          <Column
            id="aca9d"
            alignment="center"
            editableOptions={{ spellCheck: false }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="role_type"
            label="Role"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{  coachRoleTypes.value[item] || item }}"
          />
          <Column
            id="dc96a"
            alignment="center"
            editableOptions={{ spellCheck: false }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="pod"
            label="Pod"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ coachPods.value[item] || item }}"
          />
          <Column
            id="eceee"
            alignment="center"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="max_learner_caseload"
            label="Max Learner Caseload"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="47d2b"
            alignment="center"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="max_cohort_caseload"
            label="Max Cohort Caseload"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="284d0"
            alignment="center"
            format="boolean"
            formatOptions={{
              trueIcon: "bold/interface-validation-check-circle",
              falseIcon: "bold/interface-remove-1",
              trueColor: "#4fbe6f",
            }}
            groupAggregationMode="none"
            key="is_senior_executive"
            label="Senior Exec"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="54d48"
            alignment="left"
            editableOptions={{ spellCheck: false }}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="268d6"
            alignment="left"
            editableOptions={{ spellCheck: false }}
            format="string"
            groupAggregationMode="none"
            key="delivery_manager"
            label="Delivery Manager"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{  item.preferred_name || item.first_name }} {{ item.last_name }}"
          />
          <Column
            id="84faf"
            alignment="left"
            editableOptions={{ spellCheck: false }}
            format="string"
            groupAggregationMode="none"
            key="senior_manager"
            label="Senior Manager"
            placeholder="Enter value"
            position="center"
            referenceId="senior_manager_name"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{  item.preferred_name || item.first_name }} {{ item.last_name }}"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              id="9a6ccc59"
              event="clickToolbar"
              method="exportData"
              pluginId="coachHistoryTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              id="1ce8a706"
              event="clickToolbar"
              method="refresh"
              pluginId="coachHistoryTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Text id="text399" verticalAlign="center" />
  </Frame>
</Screen>
