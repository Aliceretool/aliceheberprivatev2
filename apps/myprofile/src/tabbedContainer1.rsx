<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
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
      <Option id="b09df" value="Tab 1" />
      <Option id="dca7c" value="Tab 2" />
      <Option id="b3c92" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="71efb" label="Details" viewKey="Details">
    <Select
      id="select_title"
      emptyMessage="No options"
      itemMode="static"
      label="Title"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      value="{{ getUserP.data?.title[0] }}"
    >
      <Option id="57b9b" value="Mr" />
      <Option id="f36db" value="Mrs" />
      <Option id="b4336" value="Miss" />
      <Option id="93d0b" disabled={false} hidden={false} value="Ms" />
      <Option id="5fad1" disabled={false} hidden={false} value="Dr" />
    </Select>
    <TextInput
      id="textInput_firstName"
      label="First Name"
      labelPosition="top"
      marginType="normal"
      value="{{ getUserP.data?.firstName[0] }}"
    />
    <TextInput
      id="textInput_lastName"
      label="Last Name"
      labelPosition="top"
      marginType="normal"
      value="{{ getUserP.data?.lastName[0] }}"
    />
    <Module
      id="avatarUploader1"
      name="Avatar Uploader"
      pageUuid="24723d29-e6b7-4218-a3bc-0b5e0e559944"
      userID="{{getUserP.data.userID[0]}}"
    />
    <Avatar
      id="avatar2"
      fallback="{{ `${getUserP.data.firstName[0]} ${getUserP.data.lastName[0]}` }}"
      imageSize={48}
      label=""
      src="{{getUserP.data.avatarURL[0]}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Link id="link1" text="Reset Password" />
  </View>
  <View id="33a13" label="Membership" viewKey="View 2">
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getMembership.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="91a32"
        alignment="left"
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
        id="542ad"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="userID"
        label="User id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ea780"
        alignment="left"
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
        id="d0367"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="isActive"
        label="Is active"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bba3e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project"
        label="Project"
        placeholder="Select option"
        position="center"
        size={155}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="927c2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="project_role"
        label="Project role"
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="b12a9" label="Preferences" viewKey="preerences">
    <Select
      id="select_language"
      captionByIndex=""
      colorByIndex=""
      data="{{ getLanguage.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Language"
      labelPosition="top"
      labels="{{ item.name }}"
      marginType="normal"
      overlayMaxHeight={375}
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getUserP.data.languageID[0] }}"
      values="{{ item.languageID }}"
    >
      <Option
        id="21b5a"
        disabled={false}
        hidden={false}
        label="🇬🇧 English"
        value="en"
      />
      <Option
        id="fddc0"
        disabled={false}
        hidden={false}
        label="🇩🇪 Deutsch"
        value="de"
      />
      <Option
        id="f6cac"
        disabled={false}
        hidden={false}
        label="🇪🇸 Español"
        value="es"
      />
      <Option
        id="55f69"
        disabled={false}
        hidden={false}
        label="🇫🇷 Français"
        value="fr"
      />
      <Option
        id="1439b"
        disabled={false}
        hidden={false}
        label="AR Arabic"
        value="ar"
      />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            { src: "utils.changeLocale(select_language.selectedItem.code)" },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Switch
      id="switch1"
      label="Dark Mode"
      labelPosition="left"
      value="{{ getUserP.data.darkmode[0] }}"
    />
  </View>
</Container>
