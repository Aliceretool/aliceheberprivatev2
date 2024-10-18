<Container
  id="container4"
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
  style={{ ordered: [] }}
>
  <Header>
    <Text
      id="containerTitle14"
      marginType="normal"
      value="#### {{ i18n.t('Deviations')}}"
      verticalAlign="center"
    />
    <Modal
      id="modal_createDeviationIssue2"
      buttonText="+ {{ i18n.t('Create Issue')}}"
      closeOnOutsideClick={true}
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
                  { key: "next_deviation_issue_id" },
                  { newValue: "{{uuid.v4()}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{ getUser_filteredActiveClient.data.count_dvr_client[0] == 0 }}"
      margin="4px 8px"
      modalHeight="856px"
      modalHeightType="auto"
      modalOverflowType="visible"
      modalWidth="50%"
      style={{ ordered: [{ "accent-background": "secondary" }] }}
    >
      <Module
        id="createDeviation1"
        close="close2"
        margin="0"
        name="Create Deviation"
        pageUuid="b445f325-c6bb-46dd-896a-b922d784c3f7"
        projectID="{{ project_id2.value}}"
        referenceIssueID=""
        refresh="refresh2"
      />
    </Modal>
  </Header>
  <View id="80363" viewKey="View 1">
    <Container
      id="linkCard15"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="98a76" viewKey="View 1">
        <Container
          id="group8"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="f09a5" viewKey="View 1">
            <Icon
              id="icon15"
              icon="line/computer-connection-usb-port"
              marginType="normal"
              style={{ ordered: [{ background: "success" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle19"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('CAPA')}}"
              verticalAlign="center"
            />
            <Text
              id="text33"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_status_CAPA_Created.data.CAPA_CreateddDVR[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard11"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="98a76" viewKey="View 1">
        <Container
          id="group4"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="f09a5" viewKey="View 1">
            <Icon
              id="icon11"
              icon="line/interface-edit-write-1"
              marginType="normal"
              style={{ ordered: [{ background: "primary" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle15"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Open')}}"
              verticalAlign="center"
            />
            <Text
              id="text29"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_status_open.data.OpenDVR[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard13"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="98a76" viewKey="View 1">
        <Container
          id="group6"
          _gap="0px"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="f09a5" viewKey="View 1">
            <Icon
              id="icon13"
              icon="line/interface-content-book-edit"
              marginType="normal"
              style={{ ordered: [{ background: "warning" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle17"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Pending')}}"
              verticalAlign="center"
            />
            <Text
              id="text31"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_status_Pending_Evaluation.data.PendingDVR[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard14"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="98a76" viewKey="View 1">
        <Container
          id="group7"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="f09a5" viewKey="View 1">
            <Icon
              id="icon14"
              icon="line/interface-user-check"
              marginType="normal"
              style={{ ordered: [{ background: "highlight" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle18"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Approved')}}"
              verticalAlign="center"
            />
            <Text
              id="text32"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_status_QP_Approved.data.QPAcceptedDVR[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard16"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <View id="56437" viewKey="View 1">
        <Container
          id="group9"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="f09a5" viewKey="View 1">
            <Icon
              id="icon16"
              icon="line/interface-arrows-left-circle-1"
              style={{ ordered: [{ background: "rgb(191, 219, 254)" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle22"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Rejected')}}"
              verticalAlign="center"
            />
            <Text
              id="text36"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_status_Rejected.data.RejectedDVR[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard12"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="98a76" viewKey="View 1">
        <Container
          id="group5"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="f09a5" viewKey="View 1">
            <Text
              id="containerTitle16"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Accepted')}}"
              verticalAlign="center"
            />
            <Icon
              id="icon12"
              icon="line/interface-file-clipboard-check"
              marginType="normal"
              style={{ ordered: [{ background: "success" }] }}
              styleVariant="background"
            />
            <Text
              id="text30"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_status_Deviation_Accepted.data.AcceptedDVR[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Spacer id="spacer12" marginType="normal" />
    <TextInput
      id="tableProjectSearchFilter2"
      disabled="true"
      hidden="true"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="{{ i18n.t('Search in table')}}"
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
    />
    <Multiselect
      id="multiselect4"
      data="{{ getStatus2.data }}"
      disabled="true"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-text-formatting-filter-2-alternate"
      label=""
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Status')}}"
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
      values="{{ item.field_value }}"
      wrapTags={true}
    />
    <Select
      id="multiselect3"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_filteredProjectRoleActive2.data }}"
      disabledByIndex="true"
      emptyMessage="No options"
      hidden="true"
      iconBefore="bold/interface-user-multiple"
      label=""
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select Assignee')}}"
      showClear={true}
      showSelectionIndicator={true}
      style={{ ordered: [{ adornmentIcon: "secondary" }] }}
      values="{{ item.email }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="close2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Table
      id="tableProject2"
      actionsOverflowPosition={1}
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getIssue7.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "58fb8" },
            { columnId: "56423" },
            { operator: "intersects" },
            { value: "{{ multiselect3.value }}" },
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
      searchTerm="{{ tableProjectSearchFilter2.value }}"
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
          mappedData: "{{ getProject3.data }}",
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
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="issue_index"
        label="Issue ID"
        placeholder="Enter value"
        position="center"
        size={0}
      >
        <Event
          event="clickCell"
          method="openPage"
          params={{
            ordered: [
              { pageName: "DEVIATION_Specific" },
              {
                options: {
                  ordered: [
                    { newTab: false },
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
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getMultiUserAudit"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
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
          mappedData: "{{ getStatus2.data }}",
          valueByIndex: "{{ item.project_field_type_valueID }}",
          labelByIndex: "{{item.field_value}}",
        }}
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
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
        hidden="true"
        key="project_typeID"
        label="Type"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProjectType_filtered3.data }}",
          valueByIndex: "{{ item.project_typeID }}",
          labelByIndex: "{{item.project_type}}",
        }}
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
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
        summaryAggregationMode="none"
      />
      <Column
        id="78215"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="responsible_department_value"
        label="Responsible Department"
        placeholder="Enter value"
        position="center"
        referenceId="responsible_department_value"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="a3633"
        alignment="left"
        format="string"
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
        key="created_at"
        label="Created"
        placeholder="Enter value"
        position="center"
        size={0}
      />
      <Column
        id="56423"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="assigned_to"
        label="Assigned to"
        position="center"
        size={0}
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
        id="a5b1c"
        alignment="left"
        format="avatar"
        formatOptions={{ image: "{{currentSourceRow.avatarURL}}" }}
        groupAggregationMode="none"
        label="Assignee"
        placeholder="No user"
        position="center"
        referenceId="assignee"
        size={0}
        valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
      />
      <Column
        id="26468"
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
        id="a4937"
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
        id="9786b"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="avatarURL"
        label="Avatar url"
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
        id="cd11d"
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
        id="ca77e"
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
        id="a993b"
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
        id="aeebd"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="batch_no"
        label="batch_no"
        placeholder="Enter value"
        position="center"
        referenceId="batchNo"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="081cb"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="code"
        label="code"
        placeholder="Enter value"
        position="center"
        referenceId="code"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="a8ebb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        referenceId="description"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="ac33d"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="product_effected_comment"
        label="products affected"
        placeholder="Enter value"
        position="center"
        referenceId="productsAffected"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="6e55d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="equipment_effected_comment"
        label="equipment affected"
        placeholder="Enter value"
        position="center"
        referenceId="equipmentaffected"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="ca5e2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="classification_disposition_value"
        label="Classification disposition value"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="fa5b9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="choose_QP_value"
        label="Choose qp value"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="731c4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="classification_root_cause_value"
        label="Classification root cause value"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="b4427"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="classification_evaluation_of_related_value"
        label="Classification evaluation of related value"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="16ddd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="classification_notification_value"
        label="Classification notification value"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="4d3b0"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="classification_recurrence_value"
        label="Classification recurrence value"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="63cb6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="classification_severity_value"
        label="Classification severity value"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="f7973"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="evaluation"
        label="Evaluation"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="6c04e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="corrective_action"
        label="Corrective action"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="244e5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="preventative_action"
        label="Preventative action"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="65d23"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        hidden="true"
        key="reason"
        label="Reason"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="8656a"
        alignment="left"
        format="avatar"
        formatOptions={{ image: "{{ currentSourceRow.qp_avatarURL }}" }}
        groupAggregationMode="none"
        hidden="true"
        label="qp"
        placeholder="No user"
        position="center"
        referenceId="qp"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.qp_firstname}} {{currentSourceRow.qp_lastName}}"
      />
      <Column
        id="c96a9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="type_of_modification_value"
        label="Type of modification value"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="19e55"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="qp_firstname"
        label="Qp firstname"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="3971a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="qp_lastName"
        label="Qp last name"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ae2cd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="qp_avatarURL"
        label="Qp avatar url"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Action
        id="dbcbc"
        icon="bold/interface-setting-menu-horizontal"
        label="Expand"
      >
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="splitPaneFrame2"
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
          pluginId="tableProject2"
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
          pluginId="tableProject2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Module
      id="globalSearch4"
      input2="{{ randNo.data }}"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE="Deviation"
      refresh="refresh2"
    />
  </View>
</Container>
