<Container
  id="container20"
  _gap={0}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text id="containerTitle64" value="#### Clients" verticalAlign="center" />
    <Button id="button9" text="Supplier Qualification">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button7"
      style={{ ordered: [{ background: "secondary" }] }}
      text="+ Add new "
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setCurrentViewIndex"
        params={{ ordered: [{ viewIndex: "0" }] }}
        pluginId="steppedContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "0" }] }}
        pluginId="variable1"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Modal
      id="modal9"
      buttonText="Edit"
      closeOnOutsideClick={true}
      hidden="true"
      modalHeightType="auto"
      modalOverflowType="hidden"
      modalWidth="65%"
      style={{ ordered: [{ "accent-background": "#CA483F" }] }}
    >
      <Form
        id="form34"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table32.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle32"
            marginType="normal"
            value="#### Edit {{table32.selectedRow.company_name}}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput52"
            formDataKey="company_name"
            label="Company name"
            marginType="normal"
            placeholder="Enter value"
            value="{{table32.selectedRow.company_name}}"
          />
          <Select
            id="select4"
            emptyMessage="No options"
            formDataKey="type"
            itemMode="static"
            label="Type"
            labels={null}
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            value="{{table32.selectedRow.type}}"
            values={null}
          >
            <Option id="5a17a" value="Buyer" />
            <Option
              id="35de6"
              disabled={false}
              hidden={false}
              value="Supplier"
            />
          </Select>
          <TextArea
            id="textArea28"
            autoResize={true}
            formDataKey="company_address"
            label="Company address"
            marginType="normal"
            minLines={2}
            placeholder="Enter value"
            required={true}
            value="{{table32.selectedRow.company_address}}"
          />
          <TextInput
            id="textInput49"
            formDataKey="company_contact"
            label="Company contact"
            marginType="normal"
            placeholder="Enter value"
            value="{{table32.selectedRow.company_contact}}"
          />
          <TextInput
            id="textInput53"
            formDataKey="company_contact"
            label="Company phone"
            marginType="normal"
            placeholder="Enter value"
            value="{{table32.selectedRow.company_phone
}}"
          />
          <TextInput
            id="textInput50"
            formDataKey="company_email"
            iconBefore="bold/mail-send-envelope"
            label="Company email"
            marginType="normal"
            patternType="email"
            placeholder="you@example.com"
            value="{{table32.selectedRow.company_email}}"
          />
          <TextInput
            id="textInput51"
            formDataKey="company_website"
            label="Company website"
            marginType="normal"
            patternType="url"
            placeholder="exelcis.com"
            textBefore="https://"
            value="{{table32.selectedRow.company_website}}"
          />
        </Body>
        <Footer>
          <Button
            id="formButton24"
            marginType="normal"
            submit={true}
            submitTargetId="form34"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updateRow"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Header>
  <View id="08d32" viewKey="View 1">
    <Include src="./container24.rsx" />
    <Container
      id="container23"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle67"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="400ca" viewKey="View 1">
        <Container
          id="group31"
          _gap="0px"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0px"
          padding="0px"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="400ca" viewKey="View 1">
            <Text
              id="text91"
              value="Total No. of Clients"
              verticalAlign="center"
            />
            <Text
              id="text92"
              value="### {{formatDataAsArray(get_Buyers.data).length }}"
              verticalAlign="center"
            />
            <Text id="text94" value="last 28 days" verticalAlign="center" />
            <Text
              id="text93"
              style={{ ordered: [{ color: "secondary" }] }}
              value="+12%"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <TextInput
      id="table2SearchFilter"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Search in table"
    />
    <Table
      id="table32"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getclients.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { columnId: "" },
            { operator: "includes" },
            { value: "" },
            { id: "77a2a" },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      groupByColumns={{}}
      overflowType="pagination"
      primaryKeyColumnId="212f1"
      searchTerm="{{ table2SearchFilter.value }}"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="212f1"
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
        size={0}
      />
      <Column
        id="f9ccf"
        alignment="left"
        format="avatar"
        formatOptions={{
          icon: '{{ { success:  "/icon:bold/interface-validation-check-circle"  }[item] }}',
        }}
        groupAggregationMode="none"
        key="company_name"
        label="Company name"
        placeholder="No user"
        position="center"
        size={255}
      />
      <Column
        id="02dd5"
        alignment="center"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={124}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="84062"
        alignment="left"
        format="multilineString"
        groupAggregationMode="none"
        key="company_address"
        label="Company address"
        placeholder="Enter value"
        position="center"
        size={327}
      />
      <Column
        id="ccd96"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="company_contact"
        label="Main contact"
        placeholder="Enter value"
        position="center"
        size={149}
      />
      <Column
        id="590f1"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="avatar"
        formatOptions={{
          icon: '{{ { success:  "/icon:bold/interface-validation-check-circle"  }[item] }}',
        }}
        groupAggregationMode="sum"
        key="company_phone"
        label="Company phone"
        placeholder="No user"
        position="center"
        size={173}
      />
      <Column
        id="0e287"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="company_email"
        label="Company email"
        position="center"
        size={234}
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
        id="06ade"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="company_website"
        label="Company website"
        position="center"
        size={0}
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
      <Action id="3416c" icon="bold/interface-edit-pencil" label="Edit Details">
        <Event
          event="clickAction"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal9"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table32"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table32"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getusers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
