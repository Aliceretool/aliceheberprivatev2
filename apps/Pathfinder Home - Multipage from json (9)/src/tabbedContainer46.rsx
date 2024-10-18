<Container
  id="tabbedContainer46"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
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
    <Tabs
      id="tabs39"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      targetContainerId="tabbedContainer46"
      value="{{ self.values[0] }}"
    >
      <Option id="c0991" value="Tab 1" />
      <Option id="5fc51" value="Tab 2" />
      <Option id="617c5" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="57599"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('Parameter')}}"
    tooltip="{{ i18n.t('A parameter record is the core of the application, and is used to store instance level configuration values.  Please make sure a record is added on install of the application by your administrator.')}}"
    viewKey="Parameter"
  >
    <Table
      id="table28"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getParameter2.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="07f7c"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="07f7c"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="parameterId"
        label="{{ i18n.t('Parameter ID')}}"
        placeholder="Enter value"
        position="center"
        size={343}
        summaryAggregationMode="none"
      />
      <Column
        id="2c69a"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="Instance"
        label="{{ i18n.t('Instance')}}"
        placeholder="Enter value"
        position="center"
        size={178}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="a0f97"
        alignment="left"
        editable="true"
        format="string"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="ClientAdminEmail"
        label="{{ i18n.t('Client admin email')}}"
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
          event="clickToolbar"
          method="exportData"
          pluginId="table28"
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
          pluginId="table28"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updParameter"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="368e5"
    label="{{ i18n.t('User Permissions')}}"
    viewKey="User Permissions"
  >
    <Modal
      id="modal1"
      buttonText="{{ i18n.t('Add User')}}"
      modalHeightType="auto"
    >
      <Form
        id="form4"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ tableUser.selectedRow }}"
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
            id="formTitle4"
            marginType="normal"
            value="#### Add User"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput4"
            formDataKey="email"
            iconBefore="bold/mail-send-envelope"
            label="Email"
            labelPosition="top"
            marginType="normal"
            patternType="email"
            placeholder="you@example.com"
            required={true}
          />
          <TextInput
            id="textInput32"
            formDataKey="firstName"
            label="First name"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="textInput6"
            formDataKey="lastName"
            label="Last name"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <DateTime
            id="dateTime1"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="addedOn"
            hidden="true"
            iconBefore="bold/interface-calendar"
            label="Added on"
            labelPosition="top"
            marginType="normal"
            minuteStep={15}
            required={true}
            value="{{ new Date() }}"
          />
          <TextInput
            id="textInput7"
            formDataKey="addedBy"
            hidden="true"
            label="Added by"
            labelPosition="top"
            marginType="normal"
            patternType="url"
            placeholder="retool.com"
            required={true}
            textBefore="https://"
          />
          <Checkbox
            id="checkbox2"
            formDataKey="isActive"
            label="Is active"
            marginType="normal"
            required={true}
            value="true"
          />
          <Checkbox id="checkbox5" label="Client Admin" />
          <Checkbox id="checkbox6" label="System Admin" />
        </Body>
        <Footer>
          <Button
            id="formButton4"
            marginType="normal"
            submit={true}
            submitTargetId="form4"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insUser2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <TextInput
      id="tableUserSearchFilter"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="{{ i18n.t('Search in table')}}"
    />
    <Table
      id="tableUser"
      actionsOverflowPosition={2}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUser14.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="e399f"
      rowHeight="medium"
      searchTerm="{{ tableUserSearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="6fa11"
        alignment="left"
        editable="true"
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="title"
        label="{{ i18n.t('Title')}}"
        placeholder="Enter value"
        position="center"
        size={54}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="4a882"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="firstName"
        label="{{ i18n.t('First Name')}}"
        placeholder="Enter value"
        position="center"
        size={104.140625}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="79509"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="lastName"
        label="{{ i18n.t('Last Name')}}"
        placeholder="Enter value"
        position="center"
        size={109.921875}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="28169"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="email"
        label="{{ i18n.t('Email')}}"
        position="center"
        size={208.875}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
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
        id="596d7"
        alignment="left"
        editable="true"
        format="datetime"
        groupAggregationMode="none"
        key="addedOn"
        label="{{ i18n.t('Added On')}}"
        placeholder="Enter value"
        position="center"
        size={170.171875}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="75a87"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="addedBy"
        label="{{ i18n.t('Added By')}}"
        position="center"
        size={193.875}
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
        id="094eb"
        alignment="center"
        editable="true"
        editableOptions={{ alwaysShowCheckboxes: true }}
        format="boolean"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          falseIcon: "bold/interface-delete-1",
        }}
        groupAggregationMode="sum"
        key="isActive"
        label="{{ i18n.t('Active')}}"
        placeholder="Enter value"
        position="center"
        size={112}
        summaryAggregationMode="none"
      />
      <Column
        id="e399f"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="userID"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="431fe"
        alignment="left"
        editable="true"
        format="image"
        formatOptions={{
          icon: '{{ item === "success" ? "/icon:bold/interface-validation-check-circle" : "/icon:bold/interface-alert-warning-circle" }}',
          widthType: "fit",
        }}
        groupAggregationMode="none"
        key="avatarURL"
        label="{{ i18n.t('Avatar')}}"
        optionList={{ mode: "manual" }}
        placeholder="Enter value"
        position="center"
        size={113}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.avatarURL }}"
      />
      <Column
        id="ea184"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="languageID"
        label="{{ i18n.t('Preferred Language')}}"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getLanguage.data }}",
          valueByIndex: "{{ item.languageID }}",
          labelByIndex: "{{ item.name }}",
          manualData: [
            { ordered: [{ value: "🇫🇷 Francais" }] },
            { ordered: [{ value: "🇩🇪 Deutsch" }] },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={141}
        summaryAggregationMode="none"
      />
      <Column
        id="091e4"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="avatar"
        label="Avatar"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a2fb8"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="languageID"
        label="Language id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="aa9ef"
        alignment="center"
        editable="true"
        editableOptions={{ alwaysShowCheckboxes: true }}
        format="boolean"
        formatOptions={{ falseIcon: "bold/interface-delete-1" }}
        groupAggregationMode="none"
        key="clientAdmin"
        label="{{ i18n.t('Client Admin')}}"
        placeholder="Enter value"
        position="center"
        size={119}
        summaryAggregationMode="none"
        valueOverride="{{item}}"
      />
      <Column
        id="720e2"
        alignment="center"
        editable="true"
        editableOptions={{ alwaysShowCheckboxes: true }}
        format="boolean"
        formatOptions={{ falseIcon: "bold/interface-delete-1" }}
        groupAggregationMode="none"
        key="sysAdmin"
        label="{{ i18n.t('System Admin')}}"
        placeholder="Enter value"
        position="center"
        size={218.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="07e4c"
        alignment="left"
        editable="true"
        editableOptions={{ object: {} }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="code"
        label="Code"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Action id="1fbe7" icon="bold/interface-delete-bin-1" label="Action 1">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delUser"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action id="6347b" icon="bold/interface-user-square" label="Add Avatar">
        <Event
          event="clickAction"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal_addAvatar"
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
          pluginId="tableUser"
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
          pluginId="tableUser"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updUser"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Include src="./container19.rsx" />
    <Container
      id="container18"
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
          id="containerTitle56"
          marginType="normal"
          value="Permissions for {{tableUser.selectedRow.email}}"
          verticalAlign="center"
        />
      </Header>
      <View id="f7bed" viewKey="View 1">
        <Table
          id="table_user_permission"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getUser_project_role.data }}"
          defaultFilters={{
            0: {
              ordered: [
                { id: "49719" },
                { columnId: "4e656" },
                { operator: "includes" },
                { value: "{{tableUser.selectedRow.userID}}" },
                { disabled: false },
              ],
            },
          }}
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={[{ ordered: [{ columnId: "fe55d" }] }]}
          primaryKeyColumnId="c0354"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="c0354"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="user_project_roleID"
            label="User project role id"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="4e656"
            alignment="left"
            editable={false}
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="userID"
            label="User"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getUser14.data }}",
              valueByIndex: "{{ item.userID }}",
              labelByIndex: "{{ `${item.firstName} ${item.lastName}` }}",
            }}
            placeholder="Select option"
            position="center"
            size={134.34375}
            summaryAggregationMode="none"
          />
          <Column
            id="fe55d"
            alignment="left"
            editable={false}
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="projectID"
            label="Project"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getProject15.data }}",
              valueByIndex: "{{ item.projectID }}",
              labelByIndex: "{{item.project}}",
            }}
            placeholder="Select option"
            position="center"
            size={214}
            summaryAggregationMode="none"
          />
          <Column
            id="8de42"
            alignment="left"
            editable="false"
            format="tag"
            formatOptions={{ automaticColors: false }}
            groupAggregationMode="none"
            key="project_roleID"
            label="Project Role"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getProject_roles.data }}",
              valueByIndex: "{{ item.project_roleID }}",
              labelByIndex: "{{item.project_role}}",
              manualData: [],
            }}
            placeholder="Select option"
            position="center"
            size={884.46875}
            summaryAggregationMode="none"
          />
          <Column
            id="db02a"
            alignment="center"
            backgroundColor="{{ theme.highlight }}"
            editable="true"
            format="boolean"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="isActive"
            label="Is Active"
            placeholder="Enter value"
            position="right"
            size={64.1875}
            summaryAggregationMode="none"
          />
          <Action
            id="cbaee"
            icon="bold/interface-edit-pencil"
            label="Action 1"
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
              pluginId="table_user_permission"
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
              pluginId="table_user_permission"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updUser_project_role"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Button
      id="button140"
      marginType="normal"
      text="Refresh"
      tooltipText="Check for new combinations of users and project roles."
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUserCrossProjectRole"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="7e876"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('Projects, Types, Roles')}}"
    viewKey="Projects, Types, Roles"
  >
    <Modal
      id="modal_project"
      buttonText="{{ i18n.t('Add Project')}}"
      modalHeightType="auto"
    >
      <Form
        id="form1"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ tableProject8.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle1"
            marginType="normal"
            value="#### Add Project"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput1"
            formDataKey="project"
            label="Project"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
            showClear={true}
          />
          <NumberInput
            id="numberInput1"
            currency="USD"
            formDataKey="isActive"
            hidden="true"
            inputValue={0}
            label="Is active"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            value="1"
          />
        </Body>
        <Footer>
          <Button
            id="formButton1"
            marginType="normal"
            submit={true}
            submitTargetId="form1"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insProject"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Modal id="modal_project_type" buttonText="Add Type" modalHeightType="auto">
      <Form
        id="form2"
        disabled=""
        disableSubmit="{{ formatDataAsObject(table26.data).project_type.includes(textInput2.value)  }}"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table26.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle2"
            marginType="normal"
            value="#### Add Type"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput2"
            formDataKey="project_type"
            label="Project type"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <NumberInput
            id="numberInput2"
            currency="USD"
            formDataKey="isActive"
            hidden="true"
            inputValue={0}
            label="Is active"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            value={0}
          />
        </Body>
        <Footer>
          <Button
            id="formButton2"
            marginType="normal"
            submit={true}
            submitTargetId="form2"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insProject_type"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Text
      id="containerTitle57"
      marginType="normal"
      value="{{tableProject8.selectedRow.project}} Project Types"
      verticalAlign="center"
    />
    <Table
      id="tableProject8"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProject15.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="844c8"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="844c8"
        alignment="left"
        editable={false}
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
        id="1680b"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="project"
        label="{{ i18n.t('Project')}}"
        placeholder="Enter value"
        position="center"
        size={403}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(item)}}"
      />
      <Column
        id="aced3"
        alignment="left"
        editable="true"
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ed713"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="projectCode"
        label="Project code"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="503e3"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="numberStart"
        label="Number start"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d8c78"
        alignment="left"
        editable="false"
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="is_project_type_control"
        label="Is project type control"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="fb5ac"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="app_path"
        label="App path"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action id="74675" icon="bold/interface-delete-bin-1" label="Action 1">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delProject"
          type="datasource"
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
          pluginId="tableProject8"
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
          pluginId="tableProject8"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updProject"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Table
      id="table26"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProjectType.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="b4c8c"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="b4c8c"
        alignment="left"
        editable={false}
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
        id="160d5"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="project_type"
        label="Project Type"
        placeholder="Enter value"
        position="center"
        size={436}
        summaryAggregationMode="none"
      />
      <Column
        id="2ef84"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="projectID"
        label="Project id"
        optionList={{
          manualData: [],
          mode: "mapped",
          mappedData: "{{ getProject15.data }}",
          valueByIndex: "{{ item.projectID }}",
          labelByIndex: "{{item.project}}",
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b735e"
        alignment="left"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action id="31e7d" icon="bold/interface-delete-bin-1" label="Action 1">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delProject_type"
          type="datasource"
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
          pluginId="table26"
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
          pluginId="table26"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updProjectType"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Modal
      id="modal_project_role"
      buttonText="Add Project Role"
      modalHeightType="auto"
    >
      <Form
        id="form3"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table27.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle3"
            marginType="normal"
            value="#### Add Project Role"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput3"
            formDataKey="project_role"
            label="Project Role"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <Checkbox
            id="checkbox1"
            formDataKey="isActive"
            hidden="true"
            label="Is active"
            marginType="normal"
            required={true}
            value="true"
          />
        </Body>
        <Footer>
          <Button
            id="formButton3"
            marginType="normal"
            submit={true}
            submitTargetId="form3"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insProject_role"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Modal id="modal_language" buttonText="Add Language" modalHeightType="auto">
      <Form
        id="form11"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ tableProject8.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle11"
            marginType="normal"
            value="#### Add Language"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput40"
            label="Name"
            labelPosition="top"
            marginType="normal"
          />
          <TextInput
            id="textInput41"
            label="Code"
            labelPosition="top"
            marginType="normal"
          />
        </Body>
        <Footer>
          <Button
            id="formButton23"
            marginType="normal"
            submit={true}
            submitTargetId="form11"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insLanguage"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Text
      id="containerTitle58"
      marginType="normal"
      value="{{tableProject8.selectedRow.project}} Project Roles"
      verticalAlign="center"
    />
    <Table
      id="table27"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProject_role.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="781e9"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="781e9"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_roleID"
        label="Project role id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e5111"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="project_role"
        label="Project Role"
        placeholder="Enter value"
        position="center"
        size={416}
        summaryAggregationMode="none"
      />
      <Column
        id="09d4c"
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
        id="81b32"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action id="af6d1" icon="bold/interface-delete-bin-1" label="Action 1">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delProject_role"
          type="datasource"
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
          pluginId="table27"
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
          pluginId="table27"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updProject_role"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Table
      id="table30"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getLanguage.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="00153"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="00153"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="languageID"
        label="Language id"
        placeholder="Enter value"
        position="center"
        size={275.359375}
        summaryAggregationMode="none"
      />
      <Column
        id="2ffdc"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={263.6875}
        summaryAggregationMode="none"
      />
      <Column
        id="b8945"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="code"
        label="Code"
        placeholder="Enter value"
        position="center"
        size={109.875}
        summaryAggregationMode="none"
      />
      <Column
        id="f2f51"
        alignment="center"
        editable="true"
        format="boolean"
        groupAggregationMode="none"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action id="db1b3" icon="bold/interface-delete-bin-1" label="Delete">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delLanguage"
          type="datasource"
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
          pluginId="table30"
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
          pluginId="table30"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updLanguage"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="95c54"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('Project Fields')}}"
    viewKey="Project Fields"
  >
    <Modal id="modal2" buttonText="Add Project Field" modalHeightType="auto">
      <Form
        id="form5"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table_projectFields.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle5"
            marginType="normal"
            value="#### Add Project Field"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput33"
            formDataKey="project_field"
            label="Project field"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <Select
            id="selectDataType"
            emptyMessage="No options"
            itemMode="static"
            label="Data Type"
            labelPosition="top"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
          >
            <Option id="5d322" value="text" />
            <Option id="8c0e9" value="date" />
            <Option id="efa60" value="single select ddl" />
            <Option
              id="9cec5"
              disabled={false}
              hidden={false}
              value="multi select ddl"
            />
            <Option
              id="45887"
              disabled={false}
              hidden={false}
              value="from user list"
            />
          </Select>
          <Checkbox
            id="checkbox3"
            formDataKey="cascade"
            hidden="true"
            label="Cascade*"
            marginType="normal"
            value="true"
          />
          <Checkbox
            id="checkbox4"
            formDataKey="isActive"
            label="Is active*"
            marginType="normal"
            value="true"
          />
        </Body>
        <Footer>
          <Button
            id="formButton5"
            marginType="normal"
            submit={true}
            submitTargetId="form5"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insProject_field"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Include src="./modal5.rsx" />
    <Text
      id="containerTitle59"
      marginType="normal"
      value="{{table_project.selectedRow.project}} Project Fields"
      verticalAlign="center"
    />
    <Table
      id="table_project"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProject15.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="2714d"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="2714d"
        alignment="left"
        editable={false}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="projectID"
        label="Project"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProject15.data }}",
          valueByIndex: "{{ item.projectID }}",
          labelByIndex: "{{item.project}}",
        }}
        placeholder="Select option"
        position="center"
        size={211.453125}
        summaryAggregationMode="none"
      />
      <Column
        id="3eaa6"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="project"
        label="Project"
        placeholder="Enter value"
        position="center"
        size={188.109375}
        summaryAggregationMode="none"
      />
      <Column
        id="233c6"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="projectCode"
        label="Code"
        placeholder="Enter value"
        position="center"
        size={136}
        summaryAggregationMode="none"
      />
      <Column
        id="e9ef7"
        alignment="center"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="numberStart"
        label="Number Start"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9d0fd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={232.984375}
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
          event="clickToolbar"
          method="exportData"
          pluginId="table_project"
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
          pluginId="table_project"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updProject"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Table
      id="table_projectFields"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProject_field.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="c5eb6"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c5eb6"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_fieldID"
        label="Project field id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6002b"
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
        id="c2b6d"
        alignment="left"
        editable="true"
        format="string"
        formatOptions={{ variant: "solid" }}
        groupAggregationMode="none"
        key="project_field"
        label="Project Field"
        placeholder="Enter value"
        position="center"
        size={256}
        summaryAggregationMode="none"
      />
      <Column
        id="ccf27"
        alignment="left"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="cascade"
        label="Cascade"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e5980"
        alignment="left"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4ce40"
        alignment="left"
        editable="true"
        editableOptions={{ allowCustomValue: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="data_type"
        label="Data type"
        optionList={{
          manualData: [
            { ordered: [{ value: "text" }] },
            { ordered: [{ value: "date" }] },
            { ordered: [{ value: "single select ddl" }] },
            { ordered: [{ value: "multi select ddl" }] },
            { ordered: [{ value: "from user list" }] },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={144}
        summaryAggregationMode="none"
      />
      <Column
        id="c09db"
        alignment="left"
        format="icon"
        formatOptions={{
          icon: '{{ "/icon:bold/mail-chat-two-bubbles-oval" }}',
        }}
        groupAggregationMode="none"
        label="Translation"
        placeholder="Enter value"
        position="center"
        referenceId="translation"
        size={135}
        summaryAggregationMode="none"
        valueOverride="View Translations"
      >
        <Event
          event="clickCell"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal_projectFieldTranslations"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getProject_field_translation_filtered"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="clickCell"
          method="copyToClipboard"
          params={{
            ordered: [
              { value: "{{table_projectFields.currentRow.project_FieldID}}" },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
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
          pluginId="table_projectFields"
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
          pluginId="table_projectFields"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updProject_field"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Text
      id="containerTitle61"
      marginType="normal"
      value="Field Values"
      verticalAlign="center"
    />
    <Modal
      id="modal4"
      buttonText="Add Values via CSV"
      modalHeightType="auto"
      tooltipText="Upload and append values by CSV!

CSV MUST HAVE
One and only one column ( no blank columns)
Title of the column to be 'field_value'   just like this, snake case all lowercase."
    >
      <Form
        id="form10"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        marginType="normal"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle10"
            horizontalAlign="center"
            marginType="normal"
            tooltipText="CSV MUST HAVE
One and only one column ( no blank columns)
Title of the column to be 'field_value'   just like this, snake case all lowercase."
            value="#### Upload Field Values via CSV"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <FileInput
            id="fileInput1"
            _isUpgraded={true}
            accept="['csv']"
            iconBefore="bold/programming-browser-search"
            label="Choose CSV"
            labelPosition="top"
            marginType="normal"
            parseFiles={true}
            textBefore="Browse"
          />
        </Body>
        <Footer>
          <Button
            id="formButton10"
            disabled="{{ fileInput1.parsedValue.length == 0}}"
            marginType="normal"
            submitTargetId="form10"
            text="Upload"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="insProject_field_type_value_bulk"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insProject_field_type_value_bulk"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Modal
      id="modal_fieldValueCascade"
      buttonText="Add Values"
      hidden=""
      modalHeightType="auto"
    >
      <Form
        id="form6"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle6"
            marginType="normal"
            value="#### Add Values"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput9"
            label="Value"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
          />
        </Body>
        <Footer>
          <Button
            id="formButton6"
            marginType="normal"
            submit={true}
            submitTargetId="form6"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insProject_field_type_value"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Button id="button2" marginType="normal" text="Refresh">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_project_typeTable_Refresh"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="containerTitle60"
      marginType="normal"
      value="{{table_projectFields.selectedRow.project_field}} Project Field Project Type"
      verticalAlign="center"
    />
    <Table
      id="table_project_field_type_values"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProject_field_type_value.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="fc121"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="fc121"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_field_type_valueID"
        label="Project field type value id"
        placeholder="Enter value"
        position="center"
        size={282.75}
        summaryAggregationMode="none"
      />
      <Column
        id="a8a89"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="project_field_project_typeID"
        label="Project field project type id"
        optionList={{
          mode: "manual",
          mappedData: "{{ getProject_field_project_type.data }}",
          valueByIndex: "{{ item.project_field_project_typeID }}",
          labelByIndex: "{{item.}}",
        }}
        placeholder="Enter value"
        position="center"
        size={264.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="ef694"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="field_value"
        label="Field Value"
        placeholder="Enter value"
        position="center"
        size={294.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="a40ba"
        alignment="left"
        editable="true"
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={121.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="29812"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden={
          '{{ !["66d43fc9-a864-4d86-abf8-f00cd830d1da","ef2cf9dc-0d9e-4d80-9972-454c7b777ca8","863933a5-6e18-4fc7-8486-a4d3496ba724"].includes(table_projectFields.selectedRow.project_fieldID) }}'
        }
        key="responsible_user"
        label="Responsible User"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getUser14.data }}",
          valueByIndex: "{{ item.userID }}",
          labelByIndex: "{{ `${item.firstName} ${item.lastName}` }}",
        }}
        placeholder="Select option"
        position="center"
        size={116}
        summaryAggregationMode="none"
      />
      <Action
        id="e89bb"
        disabled="{{ !['malkhafaji@exelcis.com','zach+exelcis@teamrappid.com'].includes(current_user.email) }}"
        icon="bold/interface-delete-bin-2"
        label="Delete"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delProject_field_project_typeID"
          type="datasource"
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
          pluginId="table_project_field_type_values"
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
          pluginId="table_project_field_type_values"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updproject_field_type_value"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Table
      id="table_project_field_project_type"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getProject_field_project_typeTable.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "58049" },
            { columnId: "7e052" },
            { operator: "includes" },
            { value: "{{table_projectFields.selectedRow.project_fieldID}}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="fc4ee"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="fc4ee"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="project_field_project_typeID"
        label="Project field project type id"
        placeholder="Enter value"
        position="center"
        size={323}
        summaryAggregationMode="none"
      />
      <Column
        id="7e052"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="project_fieldID"
        label="Project field id"
        placeholder="Enter value"
        position="center"
        size={276.5}
        summaryAggregationMode="none"
      />
      <Column
        id="a4b9e"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: false }}
        groupAggregationMode="none"
        key="project_typeID"
        label="Project Type Id"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProjectType_withCascade.data }}",
          valueByIndex: "{{ item.project_typeID }}",
          labelByIndex: "{{item.project_type}}",
        }}
        placeholder="Select option"
        position="center"
        size={342.234375}
        summaryAggregationMode="none"
      />
      <Column
        id="89ac6"
        alignment="left"
        editable="true"
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="isActive"
        label="Is Active"
        placeholder="Enter value"
        position="center"
        size={122.765625}
        summaryAggregationMode="none"
      />
      <Action id="7efca" icon="bold/interface-delete-bin-2" label="Action 1">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delProject_field_project_type"
          type="datasource"
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
          pluginId="table_project_field_project_type"
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
          pluginId="table_project_field_project_type"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updProject_field_project_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Modal
      id="modal_fieldValueCascade2"
      buttonText="Add Relationship"
      hidden="{{ table_projectFields.selectedRow.project_field != 'Status' }}"
      modalHeightType="auto"
    >
      <Form
        id="form9"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle9"
            marginType="normal"
            value="#### Add Relationship"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Select
            id="select1"
            data="{{ getProject_field_type_value.data }}"
            emptyMessage="No options"
            formDataKey="value_from"
            label="From"
            labelPosition="top"
            labels="{{ item.field_value }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            value="{{ table_project_field_type_values.selectedRow.project_field_type_valueID }}"
            values="{{ item.project_field_type_valueID }}"
          />
          <Select
            id="select2"
            data="{{ getProject_field_type_value.data }}"
            emptyMessage="No options"
            formDataKey="value_to"
            hiddenByIndex="{{ item.project_field_type_valueID == select1.value }}"
            label="To"
            labelPosition="top"
            labels="{{ item.field_value }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            value="{{ table_project_field_type_values.selectedRow.project_field_type_valueID }}"
            values="{{ item.project_field_type_valueID }}"
          />
          <TextInput
            id="textInput39"
            formDataKey="transition_name"
            label="Transition Name"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
          />
          <TextArea
            id="textArea25"
            autoResize={true}
            formDataKey="validation_fields"
            label="Validation Fields"
            labelPosition="top"
            marginType="normal"
            minLines={2}
            placeholder="Enter value"
          />
          <TextArea
            id="textArea26"
            autoResize={true}
            formDataKey="permissions"
            label="Permissions"
            labelPosition="top"
            marginType="normal"
            minLines={2}
            placeholder="Enter value"
          />
          <TextArea
            id="textArea27"
            autoResize={true}
            formDataKey="automated_actions"
            label="Automation Actions"
            labelPosition="top"
            marginType="normal"
            minLines={2}
            placeholder="Enter value"
          />
        </Body>
        <Footer>
          <Button
            id="formButton9"
            marginType="normal"
            submit={true}
            submitTargetId="form9"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insField_relationship"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Text
      id="containerTitle63"
      hidden="{{ table_projectFields.selectedRow.project_field != 'Status' }}"
      marginType="normal"
      value="Status Relationships"
      verticalAlign="center"
    />
    <Table
      id="table_field_relationship"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getField_relationship8.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      hidden="{{ table_projectFields.selectedRow.project_field != 'Status' }}"
      primaryKeyColumnId="8ea6f"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="8ea6f"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="field_relationshipID"
        label="Field relationship id"
        placeholder="Enter value"
        position="center"
        size={372.8500061035156}
        summaryAggregationMode="none"
      />
      <Column
        id="921f3"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="value_from"
        label="Value From"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProject_field_type_value.data }}",
          valueByIndex: "{{ item.project_field_type_valueID }}",
          labelByIndex: "{{ item.field_value }}",
          colorByIndex: "{{ theme.surfaceSecondary }}",
          hiddenByIndex: "",
        }}
        position="center"
        size={256.6333312988281}
        summaryAggregationMode="none"
      />
      <Column
        id="ae781"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="value_to"
        label="Value To"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getProject_field_type_value.data }}",
          valueByIndex: "{{ item.project_field_type_valueID }}",
          labelByIndex: "{{ item.field_value }}",
          colorByIndex: "{{ theme.surfaceSecondary }}",
        }}
        position="center"
        size={178.63333129882812}
        summaryAggregationMode="none"
      />
      <Column
        id="c4a92"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="transition_name"
        label="Transition Name"
        position="center"
        size={161.1666717529297}
        summaryAggregationMode="none"
      />
      <Column
        id="0388f"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="validation_fields"
        label="Validation Fields"
        position="center"
        size={179.73333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="018c3"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="permissions"
        label="Permissions"
        position="center"
        size={279.3333282470703}
        summaryAggregationMode="none"
      />
      <Column
        id="3e67c"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="automated_actions"
        label="Automated Actions"
        position="center"
        size={409.04998779296875}
        summaryAggregationMode="none"
      />
      <Column
        id="46f12"
        alignment="center"
        editable="true"
        format="boolean"
        groupAggregationMode="none"
        key="coded"
        label="Coded"
        placeholder="Enter value"
        position="left"
        size={63.46665954589844}
        summaryAggregationMode="none"
      />
      <Column
        id="2b547"
        alignment="center"
        editable="true"
        format="boolean"
        groupAggregationMode="none"
        key="validated"
        label="Validated"
        placeholder="Enter value"
        position="left"
        size={89.80000305175781}
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
          event="clickToolbar"
          method="exportData"
          pluginId="table_field_relationship"
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
          pluginId="table_field_relationship"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updField_relationship"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
