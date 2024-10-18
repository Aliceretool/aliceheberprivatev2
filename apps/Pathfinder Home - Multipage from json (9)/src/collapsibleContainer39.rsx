<Container
  id="collapsibleContainer39"
  _gap={0}
  currentViewKey="{{ collapsibleContainer39.showBody }}"
  disabled=""
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody="true"
  showHeader={true}
  style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle43"
      marginType="normal"
      value="#### {{ getReferenceIssue.data.issue_index[0] }} {{i18n.t('Change Control Details')}}"
      verticalAlign="center"
    />
    <TagsWidget2
      id="tags9"
      allowWrap={true}
      data={'["Foo", "Bar", "Baz"]'}
      horizontalAlign="center"
      labels="{{i18n.t(getReferenceIssue.data.status_value[0])}}"
      margin="0"
      value=""
      values="{{ getReferenceIssue.data.status_value[0] }}"
    />
  </Header>
  <View id="b5896" viewKey="Change Details">
    <TextInput
      id="textInput79"
      label="{{ i18n.t('Summary') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="true"
      value="{{ getReferenceIssue.data.issue[0] }}"
    />
    <Select
      id="select65"
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data=""
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="{{ i18n.t('Responsible section') }}"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{getReferenceIssue.data.responsible_department_value[0]}}"
      values=""
    >
      <Option
        id="dbd8c"
        disabled={false}
        hidden={false}
        value="{{i18n.t(getReferenceIssue.data.responsible_department_value[0])}}"
      />
    </Select>
    <Select
      id="select66"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      data="{{ getUsers10.data }}"
      disabled="false"
      emptyMessage="No options"
      label="{{ i18n.t('Responsible Person') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{getReferenceIssue.data.department_manager[0]}}"
      values="{{ item.userID }}"
    />
    <Select
      id="select69"
      automaticItemColors={true}
      data="{{ getProject_field_typeOfChange_values2.data }}"
      emptyMessage="No options"
      label="{{ i18n.t('Type of Change') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ getReferenceIssue.data.typeID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    />
    <Multiselect
      id="multiselect24"
      automaticItemColors={true}
      data="{{ getProject_field_sourceOfChange_values2.data }}"
      emptyMessage="No options"
      label="{{ i18n.t('Source of change') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select options') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getReferenceIssue.data.sourceID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Select
      id="select70"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject8.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('CRF Assignee') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == getReferenceIssue.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <Date
      id="date6"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('CRF Due Date') }}"
      labelPosition="top"
      readOnly="true"
      value="{{ getReferenceIssue.data.due_date[0] }}"
    />
    <TextArea
      id="textArea40"
      autoResize={true}
      disabled="false"
      label="{{ i18n.t('Description') }}"
      labelPosition="top"
      minLines="4"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="true"
      value={
        "{{ getReferenceIssue.data.description[0] ==  '<p>undefined</p>' || getReferenceIssue.data.description[0] ==  '<p>null</p>' ? \"\" : getReferenceIssue.data.description[0] }}"
      }
    />
    <Divider
      id="divider4"
      style={{
        ordered: [
          { fontSize: "h6Font" },
          { fontWeight: "700" },
          { lineHeight: "1.14em" },
        ],
      }}
      textSize="h6"
    />
    <TextInput
      id="textInput78"
      hidden="{{ getIssue16.data.closure_ref[0] == null }}"
      label="{{ i18n.t('Task Closure REF') }}"
      marginType="normal"
      readOnly="{{['Closed'].includes(getIssue16.data.status_value[0]) }}"
      value="{{ getIssue16.data.closure_ref[0] }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_closureRef"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
</Container>
