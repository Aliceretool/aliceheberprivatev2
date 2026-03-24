<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetOutput
    id="selected_compound"
    description=""
    value="{{ compounds_list.selectedRow }}"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      margin="0"
      overflowType="hidden"
    >
      <Container
        id="tabbedContainer1"
        currentViewKey="{{ self.viewKeys[0] }}"
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
          <Tabs
            id="tabs1"
            itemMode="static"
            navigateContainer={true}
            targetContainerId="tabbedContainer1"
            value="{{ self.values[0] }}"
          >
            <Option id="00030" value="Tab 1" />
            <Option id="00031" value="Tab 2" />
            <Option id="00032" value="Tab 3" />
          </Tabs>
        </Header>
        <View id="00030" label="Compounds" viewKey="list">
          <Table
            id="compounds_list"
            cellSelection="none"
            clearChangesetOnSave={true}
            data="{{ list_compounds.data }}"
            defaultSelectedRow={{
              mode: "index",
              indexType: "display",
              index: 0,
            }}
            dynamicRowHeights={true}
            emptyMessage="No rows found"
            enableSaveActions={true}
            primaryKeyColumnId="09010"
            rowHeight="small"
            showBorder={true}
            toolbarPosition="bottom"
          >
            <Column
              id="09010"
              alignment="left"
              format="string"
              groupAggregationMode="none"
              key="id"
              label="Coumpound ID"
              placeholder="Enter value"
              position="center"
              size={221}
              summaryAggregationMode="none"
            />
            <Column
              id="4fbe8"
              alignment="left"
              format="time"
              groupAggregationMode="none"
              hidden="true"
              key="opening_time"
              label="Opening time"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
            <Column
              id="b6a72"
              alignment="left"
              format="time"
              groupAggregationMode="none"
              hidden="true"
              key="closing_time"
              label="Closing time"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
            <Column
              id="4cfd4"
              alignment="left"
              format="markdown"
              groupAggregationMode="none"
              key="address"
              label="Address"
              placeholder="Enter value"
              position="center"
              size={240}
              summaryAggregationMode="none"
              valueOverride="**{{ currentSourceRow.name }}**
{{ item }}
{{ currentSourceRow.postcode }} {{ currentSourceRow.city }}"
            />
            <Column
              id="1d305"
              alignment="left"
              format="string"
              groupAggregationMode="none"
              hidden="true"
              key="contact"
              label="Contact"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
            <Column
              id="5270d"
              alignment="left"
              format="link"
              formatOptions={{ showUnderline: "hover" }}
              groupAggregationMode="none"
              hidden="true"
              key="email"
              label="Email"
              position="center"
              size={100}
              summaryAggregationMode="none"
            >
              <Event
                id="931b160d"
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
              id="d6507"
              alignment="left"
              format="string"
              groupAggregationMode="none"
              hidden="true"
              key="phone"
              label="Phone"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
          </Table>
        </View>
        <View id="00031" viewKey="+">
          <Include src="./src/container1.rsx" />
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
