<Container
  id="tabbedContainer14"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
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
      id="tabs14"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer14"
      value="{{ self.values[0] }}"
    >
      <Option id="abc9d" value="Tab 1" />
      <Option id="c2581" value="Tab 2" />
      <Option id="4be0c" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0ac5f" label="{{ i18n.t('General') }}" viewKey="General">
    <KeyValue
      id="keyValue3"
      data="{{tableProject3.selectedRow}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="issueID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Issue id"
      />
      <Property
        id="reporter"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Reporter')}}"
      />
      <Property
        id="projectID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Project id"
      />
      <Property
        id="issue_index"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Issue index"
      />
      <Property
        id="project_typeID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Project type id"
      />
      <Property
        id="issue"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Summary')}}"
      />
      <Property
        id="statusID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Status id"
      />
      <Property
        id="responsible_dept"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Responsible Department')}}"
      />
      <Property
        id="created_at"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="true"
        label="Created at"
      />
      <Property
        id="assignee"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Assignee"
      />
      <Property
        id="description"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Description"
      />
    </KeyValue>
    <Text
      id="text44"
      value="{{i18n.t('Description')}}: {{ tableProject3.selectedRow.description }}"
      verticalAlign="center"
    />
  </View>
  <View id="a8d34" label="{{ i18n.t('Comments') }}" viewKey="Comments">
    <Timeline
      id="timeline2"
      dateFormat="dd MMM yyyy"
      hidden="{{ getComments5.data.length == 0 }}"
      isGrouped={true}
      items="{{ formatDataAsObject(getComments5.data).comment_display }}"
      maintainSpaceWhenHidden={true}
      renderAsHtml={true}
      sortedDesc={true}
      timestamps="{{ formatDataAsObject(getComments5.data).created_at }}"
    />
    <TextArea
      id="textArea_commentBox3"
      autoResize={true}
      hidden=""
      label="{{i18n.t('Add Comment')}}"
      labelPosition="top"
      marginType="normal"
      minLines="6"
      placeholder="Write comment here ..."
      spellCheck={true}
    />
    <Button
      id="button86"
      disabled={'{{ textArea_commentBox3.value == "" }}'}
      hidden=""
      marginType="normal"
      text="{{i18n.t('Add Comment')}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComment3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getComments5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="57c50"
    hidden=" {{ formatDataAsArray(get_attachments3.data).length == 0}} "
    label="{{ i18n.t('Attachments') }} ({{  formatDataAsArray(get_attachments3.data).length }})"
    viewKey="Attachments"
  >
    <Text
      id="text45"
      hidden="{{  formatDataAsArray(get_attachments3.data).length != 0 }} "
      horizontalAlign="center"
      value="No attachments to display"
      verticalAlign="center"
    />
    <Table
      id="table9"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_attachments3.data.Contents }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      hidden="{{  formatDataAsArray(get_attachments3.data).length === 0 }} "
      primaryKeyColumnId="450d9"
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="450d9"
        alignment="left"
        cellTooltipMode="overflow"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Key"
        label="Key"
        placeholder="Enter value"
        position="center"
        size={171}
        summaryAggregationMode="none"
      />
      <Column
        id="e058f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Key"
        label="Name"
        placeholder="Enter value"
        position="center"
        referenceId="Name"
        size={259}
        summaryAggregationMode="none"
        valueOverride="{{ item.replace(('crf/' + tableProject3.selectedRow.issueID) + '/','').substring(36) }}"
      />
      <Column
        id="7c863"
        alignment="right"
        format="date"
        groupAggregationMode="none"
        key="LastModified"
        label="Last modified"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4b031"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="ETag"
        label="E tag"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="33ede"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="ChecksumAlgorithm"
        label="Checksum algorithm"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5e577"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="StorageClass"
        label="Storage class"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Event
        event="selectRow"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="tabbedContainer15"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Container
      id="tabbedContainer15"
      _gap={0}
      currentViewKey="{{table9.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{  formatDataAsArray(get_attachments3.data).length === 0 }} "
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs15"
          hidden="true"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer15"
          value="{{ self.values[0] }}"
        >
          <Option id="f6da4" value="Tab 1" />
          <Option id="6de08" value="Tab 2" />
          <Option id="50e9b" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="a4848" viewKey="image">
        <Image
          id="image7"
          fit="contain"
          heightType="fixed"
          horizontalAlign="center"
          src="{{readFile5.data.Body}}"
        />
      </View>
      <View id="95ad1" viewKey="pdf">
        <PDFViewer id="pdf5" showTopBar={true} src="{{readFile5.data.Body}}" />
      </View>
    </Container>
  </View>
  <View
    id="e66d1"
    disabled={false}
    hidden=" {{ formatDataAsArray(linkedTasks.data).length == 0}} "
    iconPosition="left"
    label="{{ i18n.t('Linked Tasks') }}  ({{  formatDataAsArray(linkedTasks.data).length }})"
    viewKey="Linked Tasks"
  >
    <Table
      id="table10"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ linkedTasks.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="49096"
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
        id="ba7c8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="issue_index"
        label="Issue No"
        placeholder="Select option"
        position="center"
        size={86}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="13718"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status_value"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d9130"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="projectID"
        label="Project id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f019b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_typeID"
        label="Project type id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0dcca"
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
      <Column
        id="5e133"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="created_by"
        label="Created by"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="6eee4"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="issue"
        label="Summary"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d509e"
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
        id="f881a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="reference_issueID"
        label="Reference issue id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9a4e6"
        alignment="left"
        format="avatar"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          image: "{{currentSourceRow.avatarURL}}",
        }}
        groupAggregationMode="none"
        key="avatarURL"
        label="Assignee"
        placeholder="No user"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
      />
      <Action
        id="ad5f7"
        icon="line/interface-arrows-expand-5"
        label="View Task"
      >
        <Event
          event="clickAction"
          method="openApp"
          params={{
            ordered: [
              { uuid: "54e268e0-becb-11ee-8506-73ceea6c5a43" },
              {
                options: {
                  ordered: [
                    {
                      hashParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            { value: "{{ currentSourceRow.issueID }}" },
                          ],
                        },
                      ],
                    },
                    { newTab: true },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
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
          pluginId="table10"
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
          pluginId="table10"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
