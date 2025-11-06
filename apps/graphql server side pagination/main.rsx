<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getReposServerSidePaginated2.data.user.repositories.edges}}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      hasNextPage="{{ getReposServerSidePaginated2.data.user.repositories.pageInfo.hasNextPage }}"
      nextAfterCursor="{{  _.last(getReposServerSidePaginated2.data.user.repositories.edges).cursor }}"
      nextBeforeCursor="{{  _.first(getReposServerSidePaginated2.data.user.repositories.edges).cursor }}"
      overflowType="pagination"
      serverPaginated={true}
      serverPaginationType="graphqlCursorBased"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="2"
      toolbarPosition="bottom"
    >
      <Column
        id="dc1f6"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        key="node"
        label="Node"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="33f5e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="cursor"
        label="Cursor"
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
          id="1db9b340"
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
          id="35cc1e2f"
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <JSONEditor id="jsonEditor1" value="{{ query4.data }}" />
    <TextInput id="textInput1" labelPosition="top" placeholder="Enter value" />
    <JSONEditor id="jsonEditor2" value="{{ query5.data }}" />
  </Frame>
</App>
