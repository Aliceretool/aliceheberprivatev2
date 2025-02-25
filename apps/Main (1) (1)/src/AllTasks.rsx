<Screen
  id="AllTasks"
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <Folder id="functions">
    <JavascriptQuery
      id="hideTaskUpdateModalList"
      confirmationMessage="You have unsaved changes. Are you sure you want to proceed with this action?"
      notificationDuration={4.5}
      query={include("../lib/hideTaskUpdateModalList.js", "string")}
      requireConfirmation={true}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="modalTaskOnSubmitHanlder"
      notificationDuration={4.5}
      query={include("../lib/modalTaskOnSubmitHanlder.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="rowDoubleClick"
      _additionalScope={["currentSourceRow"]}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/rowDoubleClick.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="resources">
    <RESTQuery
      id="GetTaskListByFilters"
      body={
        '{\n  "priority_ids": {{ TaskPriority_MultiSelect.value }},\n  "category_ids": {{ TaskCategory_MultiSelect.value }},\n  "status_ids": {{ TaskStatus_MultiSelect.value }},\n}'
      }
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      query="/tasks/list-by-filters"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <State id="taskListElementId" />
  <State id="caseIdOfTask" />
  <Include src="./modalTaskListUpdateElement.rsx" />
  <Frame
    id="$main7"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="16px {{ widthLimiter.value }}px"
    sticky={null}
    style={{ ordered: [{ canvas: "tokens/f5b822b2" }] }}
    type="main"
  >
    <Breadcrumbs
      id="AllCases_Breadcrumbs2"
      itemMode="static"
      margin="0 0 4px 0"
      style={{ ordered: [{ currentPageText: "tokens/37f43149" }] }}
      value="{{ retoolContext.currentPage }}"
    >
      <Option id="794c4" disabled="true" itemType="custom" label="All tasks" />
      <Option id="7492a" itemType="custom" label="Tasks list" />
    </Breadcrumbs>
    <Container
      id="AllTaskFilter_Container"
      footerPadding="4px 12px"
      headerPadding="24px 24px 0 24px"
      margin="0 0 16px 0"
      padding="0 24px 24px 24px"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Container
          id="FilterTasksHeader"
          _align="center"
          _gap="0px"
          _justify="space-between"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <View id="89817" viewKey="View 1">
            <Text
              id="FilterAllTasks_Title"
              style={{
                ordered: [
                  { fontSize: "h5Font" },
                  { fontWeight: "h5Font" },
                  { fontFamily: "h5Font" },
                  { color: "tokens/b03b43ea" },
                ],
              }}
              value="Filter all tasks"
              verticalAlign="center"
            />
            <Link
              id="link2"
              iconBefore="bold/interface-arrows-round-left"
              showUnderline="never"
              style={{
                ordered: [
                  { fontSize: "tokens/63ad6cd6" },
                  { fontWeight: "tokens/63ad6cd6" },
                  { fontFamily: "tokens/63ad6cd6" },
                ],
              }}
              text="Clear filter"
            >
              <Event
                event="click"
                method="clear"
                params={{ ordered: [] }}
                pluginId=""
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Link>
          </View>
        </Container>
      </Header>
      <View id="2e585" viewKey="View 1">
        <Include src="./stack15.rsx" />
      </View>
    </Container>
    <Table
      id="AllTaskList_Table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ GetTaskListByFilters.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      margin="0"
      primaryKeyColumnId="41093"
      rowHeight="medium"
      showBorder={true}
      showHeader={true}
      style={{ alternateRowBackground: "#fcfcfc" }}
      toolbarPosition="bottom"
    >
      <Column
        id="e9ac1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="key"
        label="Case ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.key.split(' - ')[1] }}"
      />
      <Column
        id="41093"
        alignment="left"
        editable={false}
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
        id="c7a4f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="label_name"
        label="Label name"
        placeholder="Enter value"
        position="center"
        size={231}
        summaryAggregationMode="none"
      />
      <Column
        id="12063"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="priority_id"
        label="Priority"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ GetTaskPriorities.data.find(priority => priority.id === currentSourceRow.priority_id)?.name || '' }}"
      />
      <Column
        id="55cd1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="category_id"
        label="Category"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ GetTaskCategories.data.find(category => category.id === currentSourceRow.category_id)?.name || '' }}"
      />
      <Column
        id="9f872"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="status_id"
        label="Status"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ GetTaskStatuses.data.find(status => status.id === currentSourceRow.status_id)?.name || '' }}"
      />
      <Column
        id="fa40b"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="date"
        label="Due date"
        placeholder="Enter value"
        position="center"
        size={197}
        summaryAggregationMode="none"
        textColor={
          '{{ new Date(currentSourceRow.date) < new Date() ? "#FF0000" : null }}'
        }
        valueOverride={
          '{{ moment(currentSourceRow.date).format("MMM DD, yyyy, hh:mm A") }}'
        }
      />
      <Column
        id="9792d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="comments"
        label="Comments"
        placeholder="Enter value"
        position="center"
        referenceId="column9"
        size={100}
        summaryAggregationMode="none"
      />
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [
            {
              src: "rowDoubleClick.trigger({additionalScope: {currentSourceRow: currentSourceRow}})",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Container
      id="AllTasksPaginationContainer"
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "tokens/261b4576" }] }}
    >
      <View id="89817" viewKey="View 1">
        <Pagination
          id="AllTasksTable_Pagination"
          max="5"
          style={{ ordered: [] }}
          value={1}
        />
      </View>
    </Container>
  </Frame>
</Screen>
