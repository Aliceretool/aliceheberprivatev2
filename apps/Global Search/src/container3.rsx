<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader="false"
>
  <Header>
    <Text
      id="containerTitle8"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="48caf" viewKey="View 1">
    <TextInput
      id="table1SearchFilter"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="{{i18n.t ('Search in Table') }}"
      value=" "
    />
    <DateRange
      id="dueDate"
      dateFormat="dd MMM, yyyy"
      endPlaceholder="{{i18n.t ('End date') }}"
      iconBefore="bold/interface-calendar-remove"
      label="{{ i18n.t('Due Date')}}"
      labelPosition="top"
      marginType="normal"
      showClear={true}
      startPlaceholder="{{i18n.t ('Start date') }}"
      textBetween="-"
      tooltipText="Due Date"
      value={{
        ordered: [
          { start: "{{  moment(). subtract(90, 'days'). toDate()}}" },
          { end: "{{  moment(). add(90, 'days'). toDate()}}" },
        ],
      }}
    />
    <Multiselect
      id="selectProject_value"
      automaticItemColors={true}
      data="{{ tableProject.data.map (x=> x.project_value) }}"
      emptyMessage="No options"
      label="{{i18n.t ('Project') }}"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      value=""
      values="{{i18n.t (item) }}"
      wrapTags={true}
    />
    <Multiselect
      id="selectAssignedTo"
      automaticItemColors={true}
      data="{{ tableProject.data.map (x=> x.assigned_to_first_last_email)}}"
      emptyMessage="No options"
      label="{{i18n.t ('Assignee') }}"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      value="[{{ getUser_filtered_current.data.assigned_to_first_last_email[0] }}]"
      values="{{i18n.t (item) }}"
      wrapTags={true}
    />
    <Multiselect
      id="selectStatus_Values"
      automaticItemColors={true}
      data="{{ tableProject.data.map (x=> x.status_value) }}"
      emptyMessage="No options"
      label="{{i18n.t ('Status') }}"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{i18n.t (item) }}"
      wrapTags={true}
    />
    <Table
      id="tableProject"
      actionsOverflowPosition={1}
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getOpenAll_CurrentUser.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "19ac2" },
            { columnId: "a0711" },
            { operator: "intersects" },
            { value: "{{ selectStatus_Values.value }}" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "5c4f9" },
            { columnId: "3243b" },
            { operator: "intersects" },
            { value: "{{ selectAssignedTo.value }}" },
            { disabled: false },
          ],
        },
        2: {
          ordered: [
            { id: "1e600" },
            { columnId: "c7384" },
            { operator: "intersects" },
            { value: "{{ selectProject_value.value }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
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
        hidden="false"
        key="issue_index"
        label="{{i18n.t('Issue No.')}}"
        placeholder="Enter value"
        position="center"
        size={92.5625}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{
            ordered: [
              { url: "{{ currentSourceRow.app_path}}" },
              { options: { ordered: [{ newTab: false }] } },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="c7384"
        alignment="left"
        cellTooltipMode="overflow"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_value"
        label="{{i18n.t('Project')}}"
        placeholder="Select option"
        position="center"
        size={138.765625}
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
        size={242}
        summaryAggregationMode="none"
      />
      <Column
        id="cee57"
        alignment="center"
        cellTooltipMode="overflow"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_type_value"
        label="{{i18n.t('Type')}}"
        placeholder="Select option"
        position="center"
        size={133.875}
        summaryAggregationMode="none"
        valueOverride="{{i18n.t(_.startCase(item)) }}"
      />
      <Column
        id="a0711"
        alignment="center"
        cellTooltipMode="overflow"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status_value"
        label="{{i18n.t('Status')}}"
        placeholder="Select option"
        position="center"
        size={71.421875}
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
        size={0}
      />
      <Column
        id="d45fb"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="responsible_department_value"
        label="{{i18n.t('Responsible department')}}"
        placeholder="Enter value"
        position="center"
        size={177.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="64e86"
        alignment="left"
        cellTooltipMode="overflow"
        format="avatar"
        formatOptions={{
          fallbackText: "{{ currentSourceRow.reporter_avatarURL }}",
          image: "{{ currentSourceRow.reporter_avatarURL }}",
        }}
        groupAggregationMode="none"
        label="{{i18n.t('Reporter')}}"
        placeholder="No user"
        position="center"
        referenceId="reporter"
        size={117.453125}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.reporter_firstname}} {{currentSourceRow.reporter_lastName}}"
      />
      <Column
        id="c03c2"
        alignment="left"
        cellTooltipMode="overflow"
        format="date"
        formatOptions={{ dateFormat: "dd MMM, yyyy" }}
        groupAggregationMode="none"
        key="created_at"
        label="{{i18n.t('Created')}}"
        placeholder="Enter value"
        position="center"
        size={104.078125}
        summaryAggregationMode="none"
      />
      <Column
        id="b556f"
        alignment="left"
        cellTooltipMode="overflow"
        format="avatar"
        formatOptions={{ image: "{{currentSourceRow.avatarURL}}" }}
        groupAggregationMode="none"
        label="{{i18n.t('Assignee')}}"
        placeholder="No user"
        position="center"
        referenceId="i18NTAssignee"
        size={112.40625}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
      />
      <Column
        id="1fb98"
        alignment="left"
        cellTooltipMode="overflow"
        format="date"
        formatOptions={{ dateFormat: "dd MMM, yyyy" }}
        groupAggregationMode="none"
        key="due_date"
        label="{{i18n.t('Due date')}}"
        placeholder="Enter value"
        position="center"
        size={91.109375}
        summaryAggregationMode="none"
      />
      <Column
        id="3ef7d"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="assigned_to"
        label="assigned_to_email"
        placeholder="Enter value"
        position="center"
        referenceId="assigned_to_email"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="db1df"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="app_path"
        label="app_path"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="03c52"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="specific_reference"
        label="specific_reference"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="1e31c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="impact_supplier_client_scheduling"
        label="Impact supplier client scheduling"
        placeholder="Enter value"
        position="center"
        referenceId="impact_supplier_client_scheduling "
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="fc898"
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
      <Column
        id="f1766"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="impact_q_s_e"
        label="{{i18n.t('Impact on Q/S/E')}}"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="4d594"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="closure_ref"
        label="closure_ref"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="eb3c6"
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
        id="5923a"
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
        id="4e11d"
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
        id="7192b"
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
        id="0ba11"
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
        id="e3384"
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
        id="b42c4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="type_of_modification_value"
        label="Type of modification value"
        placeholder="Enter value"
        position="center"
        referenceId="typeofmod"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="f1456"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="proposed_modification"
        label="Proposed modification"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="ccdf8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="justification"
        label="Justification"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="ef4a3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="projectID"
        label="Project id"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="2ff52"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_typeID"
        label="Project type id"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="3243b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="assigned_to_first_last_email"
        label="Assigned to first last email"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Action
        id="adc00"
        icon="line/interface-setting-menu-horizontal"
        label="Expand"
      >
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="clickAction"
          method="run"
          params={{
            ordered: [{ src: 'tabbedContainer6.currentViewKey("General")' }],
          }}
          pluginId=""
          type="script"
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
  </View>
</Container>
