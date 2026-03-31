<Screen
  id="coach_admin"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={10}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="a57f2ccc-a434-4082-b473-8cba8d0a09b4"
>
  <RESTQuery
    id="addNewCoach"
    body={
      '[{"key":"effective_from","value":"{{ addCoachModal_effective_from.value.slice(0,10)}}"},{"key":"role_type","value":"{{ addCoachModal_role_type.value }}"},{"key":"status_type","value":"{{ addCoachModal_status_type.value }}"},{"key":"pod","value":"{{  addCoachModal_pod.value }}"},{"key":"delivery_manager_id","value":"{{  addCoachModal_delivery_manager.value }}"},{"key":"senior_manager_id","value":"{{  addCoachModal_senior_manager.value }}"},{"key":"is_senior_executive","value":"{{  addCoachModal_is_senior_executive.value }}"},{"key":"max_learner_caseload","value":"{{  addCoachModal_max_learner_caseload.value }}"},{"key":"max_cohort_caseload","value":"{{ addCoachModal_max_cohort_caseload.value }}"}]'
    }
    bodyType="json"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/coach/{{ addCoachModal_coach.value }}/history"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    type="POST"
  >
    <Event
      id="e3d32aac"
      event="success"
      method="refresh"
      params={{}}
      pluginId="coachTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="9bcd78d9"
      event="success"
      method="hide"
      params={{}}
      pluginId="addCoachModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="20571c5d"
      event="success"
      method="setHidden"
      params={{}}
      pluginId="addCoachModal_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="d607ab9f"
      event="success"
      method="invalidateCache"
      params={{}}
      pluginId="allCoaches"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="02bb1a43"
      event="success"
      method="invalidateCache"
      params={{}}
      pluginId="get_coaches_list"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="2856f7df"
      event="failure"
      method="setValue"
      params={{ map: { value: "error" } }}
      pluginId="addCoachModal_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="d9c4b395"
      event="failure"
      method="setHidden"
      params={{ map: { hidden: false } }}
      pluginId="addCoachModal_alert"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <Include src="./addCoachModal.rsx" />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text id="text400" value="### Coach Management" verticalAlign="center" />
    <TextInput
      id="coachSettingsTableSearch"
      label="Search"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Button
      id="button23"
      iconBefore="bold/interface-add-circle"
      text="Add Coach"
    >
      <Event
        id="12102df6"
        event="click"
        method="show"
        params={{}}
        pluginId="addCoachModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="23bc3077"
        event="click"
        method="trigger"
        params={{}}
        pluginId="employees"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Table
      id="coachTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ allCoaches.data }}"
      defaultFilters={{
        0: { columnId: "", operator: "includes", value: "", id: "f3742" },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "data", index: 0 }}
      defaultSort={[{ object: { columnId: "c518e", direction: "asc" } }]}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      hasNextPage="{{ _.last(allCoaches.data.next_page) != undefined }}"
      nextAfterCursor="{{ _.last(allCoaches.data.next_page) }}"
      overflowType="pagination"
      primaryKeyColumnId="19f50"
      rowHeight="small"
      searchTerm="{{ coachSettingsTableSearch.value }}"
      serverPaginationType="forwardCursorBased"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ border: "#ebdfdf", rowSeparator: "#ebdfdf" }}
      templatePageSize="50"
      toolbarPosition="bottom"
    >
      <Column
        id="3670f"
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
        referenceId="edit_button"
        size={100}
        valueOverride="Edit"
      >
        <Event
          id="d8637edf"
          event="clickCell"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [{ key: "coach", value: "{{ currentRow.id }}" }],
            },
            pageName: "coach_admin_edit",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="c518e"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="coach"
        label="Coach"
        placeholder="Enter value"
        position="left"
        referenceId="coach_name"
        size={134}
        valueOverride="{{  item.preferred_name || item.first_name }} {{  item.last_name }}"
      />
      <Column
        id="19f50"
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
      />
      <Column
        id="6d215"
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
        valueOverride="{{
  coachStatusTypes.value[item] || item
}}"
      />
      <Column
        id="3b460"
        alignment="center"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="role_type"
        label="Role"
        placeholder="Select option"
        position="center"
        size={125}
        valueOverride="{{ 
  coachRoleTypes.value[item] || item
}}"
      />
      <Column
        id="49442"
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
        valueOverride="{{ 
  coachPods.value[item] || item
}}"
      />
      <Column
        id="304c2"
        alignment="center"
        editableOptions={{ spellCheck: false }}
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="designated_programme_types"
        label="Programmes"
        placeholder="Select options"
        position="center"
        referenceId="designated_programmes"
        size={100}
      />
      <Column
        id="8b612"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="delivery_manager"
        label="Delivery Manager"
        placeholder="Enter value"
        position="center"
        referenceId="delivery_manager_name"
        size={125}
        valueOverride="{{  item.preferred_name || item.first_name }} {{  item.last_name }}"
      />
      <Column
        id="28b88"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="senior_manager"
        label="Senior Manager"
        placeholder="Enter value"
        position="center"
        referenceId="senior_nanager"
        size={124}
        valueOverride="{{  item.preferred_name || item.first_name }} {{  item.last_name }}"
      />
      <Column
        id="c7c33"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="multilineString"
        groupAggregationMode="none"
        key="notes"
        label="Notes"
        placeholder="Enter value"
        position="center"
        referenceId="notes"
        size={272}
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
          id="43ede13e"
          event="clickToolbar"
          method="exportData"
          pluginId="coachTable"
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
          id="48a0c97f"
          event="clickToolbar"
          method="refresh"
          pluginId="coachTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
