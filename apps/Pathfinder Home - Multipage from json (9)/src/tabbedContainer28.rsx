<Container
  id="tabbedContainer28"
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
      id="tabs24"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "primary" }] }}
      targetContainerId="tabbedContainer28"
      value="{{ self.values[0] }}"
    >
      <Option id="bdd9e" value="Tab 1" />
      <Option id="c3760" value="Tab 2" />
      <Option id="d73aa" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="9ec83" label="{{i18n.t('General') }}" viewKey="General">
    <TextInput
      id="textInput18"
      disabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      label="{{ i18n.t('Lab Nos') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="false"
      value="{{ getIssue11.data.lab_nos[0] }}"
    />
    <TextInput
      id="textInput19"
      disabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      label="{{ i18n.t('Method') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="false"
      value="{{ getIssue11.data.anl_method[0] }}"
    />
    <TextInput
      id="textInput_test"
      disabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      formDataKey="parent_batch_no"
      label="{{ i18n.t('Test') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue11.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue11.data.test[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_raw_data"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Select
      id="select_type_of_analysis"
      automaticItemColors={true}
      data="{{ getProject_field_type_of_analysis.data }}"
      disabled=""
      disabledByIndex="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      emptyMessage="No options"
      label="{{ i18n.t('Analysis Type') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue11.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue11.data.analysis_type[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_type_of_certification2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_type_of_analysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="textInput17"
      disabled="{{getIssue11.data.status_value == 
  'Closed'}}"
      hidden={'{{ getIssue11.data?.analysis_other[0] == "" }}'}
      label=""
      labelPosition="top"
      marginType="normal"
      value="{{ getIssue11.data?.analysis_other[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_ClosureREF"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
  <View
    id="4948d"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('Results')}}"
    viewKey="Results"
  >
    <TextArea
      id="textArea12"
      autoResize={true}
      disabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      label="{{ i18n.t('Raw Data') }}"
      labelPosition="top"
      minLines="4"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue11.data.raw_data[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_raw_data"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextInput
      id="textInput15"
      disabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      label="{{ i18n.t('Equipment No.') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue11.data.equipment_no[0] }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_equipment_no"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput16"
      disabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      label="{{ i18n.t('Reference/OOS/OOT') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue11.data.references_oos_oot[0] }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_references"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
</Container>
