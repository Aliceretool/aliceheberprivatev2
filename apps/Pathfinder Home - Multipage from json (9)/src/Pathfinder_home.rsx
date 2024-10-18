<Screen
  id="Pathfinder_home"
  _hashParams={[]}
  _searchParams={[]}
  title="Pathfinder Home"
  urlSlug=""
>
  <Folder id="projects">
    <SqlQueryUnified
      id="getProjects"
      query={include("../lib/getProjects.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      warningCodes={[]}
    />
    <State id="projectCAPA" value="'ba8cd1b9-bee0-40f7-beb3-379cb8e43f61'" />
    <State id="projectDVR" value="'cb96a209-1aa7-49'" />
    <State id="projectTasks" value="'ac347935-ad6f-4413-939f-aaad8a99c6db'" />
    <State id="projectCRF" value="'a026255a-3934-4889-8712-63348dac8d74'" />
    <State id="projectANL" value="'880b1d9f-4758-4643-9b37-94939833048f'" />
  </Folder>
  <Folder id="parameter">
    <SqlQueryUnified
      id="getParameter"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getParameter.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getIssueOverTime"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getIssueOverTime.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getIssueOverTime_PerProject"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getIssueOverTime_PerProject.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getIssueOverTime_PerProject2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getIssueOverTime_PerProject2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="exelcis_Email">
    <SMTPQuery
      id="postEmail_UserPermission"
      body="Dear System Administrator,
{{current_user.fullName}} ({{current_user.email}}) has logged into the {{retoolContext.environment}}  {{retoolContext.appName}} application but does not have their reach level security configured.

Please configure their reach level security and send them an email when complete."
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fromEmail="pathfinder@exelcis.com"
      replyToEmail="pathfinder@exelcis.com"
      resourceName="de698f27-23bd-4709-9bf2-c550286e1e10"
      resourceTypeOverride=""
      showReplyTo={true}
      showSuccessToaster={false}
      subject="{{current_user.email}} Needs User Permissions in Pathfinder"
      toEmail="{{getParameter.data.ClientAdminEmail['0']}}"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUser_filteredUser"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getUser_filteredUser.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insUser"
      actionType="INSERT"
      changeset={
        '[{"key":"userId","value":"{{uuid.v4()}}"},{"key":"email","value":"{{current_user.email}}"},{"key":"firstName","value":"{{current_user.firstName}}"},{"key":"lastName","value":"{{current_user.lastName}}"},{"key":"addedOn","value":"{{moment()}}"},{"key":"addedBy","value":"{{current_user.email}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="user"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="postEmail_UserPermission"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getUsers"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getUsers.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <SqlQueryUnified
    id="getOpenDVR"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getOpenDVR.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getOpenCAPA"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getOpenCAPA.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getOpenCRF"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getOpenCRF.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getOpenAll_CurrentUser"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getOpenAll_CurrentUser.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="transformer1"
    funcBody={include("../lib/transformer1.js", "string")}
  />
  <Function
    id="transformer2"
    funcBody={include("../lib/transformer2.js", "string")}
  />
  <SqlQueryUnified
    id="count_per_proj"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={null}
    query={include("../lib/count_per_proj.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="transformer3"
    funcBody={include("../lib/transformer3.js", "string")}
  />
  <Function
    id="transformer4"
    funcBody={include("../lib/transformer4.js", "string")}
  />
  <SqlQueryUnified
    id="query10"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={null}
    query={include("../lib/query10.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query11"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/query11.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="transformer5"
    funcBody={include("../lib/transformer5.js", "string")}
  />
  <SqlQueryUnified
    id="getOpenAll_by_Type"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getOpenAll_by_Type.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getCountperProject"
    isMultiplayerEdited={false}
    notificationDuration={null}
    query={include("../lib/getCountperProject.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <connectResource id="query809" _componentId={null} />
  <Include src="./drawerFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    style={{ ordered: [] }}
    type="main"
  >
    <Text
      id="text1"
      hidden="{{getUser_filteredUser.data.email.length > 0}}"
      horizontalAlign="center"
      marginType="normal"
      style={{ ordered: [{ color: "warning" }] }}
      value="{{i18n.t('Welcome to the Pathfinder application!  You do not have any user level reach security configured at this time.  Please notify your administrator so they can configure your user appropriately.')}}"
      verticalAlign="center"
    />
    <Button
      id="button1"
      hidden="{{getUser_filteredUser.data.email.length > 0}}"
      marginType="normal"
      text="{{i18n.t('Notify Administrator')}}"
      tooltipText="{{i18n.t('It appears you do not have any user permissions enabled. Please click this button to notify your adminstrator so they can finish setting up your permissions.')}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insUser"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text2"
      marginType="normal"
      value="### {{i18n.t('Welcome to Pathfinder')}}, {{ current_user.firstName || i18n.t('friend') }} 👋"
      verticalAlign="center"
    />
    <Spacer id="spacer6" marginType="normal" />
    <ListViewBeta
      id="listView1"
      data="{{ getCountperProject.data }}"
      direction="horizontal"
      itemWidth="120px"
      layoutType="grid"
      margin="0"
      maxHeight="100vh"
      numColumns="9"
      padding="0"
    >
      <Container
        id="container1"
        _gap="0"
        _justify="center"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        overflowType="hidden"
        padding="0"
        showBody={true}
        showBorder={false}
        showHeader={true}
        style={{ ordered: [] }}
      >
        <Header>
          <Text
            id="containerTitle6"
            horizontalAlign="center"
            tooltipText="{{ item.project_value }}"
            value="##### {{ i18n.t(item.projectCode) }}"
            verticalAlign="center"
          />
        </Header>
        <View id="ea2fa" viewKey="View 1">
          <Text
            id="text7"
            horizontalAlign="center"
            value="#### {{ item.NumberofIssues}}"
            verticalAlign="center"
          />
        </View>
      </Container>
    </ListViewBeta>
    <Include src="./linkCard4.rsx" />
    <Include src="./linkCard2.rsx" />
    <Include src="./linkCard3.rsx" />
    <Include src="./linkCard1.rsx" />
    <Spacer id="spacer9" />
    <PlotlyChart
      id="chart5"
      chartType="line"
      data={include("../lib/chart5.data.json", "string")}
      datasourceInputMode="javascript"
      datasourceJS="{{getIssueOverTime.data}}"
      isDataTemplateDirty={true}
      isJsonTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart5.layout.json", "string")}
      skipDatasourceUpdate={true}
    />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getOpenAll_CurrentUser.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="a3b1c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="issue_index"
        label="Issue index"
        placeholder="Enter value"
        position="center"
        size={84}
        summaryAggregationMode="none"
      />
      <Column
        id="82020"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_type_value"
        label="Project type value"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c5bfd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status_value"
        label="Status value"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7b5b2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="Issue id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8f79c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="issue"
        label="Issue"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9fdee"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="due_date"
        label="Due date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="66c92"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="responsible_department_value"
        label="Responsible department value"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d3a78"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="assigned_to"
        label="Assigned to"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="168af"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="project_value"
        label="Project value"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4adcb"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
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
          pluginId="table2"
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
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <PlotlyChart
      id="chart2"
      dataseries={{
        ordered: [
          {
            1: {
              ordered: [
                { label: "No of open issues" },
                {
                  datasource:
                    "{{formatDataAsObject( transformer2.value )['project_type']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
                { colors: { ordered: [] } },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{getOpenAll_CurrentUser.data}}"
      events={[
        {
          ordered: [
            { event: "select" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "getOpenAll_CurrentUser" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      groupByDropdown={null}
      isDataTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart2.layout.json", "string")}
      margin="4px 8px"
      shouldShowLegend={false}
      skipDatasourceUpdate={true}
      title="By Department"
      xAxis="{{getOpenAll_CurrentUser.data['responsible_department_value']}}"
      xAxisDropdown="responsible_department_value"
    />
    <PlotlyChart
      id="chart6"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "COUNT(*)" },
                { datasource: "{{ transformer3.value ['COUNT(*)']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 0: "#1E3A8A" },
                      { 1: "#3170F9" },
                      { 2: "#60A5FA" },
                      { 3: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 5: "#F59E0B" },
                      { 6: "#CD6F00" },
                      { 7: "#92400E" },
                    ],
                  },
                },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{ transformer3.value }}"
      events={[
        {
          ordered: [
            { event: "select" },
            { type: "widget" },
            { method: "clearSelectedPoints" },
            { pluginId: "chart2" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      groupByDropdown="project_value"
      groupByJS="{{ transformer3.value ['project_value']}}"
      isDataTemplateDirty={true}
      shouldShowLegend={false}
      skipDatasourceUpdate={true}
      xAxis="{{ transformer3.value ['project_value']}}"
      xAxisDropdown="project_value"
    />
    <Module
      id="globalSearch1"
      input2=""
      margin="4px 8px"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE=""
    />
    <Spacer id="spacer7" marginType="normal" />
    <TextInput
      id="table1SearchFilter"
      hidden="true"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Search in table"
      value=" "
    />
    <DateRange
      id="dateRange1"
      dateFormat="dd MMM, yyyy"
      endPlaceholder="End date"
      hidden="true"
      iconBefore="bold/interface-calendar-remove"
      label=""
      labelPosition="top"
      marginType="normal"
      startPlaceholder="Start date"
      textBetween="-"
      tooltipText="Due Date"
      value={{ ordered: [{ start: "" }, { end: "" }] }}
    />
    <Table
      id="table1"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getOpenAll_CurrentUser.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      hidden="true"
      overflowType="pagination"
      primaryKeyColumnId="b1d13"
      searchTerm="{{ table1SearchFilter.value }}"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="50"
      toolbarPosition="bottom"
    >
      <Column
        id="dde5f"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        key="issue_index"
        label="{{i18n.t('Issue No.')}}"
        placeholder="Enter value"
        position="center"
        size={76.53125}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ currentSourceRow.app_path}}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="c7384"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_value"
        label="{{i18n.t('Project')}}"
        placeholder="Select option"
        position="center"
        size={64.65625}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(_.startCase(item) )}}"
      />
      <Column
        id="83173"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="issue"
        label="{{i18n.t('Summary')}}"
        placeholder="Enter value"
        position="center"
        size={424.171875}
        summaryAggregationMode="none"
      />
      <Column
        id="cee57"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_type_value"
        label="{{i18n.t('Type')}}"
        placeholder="Select option"
        position="center"
        size={156.859375}
        summaryAggregationMode="none"
        valueOverride="{{i18n.t(_.startCase(item)) }}"
      />
      <Column
        id="a0711"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status_value"
        label="{{i18n.t('Status')}}"
        placeholder="Select option"
        position="center"
        size={78.1875}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(_.startCase(item))}}"
      />
      <Column
        id="b1d13"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="Issue id"
        placeholder="Enter value"
        position="center"
        size={282.1875}
      />
      <Column
        id="d45fb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="responsible_department_value"
        label="{{i18n.t('Responsible department')}}"
        placeholder="Enter value"
        position="center"
        size={185.4375}
        summaryAggregationMode="none"
      />
      <Column
        id="64e86"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="{{i18n.t('Reporter')}}"
        placeholder="Enter value"
        position="center"
        referenceId="resporter"
        size={75.5}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.reporter_firstname}} {{currentSourceRow.reporter_lastName}}"
      />
      <Column
        id="c03c2"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd MMM, yyyy" }}
        groupAggregationMode="none"
        key="created_at"
        label="{{i18n.t('Created')}}"
        placeholder="Enter value"
        position="center"
        size={94.640625}
        summaryAggregationMode="none"
      />
      <Column
        id="1fb98"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd MMM, yyyy" }}
        groupAggregationMode="none"
        key="due_date"
        label="{{i18n.t('Due date')}}"
        placeholder="Enter value"
        position="center"
        size={94.640625}
        summaryAggregationMode="none"
      />
      <Column
        id="b556f"
        alignment="left"
        format="avatar"
        formatOptions={{ image: "{{currentSourceRow.avatarURL}}" }}
        groupAggregationMode="none"
        label="{{i18n.t('Assignee')}}"
        placeholder="No user"
        position="center"
        referenceId="i18NTAssignee"
        size={88.4375}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <PlotlyChart
      id="chart3"
      chartType="line"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "COUNT" },
                { datasource: "{{ transformer5.value ['COUNT']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "Dataseries 1" },
                { datasource: "{{ transformer5.value}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#3170F9" },
                { visible: false },
                { colors: { ordered: [] } },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{ transformer5.value }}"
      groupByDropdown="project_value"
      groupByJS="{{ transformer5.value ['project_value']}}"
      hidden="true"
      isDataTemplateDirty={true}
      skipDatasourceUpdate={true}
      title=" {{dateRange1.value.start}} to  {{dateRange1.value.end}}"
      xAxis="{{ transformer5.value ['project_value']}}"
      xAxisDropdown="project_value"
    />
    <Chart
      id="lineChart1"
      barMode="group"
      chartType="line"
      colorArray={null}
      legendPosition="none"
      selectedPoints="[]"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowLine={true}
      xAxisShowTickLabels={true}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
    >
      <Series
        id="0"
        aggregationType="sum"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getIssue15.data }}"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        groupBy={{ array: [] }}
        groupByDropdownType="manual"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="manual"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="spline"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Primary"
        showMarkers={false}
        textTemplate="%{y}"
        textTemplateMode="manual"
        type="line"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{getIssueOverTime_PerProject2.data.year_week}}"
        yAxis="y"
        yData=" {{getIssueOverTime_PerProject2.data['count']}}"
        zData={null}
      />
    </Chart>
  </Frame>
</Screen>
