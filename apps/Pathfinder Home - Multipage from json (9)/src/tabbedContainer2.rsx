<Container
  id="tabbedContainer2"
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
      id="tabs2"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "primary" }] }}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="bdd9e" value="Tab 1" />
      <Option id="c3760" value="Tab 2" />
      <Option id="d73aa" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="9ec83"
    label="{{ i18n.t(formattedProjectFieldValues.data.by_id['153f0e9e-7959-435a-aaa7-f340ca3b3cd8'].field_value) }}"
    viewKey="General"
  >
    <TextInput
      id="textInput11"
      label="{{ i18n.t('Type') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="true"
      value="{{ getIssue2.data.project_type_value[0] }}"
    />
    <Select
      id="select_source"
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getProject_field_source_values.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t('Source') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getIssue2.data.sourceID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_source"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="select_responsibleDepartment"
      automaticItemColors={true}
      data="{{ getProject_field_responsibleDepartment_values.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t(formattedProjectFieldValues.data.by_id['66d43fc9-a864-4d86-abf8-f00cd830d1da'].field_value) }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue2.data.responsible_departmentID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_responsibleDepartment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_responsibleDepartment_person"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="select_responsibleDepartmentPerson"
      captionByIndex="{{ item.email }}"
      data="{{ getUsers2.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t(formattedProjectFieldValues.data.by_id['6a754c53-0c50-4cc9-8574-25ddc724bec6'].field_value) }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showClear={true}
      showSelectionIndicator={true}
      value="{{ getIssue2.data.department_manager[0] }}"
      values="{{ item.userID }}"
    />
    <Select
      id="select_referenceIssue"
      automaticItemColors={true}
      captionByIndex="{{ item.status_value }}"
      colorByIndex=""
      data="{{ getDeviationIssues.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t(formattedProjectFieldValues.data.by_id['1792370d-a5aa-43bd-8a8e-e949eab2eb6d'].field_value) }}"
      labelPosition="top"
      labels="{{ item.issue_index}}: {{ item.issue }} "
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex="{{ item.issue}}"
      value="{{ getIssue2.data.reference_issueID[0] }}"
      values="{{ item.issueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_reference"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="textInput_specificReference"
      disabled="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      formDataKey="batch_no"
      label="{{ i18n.t('Specific Reference') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue2.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue2.data.specific_reference[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_specificReference"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput10"
      disabled=""
      hidden="{{ getIssue2.data?.closure_ref[0] == null }}"
      label="{{ i18n.t('Closure REF') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      value="{{ getIssue2.data?.closure_ref[0] }}"
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
    id="98810"
    disabled={false}
    hidden="{{ showAdditional.value }}"
    iconPosition="left"
    label="{{ i18n.t('formattedProjectFieldValues.data.by_id['bd727f13-dd49-4093-9024-8015615042f2'].field_value) }}"
    viewKey="Additional"
  >
    <SegmentedControl
      id="select_typeOfModificationDetail"
      data="{{ getProject_field_typeOfModification_values2.data }}"
      disabled="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      disabledByIndex="{{ ['Closed','QP Rejected'].includes(getIssue2.data.status_value[0]) }}"
      hidden="{{ showModifiedFields.value }}"
      label="{{ i18n.t('Type of Modification') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue2.data.type_of_modificationID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_TypeModification"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
    </SegmentedControl>
    <TextArea
      id="textArea_impactQSE"
      autoResize={true}
      disabled=""
      hidden="{{ showModifiedFields.value }}"
      label="{{ i18n.t('Impact on Q/S/E') }}"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      value="{{ getIssue2.data?.impact_q_s_e[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_impactQSE"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextArea
      id="textArea_impactSupplierClientScheduling"
      autoResize={true}
      disabled=""
      hidden="{{ showModifiedFields.value }}"
      label="{{ i18n.t('Impact on Supplier / Content / Scheduling') }}"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      value="{{ getIssue2.data?.impact_supplier_client_scheduling[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_impact_SupplierClientScheduling"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextArea
      id="textArea_proposedModificationJustification"
      autoResize={true}
      disabled=""
      hidden="{{ showModifiedFields.value }}"
      label="{{ i18n.t('Proposed Modification & Justification') }}"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      value="{{ getIssue2.data?.proposed_modification[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_ProposedModification"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextArea
      id="textArea_withdrawlJustification"
      autoResize={true}
      disabled=""
      hidden="{{ getIssue2.data?.justification[0] == null }}"
      label="{{ i18n.t('Withdrawl Justification') }}"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      value="{{ getIssue2.data?.justification[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_justification"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
  </View>
</Container>
