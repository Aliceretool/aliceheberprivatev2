<Container
  id="container9"
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
      id="modal_createQPIssue"
      buttonText="+ {{ i18n.t('Create Register') }}"
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
                  { key: "next_qp_issue_id" },
                  { newValue: "{{uuid.v4()}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{ getUser_filteredRoleIsQPAdmin.data.count_capa_admin == 0 }}"
      modalHeight="784px"
      modalOverflowType="visible"
      modalWidth="40%"
      style={{ ordered: [{ "accent-background": "secondary" }] }}
    >
      <Module
        id="createQpRegister1"
        close="close4"
        margin="0"
        name="Create QP Register"
        pageUuid="318d5d36-adac-4647-a3be-7009823a13ec"
        referenceIssueID=""
        referenceReadOnly=""
        refresh="refresh4"
      />
    </Modal>
    <Text
      id="containerTitle30"
      marginType="normal"
      value="#### {{i18n.t('QP Register')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="80363" viewKey="View 1">
    <Container
      id="group11"
      _align="center"
      _gap="0px"
      _justify="center"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="ce3ef" viewKey="View 1">
        <Container
          id="linkCard22"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group1"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="0226f" viewKey="View 1">
                <Icon
                  id="icon23"
                  icon="line/interface-edit-write-1"
                  marginType="normal"
                  style={{ ordered: [{ background: "success" }] }}
                  styleVariant="background"
                />
                <Text
                  id="containerTitle31"
                  horizontalAlign="right"
                  marginType="normal"
                  value="{{i18n.t('Open')}}"
                  verticalAlign="center"
                />
                <Text
                  id="text48"
                  horizontalAlign="right"
                  marginType="normal"
                  value="#### {{get_open.data.OpenQP[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="linkCard23"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group10"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="0226f" viewKey="View 1">
                <Text
                  id="containerTitle32"
                  horizontalAlign="right"
                  marginType="normal"
                  value="{{i18n.t('Due Soon')}}"
                  verticalAlign="center"
                />
                <Icon
                  id="icon24"
                  icon="line/interface-time-alarm"
                  marginType="normal"
                  style={{ ordered: [{ background: "primary" }] }}
                  styleVariant="background"
                />
                <Text
                  id="text49"
                  horizontalAlign="right"
                  marginType="normal"
                  value="#### {{get_expiring1m.data.expiringin1m[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="linkCard24"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group3"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="0226f" viewKey="View 1">
                <Icon
                  id="icon25"
                  icon="line/interface-time-hour-glass"
                  marginType="normal"
                  style={{ ordered: [{ background: "danger" }] }}
                  styleVariant="background"
                />
                <Text
                  id="containerTitle33"
                  horizontalAlign="right"
                  marginType="normal"
                  value="{{i18n.t('Expired')}}"
                  verticalAlign="center"
                />
                <Text
                  id="text50"
                  horizontalAlign="right"
                  marginType="normal"
                  value="#### {{get_expired.data.expired[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="linkCard25"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group2"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="0226f" viewKey="View 1">
                <Icon
                  id="icon26"
                  icon="line/interface-validation-check-circle"
                  marginType="normal"
                  style={{ ordered: [{ background: "success" }] }}
                  styleVariant="background"
                />
                <Text
                  id="containerTitle34"
                  horizontalAlign="right"
                  marginType="normal"
                  value="{{i18n.t('Complete')}}"
                  verticalAlign="center"
                />
                <Text
                  id="text51"
                  horizontalAlign="right"
                  marginType="normal"
                  value="#### {{get_closed2.data.closed[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
      </View>
    </Container>
    <Spacer id="spacer19" marginType="normal" />
    <TextInput
      id="tableProjectSearchFilter4"
      hidden="true"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="{{ i18n.t('Search') }}"
      placeholder="{{ i18n.t('Search in table') }}"
      showClear={true}
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
    />
    <Multiselect
      id="multiselect8"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_filteredProjectRoleActive4.data }}"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-user-multiple"
      iconByIndex=""
      label=""
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select Assignee') }}"
      showClear={true}
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "success" }] }}
      values="{{ item.userID }}"
      wrapTags={true}
    />
    <Multiselect
      id="multiselect9"
      data="{{ getStatus4.data }}"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-text-formatting-filter-2-alternate"
      label=""
      labelPosition="top"
      labels="{{i18n.t(item.field_value)}}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select options') }}"
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "success" }] }}
      values="{{ item.field_value }}"
      wrapTags={true}
    />
    <Table
      id="tableProject4"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getIssue8.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      hidden="true"
      linkedFilterId=""
      overflowType="pagination"
      rowHeight="medium"
      searchTerm="{{ tableProjectSearchFilter4.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
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
        label="{{ i18n.t('Issue id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={267.203125}
      />
      <Column
        id="23d09"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="none"
        hidden="true"
        key="projectID"
        label="{{ i18n.t('Project') }}"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProject7.data }}",
          valueByIndex: "{{ item.projectID }}",
          labelByIndex: "{{item.project}}",
        }}
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={98.859375}
      />
      <Column
        id="b3285"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="issue_index"
        label="{{ i18n.t('Issue ID') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={73.8125}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openPage"
          params={{
            ordered: [
              { pageName: "QPRegister_Issue" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            { value: "{{tableProject4.selectedRow.issueID}}" },
                          ],
                        },
                      ],
                    },
                    { hashParams: [] },
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
        format="string"
        groupAggregationMode="none"
        key="issue"
        label="{{ i18n.t('Issue') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        referenceId="issue"
        size={235.140625}
      />
      <Column
        id="59037"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_typeID"
        label="{{ i18n.t('Type') }}"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProjectType_filtered7.data }}",
          valueByIndex: "{{ item.project_typeID }}",
          labelByIndex: "{{i18n.t(item.project_type)}}",
        }}
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={78.734375}
      />
      <Column
        id="db6b2"
        alignment="center"
        editableOptions={{ allowCustomValue: false }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="statusID"
        label="{{ i18n.t('Status') }}"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getStatus4.data }}",
          valueByIndex: "{{ item.project_field_type_valueID }}",
          labelByIndex: "{{item.field_value}}",
        }}
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={86.71875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e1da"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="field_value"
        label="{{ i18n.t('Field value') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={306.65625}
        summaryAggregationMode="none"
      />
      <Column
        id="7300e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="company_name"
        label="{{ i18n.t('Company name') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={104.390625}
        summaryAggregationMode="none"
      />
      <Column
        id="54356"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true, image: "" }}
        groupAggregationMode="none"
        label="{{ i18n.t('Reporter') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        referenceId="Reporter"
        size={75.453125}
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
        label="{{ i18n.t('Created at') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={144.1875}
      />
      <Column
        id="f98fa"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="created_by"
        label="{{ i18n.t('Created by') }}"
        position="center"
        size={150.46875}
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
            "{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}",
        }}
        groupAggregationMode="none"
        key="avatarURL"
        label="{{ i18n.t('Assignee') }}"
        optionList={{ manualData: [], mode: "manual" }}
        placeholder="{{ i18n.t('No user') }}"
        position="center"
        referenceId="currentUserFirstNa"
        size={142.140625}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
      />
      <Column
        id="01a14"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="deviation_index"
        label="{{ i18n.t('Deviation index') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={103.03125}
        summaryAggregationMode="none"
      />
      <Column
        id="97978"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="clientID"
        label="Client id"
        placeholder="Enter value"
        position="center"
        size={62.4375}
        summaryAggregationMode="none"
      />
      <Column
        id="9755f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="typeofBatch"
        label="Typeof batch"
        placeholder="Enter value"
        position="center"
        size={265.96875}
        summaryAggregationMode="none"
      />
      <Column
        id="8d897"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="batchNos"
        label="Batch nos"
        placeholder="Enter value"
        position="center"
        size={82.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="c5dab"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="typeofCertification"
        label="Typeof certification"
        placeholder="Enter value"
        position="center"
        size={266.15625}
        summaryAggregationMode="none"
      />
      <Column
        id="e62fa"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="yield"
        label="Yield"
        placeholder="Enter value"
        position="center"
        size={75.046875}
        summaryAggregationMode="none"
      />
      <Column
        id="549f0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="reference_issueID"
        label="Reference issue id"
        placeholder="Enter value"
        position="center"
        size={259.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="ad88b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="itemNos"
        label="Item nos"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="98864"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="parentBatchNo"
        label="Parent batch no"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="361ce"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="packType"
        label="Pack type"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="68124"
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
        id="54ec5"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="deviation_summary"
        label="Deviation summary"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="fc719"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="firstName"
        label="First name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6bd5e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="lastName"
        label="Last name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1ae26"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="reporter_firstname"
        label="Reporter firstname"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1c435"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="reporter_lastName"
        label="Reporter last name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="66f01"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="reporter_avatarURL"
        label="Reporter avatar url"
        position="center"
        size={100}
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
        id="0ab38"
        alignment="left"
        editableOptions={{ allowCustomValue: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="markets"
        label="Markets"
        optionList={{
          mode: "mapped",
          mappedData: "{{ get_markets.data }}",
          valueByIndex: "{{ item.project_field_type_valueID }}",
          labelByIndex: "{{ item.field_value }}",
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ item }}"
      />
      <Action
        id="2b35e"
        icon="line/interface-setting-menu-horizontal"
        label="{{ i18n.t('Expand') }}"
      >
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="splitPaneFrame4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="{{ i18n.t('Filter') }}"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="{{ i18n.t('Download') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="tableProject4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="{{ i18n.t('Refresh') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="tableProject4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Module
      id="globalSearch6"
      input2="{{ randNo.data }}"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE={'"QP Register"'}
      refresh="refresh4"
    />
  </View>
</Container>
