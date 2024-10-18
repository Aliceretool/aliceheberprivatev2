<Container
  id="container7"
  _gap={0}
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle23"
      marginType="normal"
      value="#### {{i18n.t('Change Control')}}"
      verticalAlign="center"
    />
    <Modal
      id="modal_createDeviationIssue3"
      buttonText="+ {{i18n.t('Create Change Control')}}"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "localStorage" },
            { method: "setValue" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  { key: "next_change_control_issue_id" },
                  { newValue: "{{uuid.v4()}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{ !is_currentUser_CRFAdmin.value }}"
      modalHeight="1600px"
      modalHeightType="auto"
      modalOverflowType="visible"
      modalWidth="50%"
      style={{ ordered: [{ "accent-background": "secondary" }] }}
    >
      <Module
        id="createChangeControl1"
        close="close3"
        margin="0"
        name="Create Change Control"
        pageUuid="10414d22-b076-480f-8a2d-c47a830fed4f"
        referenceIssueID=""
        referenceReadOnly=""
        refresh="refresh3"
      />
    </Modal>
  </Header>
  <View id="80363" viewKey="View 1">
    <Include src="./group32.rsx" />
    <Spacer id="spacer15" marginType="normal" />
    <TextInput
      id="tableProjectSearchFilter3"
      hidden="true"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="{{ i18n.t('Search in table')}}"
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
    />
    <Multiselect
      id="multiselect5"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_filteredProjectRoleActive3.data }}"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-user-multiple"
      iconByIndex=""
      label=""
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      maxLines="1"
      overlayMaxHeight="375"
      placeholder="Select Assignee"
      showClear={true}
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
      value=""
      values="{{ item.email }}"
      wrapTags={true}
    />
    <Multiselect
      id="multiselect6"
      data="{{ getStatus3.data }}"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-text-formatting-filter-2-alternate"
      label=""
      labelPosition="top"
      marginType="normal"
      maxLines="1"
      overlayMaxHeight={375}
      placeholder="Status"
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
      value=""
      values="{{ item.field_value}}"
      wrapTags={true}
    />
    <Table
      id="tableProject3"
      actionsOverflowPosition={1}
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getIssue5.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      hidden="true"
      primaryKeyColumnId="7a179"
      rowHeight="medium"
      searchTerm="{{ tableProjectSearchFilter3.value }}"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="7a179"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="Issue id"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="23d09"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="none"
        hidden="true"
        key="projectID"
        label="Project"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProject5.data }}",
          valueByIndex: "{{ item.projectID }}",
          labelByIndex: "{{item.project}}",
        }}
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="b3285"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="issue_index"
        label="Issue ID"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openPage"
          params={{
            ordered: [
              { pageName: "CRF_Issue" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            { value: "{{ currentRow.issueID }}" },
                          ],
                        },
                      ],
                    },
                    { hashParams: [] },
                    { newTab: false },
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
      </Column>
      <Column
        id="104c3"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="issue"
        label="Issue"
        placeholder="Enter value"
        position="center"
        referenceId="issue"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="59037"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_typeID"
        label="Type"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProjectType_filtered5.data }}",
          valueByIndex: "{{ item.project_typeID }}",
          labelByIndex: "{{item.project_type}}",
        }}
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="db6b2"
        alignment="left"
        editableOptions={{ allowCustomValue: false }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="statusID"
        label="Status"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getStatus3.data }}",
          valueByIndex: "{{ item.project_field_type_valueID }}",
          labelByIndex: "{{item.field_value}}",
        }}
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="cd35d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="responsible_department_value"
        label="Responsible Department"
        placeholder="Enter value"
        position="center"
        referenceId="responsible_dept"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="a6d37"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Reporter"
        placeholder="Enter value"
        position="center"
        referenceId="reporter"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.reporter_firstname}} {{currentSourceRow.reporter_lastName}}"
      />
      <Column
        id="d08f3"
        alignment="left"
        format="datetime"
        formatOptions={{
          manageTimeZone: false,
          valueTimeZone: "00:00",
          displayTimeZone: "local",
          dateFormat: "dd MMM yyyy",
        }}
        groupAggregationMode="none"
        key="created_at"
        label="Created"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="cc430"
        alignment="left"
        format="avatar"
        formatOptions={{ image: "{{currentSourceRow.avatarURL}}" }}
        groupAggregationMode="none"
        label="Assignee"
        placeholder="No user"
        position="center"
        referenceId="assignee"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
      />
      <Column
        id="b24ca"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="description"
        label="description"
        placeholder="Enter value"
        position="center"
        referenceId="description"
        size={0}
        summaryAggregationMode="none"
      />
      <Action
        id="98e14"
        icon="line/interface-setting-menu-horizontal"
        label="Expand"
      >
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="splitPaneFrame3"
          type="widget"
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
          pluginId="tableProject3"
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
          pluginId="tableProject3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Module
      id="globalSearch5"
      input2="{{ randNo.data }}"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE={'"Change Control"'}
      refresh="refresh3"
    />
  </View>
</Container>
