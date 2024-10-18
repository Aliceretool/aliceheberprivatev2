<Container
  id="container31"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle75"
      value="#### {{ i18n.t('Time Tracking')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="08d32" viewKey="View 1">
    <TextInput
      id="table6SearchFilter2"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Search in table"
    />
    <Button id="button147" text="{{ i18n.t('Add Account')}}">
      <Event
        event="click"
        method="show"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="modalFrame9"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clear"
        params={{ ordered: [] }}
        pluginId="form47"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="focus"
        params={{ ordered: [] }}
        pluginId="textInput76"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Table
      id="table40"
      clearChangesetOnSave={true}
      data="{{ getTime_accounts2.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="72272"
      searchTerm="{{ table6SearchFilter2.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="72272"
        alignment="left"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="accountID"
        label="Account id"
        placeholder="Enter value"
        position="center"
        size={280.671875}
        summaryAggregationMode="none"
      />
      <Column
        id="b7730"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="account_key"
        label="{{ i18n.t('Key')}}"
        placeholder="Select option"
        position="center"
        size={118.953125}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="c4071"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="account_name"
        label="{{ i18n.t('Name')}}"
        placeholder="Enter value"
        position="center"
        size={393.296875}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="35d4b"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="{{ i18n.t('Status')}}"
        optionList={{
          manualData: [
            { ordered: [{ value: "Open" }] },
            { ordered: [{ value: "Closed" }] },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={102.984375}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      >
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getlogo4"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="92c89"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="company_name"
        label="{{ i18n.t('Client')}}"
        placeholder="Enter value"
        position="center"
        size={240.453125}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="0640a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="client_id"
        label="Client ID"
        placeholder="Enter value"
        position="center"
        size={77}
        summaryAggregationMode="none"
      />
      <Column
        id="8565c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={184.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="30dde"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.53125}
        summaryAggregationMode="none"
      />
      <Column
        id="74b5c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="type"
        label="{{ i18n.t('Type')}}"
        placeholder="Enter value"
        position="center"
        size={75.375}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="cfe00"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="company_address"
        label="Company address"
        placeholder="Enter value"
        position="center"
        size={407.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="8ae7c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="company_contact"
        label="{{ i18n.t('Company contact')}}"
        placeholder="Enter value"
        position="center"
        size={163.8125}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="da0a1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="company_phone"
        label="Company phone"
        placeholder="Enter value"
        position="center"
        size={110.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="3b8f9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="created_by"
        label="Created by"
        placeholder="Enter value"
        position="center"
        size={150.53125}
        summaryAggregationMode="none"
      />
      <Column
        id="d836e"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="company_email"
        label="{{ i18n.t('Company email')}}"
        position="center"
        size={223}
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
        id="3bac0"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="company_website"
        label="Company website"
        position="center"
        size={156.078125}
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
        id="6334c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="date_created"
        label="Date created"
        placeholder="Enter value"
        position="center"
        size={184.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="21fa0"
        alignment="left"
        editable="true"
        editableOptions={{ showStepper: true, allowCustomValue: false }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        hidden="false"
        key="id"
        label="{{ i18n.t('Product')}}"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProducts5.data }}",
          valueByIndex: "{{ item.id }}",
          fallbackTextByIndex: "{{ i18n.t(item.ProductDisplayText) }}",
          labelByIndex: "{{ i18n.t(item.ProductDisplayText) }}",
        }}
        placeholder="Select option"
        position="center"
        referenceId="products"
        size={61.84375}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
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
          pluginId="table40"
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
          pluginId="table40"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updTable2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <TextInput
      id="table7SearchFilter"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="{{ i18n.t('Search in table')}}"
    />
    <Table
      id="table41"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getLoggedTime2.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      searchTerm="{{ table7SearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="84775"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="issue_index"
        label="{{ i18n.t('Issue index')}}"
        placeholder="Enter value"
        position="center"
        size={91.171875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ccf4c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="Issue id"
        placeholder="Enter value"
        position="center"
        size={282.28125}
        summaryAggregationMode="none"
      />
      <Column
        id="8cdf9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="userID"
        label="User id"
        placeholder="Enter value"
        position="center"
        size={276.828125}
        summaryAggregationMode="none"
      />
      <Column
        id="78584"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="{{ i18n.t('Description')}}"
        placeholder="Enter value"
        position="center"
        size={170.84375}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="5d454"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="time"
        label="{{ i18n.t('Hrs')}}"
        placeholder="Enter value"
        position="center"
        size={44.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="244c8"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="date_start"
        label="{{ i18n.t('Date')}}"
        placeholder="Enter value"
        position="center"
        size={170.25}
        summaryAggregationMode="none"
      />
      <Column
        id="2191d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="issue"
        label="{{ i18n.t('Issue')}}"
        placeholder="Enter value"
        position="center"
        size={437.90625}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="881a9"
        alignment="left"
        format="avatar"
        formatOptions={{
          automaticColors: true,
          image: "{{currentSourceRow.avatarURL}}",
        }}
        groupAggregationMode="none"
        label="{{ i18n.t('Name')}}"
        placeholder="No user"
        position="center"
        referenceId="i18NTName"
        size={100}
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
          pluginId="table41"
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
          pluginId="table41"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
