<Container
  id="container3"
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
  style={{ ordered: [{ background: "rgb(255, 255, 255)" }] }}
>
  <Header>
    <Modal
      id="modal_createDeviationIssue"
      buttonText="+ {{ i18n.t('Create CAPA')}}"
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
                  { key: "next_capa_issue_id" },
                  { newValue: "{{uuid.v4()}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{ getUser_filteredRoleIsCAPAAdmin.data.count_capa_admin == 0 }}"
      modalHeight="784px"
      modalOverflowType="visible"
      modalWidth="40%"
      style={{ ordered: [{ "accent-background": "secondary" }] }}
    >
      <Module
        id="createCapa1"
        close="close"
        margin="0"
        name="Create CAPA"
        pageUuid="fd1c38df-e8ea-489f-a726-cf3c9a713459"
        referenceIssueID=""
        referenceReadOnly=""
        refresh="refresh"
      />
    </Modal>
    <Text
      id="containerTitle1"
      marginType="normal"
      value="#### {{ i18n.t('CAPA Issues')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="80363" viewKey="View 1">
    <Container
      id="linkCard5"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Icon
          id="icon5"
          icon="line/interface-user-check"
          marginType="normal"
          style={{ ordered: [{ background: "highlight" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle8"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Resolved')}}"
          verticalAlign="center"
        />
        <Text
          id="text19"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_resolved.data.resolved[0]}}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="linkCard6"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Icon
          id="icon6"
          icon="line/interface-login-circle"
          marginType="normal"
          style={{ ordered: [{ background: "rgb(191, 219, 254)" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle9"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Withdrawn')}}"
          verticalAlign="center"
        />
        <Text
          id="text20"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_withdrawn.data.withdrawn[0]}}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="linkCard8"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Icon
          id="icon8"
          icon="line/interface-edit-write-2"
          marginType="normal"
          style={{ ordered: [{ background: "secondary" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle11"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Open Modified')}}"
          verticalAlign="center"
        />
        <Text
          id="text22"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_open_modified.data.Open_modified[0]}}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="linkCard7"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Icon
          id="icon7"
          icon="line/interface-edit-write-1"
          marginType="normal"
          style={{ ordered: [{ background: "primary" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle10"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Open')}}"
          verticalAlign="center"
        />
        <Text
          id="text21"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_open_capa.data.OpenCAPA[0]}}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="linkCard9"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Icon
          id="icon9"
          icon="line/interface-logout-square"
          marginType="normal"
          style={{ ordered: [{ background: "warning" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle12"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Withdrawal RQ')}}"
          verticalAlign="center"
        />
        <Text
          id="text23"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_withdrawal_rq.data.withdrawal_requested[0]}}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="linkCard10"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Icon
          id="icon10"
          icon="line/interface-validation-check-circle"
          marginType="normal"
          style={{ ordered: [{ background: "success" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle13"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Closed')}}"
          verticalAlign="center"
        />
        <Text
          id="text24"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_closed.data.closed[0]}}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Spacer id="spacer1" marginType="normal" />
    <Multiselect
      id="multiselect1"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_filteredProjectRoleActive.data }}"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-user-multiple"
      iconByIndex=""
      label=""
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select Assignee')}}"
      showClear={true}
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "success" }] }}
      values="{{ item.userID }}"
      wrapTags={true}
    />
    <TextInput
      id="tableProjectSearchFilter"
      hidden="true"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="{{ i18n.t('Search')}}"
      placeholder="{{ i18n.t('Search in table')}}"
      showClear={true}
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
    />
    <Multiselect
      id="multiselect2"
      data="{{ getStatus.data }}"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-text-formatting-filter-2-alternate"
      label=""
      labelPosition="top"
      labels="{{ i18n.t(item.field_value)}}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select options')}}"
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "success" }] }}
      values="{{ item.field_value }}"
      wrapTags={true}
    />
    <Table
      id="tableProject"
      actionsOverflowPosition={1}
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getIssue.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "e6497" },
            { columnId: "b01a8" },
            { operator: "intersects" },
            { value: "{{ multiselect1.selectedLabels }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      hidden="true"
      linkedFilterId=""
      overflowType="pagination"
      primaryKeyColumnId="7a179"
      rowHeight="medium"
      searchTerm="{{ tableProjectSearchFilter.value }}"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      style={{ headerBackground: "rgb(248, 250, 252)" }}
      templatePageSize="50"
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
          mappedData: "{{ getProject.data }}",
          valueByIndex: "{{ item.projectID }}",
          labelByIndex: "{{item.project}}",
        }}
        placeholder="Select option"
        position="center"
        size={0}
      />
      <Column
        id="b3285"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="issue_index"
        label="{{ i18n.t('Issue ID')}}"
        placeholder="Enter value"
        position="center"
        size={66.4375}
      >
        <Event
          event="clickCell"
          method="openPage"
          params={{
            ordered: [
              { pageName: "CAPA_Specific" },
              {
                options: {
                  ordered: [
                    { hashParams: [] },
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
        id="59037"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_typeID"
        label="{{ i18n.t('Type')}}"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProjectType_filtered.data }}",
          valueByIndex: "{{ item.project_typeID }}",
          labelByIndex: "{{i18n.t(item.project_type)}}",
        }}
        placeholder="Select option"
        position="center"
        size={124.0625}
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
        label="{{ i18n.t('Status')}}"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getStatus.data }}",
          valueByIndex: "{{ item.project_field_type_valueID }}",
          labelByIndex: "{{ i18n.t(item.field_value)}}",
        }}
        placeholder="Select option"
        position="center"
        size={64.875}
        summaryAggregationMode="none"
      />
      <Column
        id="104c3"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="issue"
        label="{{ i18n.t('Issue')}}"
        placeholder="Enter value"
        position="center"
        referenceId="i18NTIssue"
        size={217.625}
        summaryAggregationMode="none"
      />
      <Column
        id="e1796"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="responsible_department_value"
        label="{{ i18n.t('Responsible Department')}}"
        placeholder="Enter value"
        position="center"
        referenceId="responsible_department"
        size={157.203125}
        summaryAggregationMode="none"
      />
      <Column
        id="b1574"
        alignment="left"
        cellTooltipMode="overflow"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="reference_issueID"
        label="{{ i18n.t('Reference (DVR Issue)')}}"
        placeholder="Select option"
        position="center"
        size={860.921875}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.deviation_index != null && currentSourceRow.deviation_summary != null ? currentSourceRow.deviation_index + ': ' + currentSourceRow.deviation_summary : ''}}"
      >
        <Event
          enabled="{{ currentSourceRow.deviation_index != null && currentSourceRow.deviation_summary != null }} "
          event="clickCell"
          method="openApp"
          params={{
            ordered: [
              { uuid: "b8df9f38-9dde-11ee-bcb5-a7293e5d72e7" },
              {
                options: {
                  ordered: [
                    {
                      hashParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            {
                              value: "{{ currentSourceRow.reference_issueID }}",
                            },
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
      </Column>
      <Column
        id="c2f92"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="responsible_departmentID"
        label="Responsible department id"
        placeholder="Enter value"
        position="center"
        size={0}
      />
      <Column
        id="54356"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true, image: "" }}
        groupAggregationMode="none"
        hidden="true"
        label="Reporter"
        placeholder="Enter value"
        position="center"
        referenceId="Reporter"
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
        hidden="true"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="f98fa"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="created_by"
        label="Created by"
        position="center"
        size={0}
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
        id="b01a8"
        alignment="left"
        cellTooltip="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
        format="avatar"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          widthType: "fit",
          image: "{{currentSourceRow.avatarURL}}",
          fallbackText:
            "{{i18n.t(currentSourceRow.firstName)}} {{i18n.t(currentSourceRow.lastName)}}",
        }}
        groupAggregationMode="none"
        key="avatarURL"
        label="{{ i18n.t('Assignee')}}"
        optionList={{ manualData: [], mode: "manual" }}
        placeholder="No user"
        position="center"
        referenceId="currentUserFirstNa"
        size={134.578125}
        summaryAggregationMode="none"
        valueOverride="{{i18n.t(currentSourceRow.firstName)}} {{i18n.t(currentSourceRow.lastName)}}"
      />
      <Column
        id="01a14"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="deviation_index"
        label="Deviation index"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="d2a5d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="closure_ref"
        label="Closure ref"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="aaa6c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="specific_reference"
        label="Specific reference"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="6690f"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="assigned_to"
        label="Assigned to"
        position="center"
        size={0}
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
        id="45f01"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="deviation_summary"
        label="Deviation summary"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="4fbc4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="firstName"
        label="First name"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="88feb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="lastName"
        label="Last name"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="01846"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="reporter_firstname"
        label="Reporter firstname"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f1b0d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="reporter_lastName"
        label="Reporter last name"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a43c4"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="reporter_avatarURL"
        label="Reporter avatar url"
        position="center"
        size={0}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="01913"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="type_of_modificationID"
        label="Type of modification id"
        placeholder="Enter value"
        position="center"
        referenceId="typeofmod"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="6fc56"
        alignment="left"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="impact_q_s_e"
        label="Impact"
        placeholder="Enter value"
        position="center"
        referenceId="impact_q_s_e"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="2e332"
        alignment="left"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="impact_supplier_client_scheduling"
        label="Impact supplier"
        placeholder="Enter value"
        position="center"
        referenceId="impact_supplier"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="42a3f"
        alignment="left"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="proposed_modification"
        label="Proposed modification"
        placeholder="Enter value"
        position="center"
        referenceId="proposed_mods"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="df6be"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="justification"
        label="Justification"
        placeholder="Enter value"
        position="center"
        referenceId="justification"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="11446"
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
        id="2c449"
        icon="line/interface-setting-menu-horizontal"
        label="Expand"
      >
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="splitPaneFrame1"
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
          pluginId="tableProject"
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
          pluginId="tableProject"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Module
      id="globalSearch3"
      input2="{{ randNo.value }}"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE="CAPA"
      refresh="refresh"
    />
  </View>
</Container>
