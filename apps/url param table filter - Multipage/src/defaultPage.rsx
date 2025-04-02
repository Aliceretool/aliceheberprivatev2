<Screen
  id="defaultPage"
  _hashParams={[
    { ordered: [{ key: "table_filter" }, { value: "{{select1.value}}" }] },
  ]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <Folder id="oldQueries">
    <SqlQueryUnified
      id="query3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/query3.sql", "string")}
      resourceDisplayName="Retool DB"
      resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessConfetti={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      triggersOnFailure={[]}
      triggersOnSuccess={[]}
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="query2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/query2.sql", "string")}
      resourceDisplayName="Retool DB"
      resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessConfetti={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      triggersOnFailure={[]}
      triggersOnSuccess={[]}
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="triggerTargetQuery"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/triggerTargetQuery.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showSuccessConfetti={false}
      showUpdateSetValueDynamicallyToggle={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      triggersOnFailure={[]}
      triggersOnSuccess={[]}
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <Function
      id="transformer1"
      funcBody={include("../lib/transformer1.js", "string")}
    />
    <SqlTransformQuery
      id="watchForTabChange"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/watchForTabChange.sql", "string")}
      queryFailureConditions="[]"
      resourceName="SQL Transforms"
      showSuccessConfetti={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      triggersOnFailure={[]}
      triggersOnSuccess={["triggerTargetQuery"]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="triggerTargetQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlTransformQuery>
  </Folder>
  <SqlQueryUnified
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    resourceTypeOverride=""
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query4"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/query4.sql", "string")}
    resourceDisplayName="Retool DB"
    resourceName="9d052a87-5727-41ac-bb18-caacc0d05b90"
    resourceTypeOverride=""
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Frame id="$main" padding="8px 12px" type="main">
    <TabbedContainerWidget
      id="tabbedcontainer1"
      events={[
        {
          ordered: [
            { event: "change" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "watchForTabChange" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      selectedTab=""
      tabNames="['one', 'two', 'three']"
    >
      <TableLegacy
        id="table2"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "month",
          "project_status",
          "market_size",
          "project_id",
          "project_type",
          "created_at",
          "updated_at",
        ]}
        _columnVisibility={{
          ordered: [
            { project_type: true },
            { month: true },
            { project_id: true },
            { market_size: true },
            { created_at: true },
            { name: true },
            { sales: true },
            { updated_at: true },
            { project_status: true },
            { id: true },
            { email: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnColors={{
          ordered: [
            { project_type: "" },
            { month: "" },
            { project_id: "" },
            { market_size: "" },
            { created_at: "" },
            { updated_at: "" },
            { project_status: "" },
            { id: "" },
            { email: "" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "month",
          "project_status",
          "market_size",
          "project_id",
          "project_type",
          "created_at",
          "updated_at",
        ]}
        columnVisibility={{
          ordered: [
            { project_type: true },
            { month: true },
            { project_id: true },
            { market_size: true },
            { created_at: true },
            { name: true },
            { sales: true },
            { updated_at: true },
            { project_status: true },
            { id: true },
            { email: true },
          ],
        }}
        customButtonName=""
        data="{{query2.data}}"
        pageSize={5}
        showColumnBorders={true}
      />
      <TableLegacy
        id="table3"
        _columns={["id", "name", "email", "sales"]}
        _columnVisibility={{
          ordered: [
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnColors={{ ordered: [{ id: "" }] }}
        columns={["id", "name", "email", "sales"]}
        columnVisibility={{
          ordered: [
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
          ],
        }}
        customButtonName=""
        data="{{query3.data}}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "query3" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={5}
        showColumnBorders={true}
      />
      <TableLegacy
        id="table1"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "actor_id",
          "first_name",
          "last_name",
          "last_update",
          "$0",
        ]}
        _columnVisibility={{
          ordered: [
            { actor_id: true },
            { name: true },
            { $0: true },
            { sales: true },
            { last_update: true },
            { last_name: true },
            { first_name: true },
            { id: true },
            { email: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        applyDynamicSettingsToColumnOrder={false}
        checkboxRowSelect={false}
        columnColors={{
          ordered: [
            { actor_id: "" },
            { boolean: "" },
            { name: "" },
            { $0: "" },
            { useremail: "" },
            { last_update: "" },
            { department: "" },
            { last_name: "" },
            { newcolumn: "" },
            { tags: "" },
            { first_name: "" },
            { id: "" },
            { age: "" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "actor_id",
          "first_name",
          "last_name",
          "last_update",
          "$0",
        ]}
        columnVisibility={{
          ordered: [
            { actor_id: true },
            { name: true },
            { $0: true },
            { sales: true },
            { last_update: true },
            { last_name: true },
            { first_name: true },
            { id: true },
            { email: true },
          ],
        }}
        customButtonName=""
        data="{{query1.data}}"
        pageSize={5}
        showColumnBorders={true}
      />
    </TabbedContainerWidget>
    <Select
      id="select1"
      captionByIndex=""
      data="{{ query1.data }}"
      emptyMessage="No options"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{urlparams.hash.table_filter}}"
      values="{{ item.name }}"
    />
    <Table
      id="table4"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query4.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="50a29"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="50a29"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={28.5}
        summaryAggregationMode="none"
      />
      <Column
        id="c5d7a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={50.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="10e58"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="age"
        label="Age"
        placeholder="Enter value"
        position="center"
        size={38.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="4a53f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="department"
        label="Department"
        placeholder="Enter value"
        position="center"
        size={86.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="c08f1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="useremail"
        label="Useremail"
        placeholder="Enter value"
        position="center"
        size={113.515625}
        summaryAggregationMode="none"
      />
      <Column
        id="b799a"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="boolean"
        label="Boolean"
        placeholder="Enter value"
        position="center"
        size={63.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="31f3a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="newcolumn"
        label="Newcolumn"
        placeholder="Enter value"
        position="center"
        size={85.015625}
        summaryAggregationMode="none"
      />
      <Column
        id="06209"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="tags"
        label="Tags"
        placeholder="Enter value"
        position="center"
        size={43.8125}
        summaryAggregationMode="none"
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
          event="clickToolbar"
          method="exportData"
          pluginId="table4"
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
          event="clickToolbar"
          method="refresh"
          pluginId="table4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
