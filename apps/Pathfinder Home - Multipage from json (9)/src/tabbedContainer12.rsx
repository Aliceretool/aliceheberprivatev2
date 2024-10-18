<Container
  id="tabbedContainer12"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  disabled=""
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  heightType="fixed"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs12"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "primary" }] }}
      targetContainerId="tabbedContainer12"
      value="{{ self.values[0] }}"
    >
      <Option id="bdd9e" value="Tab 1" />
      <Option id="c3760" value="Tab 2" />
      <Option id="d73aa" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="9ec83" label="{{i18n.t('General')}}" viewKey="General">
    <TextInput
      id="textInput5"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ getIssue4.data.project[0] == 'Deviation'}}"
      label="{{ i18n.t('Source of Change') }}"
      marginType="normal"
    />
    <Select
      id="select_departmentManager"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      colorByIndex=""
      data="{{ getUser_FilteredProject2.data }}"
      disabled="{{ ['Closed'].includes(getIssue4.data.status_value[0]) }}"
      disabledByIndex="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{i18n.t('Person Responsible')}}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="true"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getIssue4.data.department_manager[0] }}"
      values="{{ item.userID }}"
    />
    <Select
      id="select_responsibleDepartment2"
      automaticItemColors={true}
      data="{{ getProject_field_responsibleDepartment_values2.data }}"
      disabled=""
      disabledByIndex="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{i18n.t('Responsible Department')}}"
      labelPosition="top"
      labels="{{i18n.t(item.field_value)}}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option')}}"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue4.data.responsible_departmentID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_responsibleDepartment2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_responsibleDepartment_Person"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="textInput_batchNo2"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      formDataKey="batch_no"
      label="{{i18n.t('Batch Number')}}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue4.data.batch_no[0] }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_batchNo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_code2"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      formDataKey="code"
      label="{{i18n.t('Code Number')}}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue4.data.code[0] }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_code"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput8"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ getIssue4.data.project[0] == 'Deviation' }}"
      label="{{ i18n.t('Type of Change') }}"
      marginType="normal"
      showClear={true}
    />
    <Switch
      id="switchProductsAffected"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      label="{{ i18n.t('Products Affected')}}"
      labelPosition="left"
      marginType="normal"
      value="{{ getIssue4.data.product_effected[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_productEffected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Switch
      id="switchEquipmentAffected"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      label="{{ i18n.t('Equipment Affected')}}"
      labelPosition="left"
      marginType="normal"
      value="{{ getIssue4.data.equipment_effected[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_equipmentEffected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <TextArea
      id="textArea_productEffectedComment2"
      autoResize={true}
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      formDataKey="product_effected_comment"
      hidden="{{!switchProductsAffected.value}}"
      hideLabel={true}
      label="Comment"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      value="{{ getIssue4.data.product_effected_comment[0] }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_productEffectedComment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextArea
      id="textArea_equipmentEffectedComment2"
      autoResize={true}
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      formDataKey="equipment_effected_comment"
      hidden="{{!switchEquipmentAffected.value}}"
      hideLabel={true}
      label="Comment"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      value="{{ getIssue4.data.equipment_effected_comment[0] }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_equipmentEffectedComment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Multiselect
      id="multiselect_concernedUsers"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      data="{{ getUsers_filteredProjectRoleActive2.data }}"
      disabledByIndex="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{i18n.t('Concerned User/s')}}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select options"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue4.data.concerned_users[0]) }}"
      values="{{ item.userID }}"
      wrapTags={true}
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_concernedUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
  </View>
  <View
    id="9b936"
    hidden="tru"
    label="{{i18n.t('Risk Analysis')}}"
    viewKey="Risk Analysis"
  >
    <Table
      id="table7"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getRiskAnalysis.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "aaa5a", direction: "desc" } }]}
      enableSaveActions={true}
      heightType="auto"
      primaryKeyColumnId="d46cf"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d46cf"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="risk_analysisID"
        label="Risk analysis id"
        placeholder="Enter value"
        position="center"
        size={274.98333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="84dd1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="Issue id"
        placeholder="Enter value"
        position="center"
        size={270.75}
        summaryAggregationMode="none"
      />
      <Column
        id="abb81"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="risk_areaID"
        label="Risk area id"
        placeholder="Enter value"
        position="center"
        size={273.73333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="bf38a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="risk_area_value"
        label="Risk Area"
        placeholder="Enter value"
        position="center"
        size={312.01666259765625}
        summaryAggregationMode="none"
      />
      <Column
        id="cadaf"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="severity_name"
        label="Severity / Consequences"
        placeholder="Enter value"
        position="center"
        size={169.96665954589844}
        summaryAggregationMode="none"
      />
      <Column
        id="fcb51"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="occurance_name"
        label="Occurance / Likelyhood"
        placeholder="Enter value"
        position="center"
        size={155}
        summaryAggregationMode="none"
      />
      <Column
        id="1b396"
        alignment="center"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="intrinsic_risk"
        label="Intrinsic Risk"
        placeholder="Enter value"
        position="center"
        size={90.38333129882812}
        summaryAggregationMode="none"
      />
      <Column
        id="c1445"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="severityID"
        label="Severity id"
        placeholder="Enter value"
        position="center"
        size={268.08331298828125}
        summaryAggregationMode="none"
      />
      <Column
        id="016df"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="severity_value"
        label="Severity value"
        placeholder="Enter value"
        position="center"
        size={98.03334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="8eb1b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="occuranceID"
        label="Occurance id"
        placeholder="Enter value"
        position="center"
        size={276.5}
        summaryAggregationMode="none"
      />
      <Column
        id="f641f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="occurance_value"
        label="Occurance value"
        placeholder="Enter value"
        position="center"
        size={113.51666259765625}
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
          pluginId="table7"
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
          pluginId="table7"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Button
      id="button38"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      marginType="normal"
      text="Add Record"
    >
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_riskAnalysis"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="98810"
    disabled={false}
    hidden="{{ showInformationFields.value && showEvaluationFields.value }}"
    iconPosition="left"
    label="{{i18n.t('Corrective Details')}}"
    viewKey="Corrective Details"
  >
    <Select
      id="select_chooseQP_display"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      data="{{ getUsers_QP2.data }}"
      disabled=""
      disabledByIndex="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      emptyMessage="No options"
      hidden="{{ getIssue4.data.choose_QP_value[0] == null }}"
      imageByIndex="{{item.avatarURL}}"
      label="Qualified Person"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue4.data.choose_QP_value[0] }}"
      values="{{ item.userID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_chooseQP"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="select_classificationDisposition_display"
      automaticItemColors={true}
      data="{{ getProject_field_classificationDisposition_values2.data }}"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      emptyMessage="No options"
      hidden="{{ getIssue4.data.classification_dispositionID[0] == null }}"
      label="Classification / Disposition"
      labelPosition="top"
      labels="{{ item.field_value }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ getIssue4.data.classification_dispositionID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_classificationDisposition"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
      <Option id="0002" />
    </Select>
    <Select
      id="select_classificationRootCause_display"
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getProject_field_classificationRootCause_values2.data }}"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hidden="{{ getIssue4.data.classification_root_causeID[0] == null }}"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Classification / Root Cause"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getIssue4.data.classification_root_causeID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_classificationRootCause"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <SegmentedControl
      id="select_classificationEvaluationOfRelated_display"
      data="{{ getProject_field_classificationEvaluationOfRelated_values2.data }}"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ getIssue4.data.classification_evaluation_of_relatedID[0] == null }}"
      label="Classification / Evaluation of Related"
      labelPosition="top"
      labels="{{ item.field_value }}"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue4.data.classification_evaluation_of_relatedID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_classificationEvaluationOfRelated"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
    </SegmentedControl>
    <SegmentedControl
      id="select_classificationNotification_display"
      data="{{ getProject_field_classificationNotification_values2.data }}"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ getIssue4.data.classification_notificationID[0] == null }}"
      label="Classification / Notification"
      labelPosition="top"
      labels="{{ item.field_value }}"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue4.data.classification_notificationID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_classificationNotification"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
    </SegmentedControl>
    <SegmentedControl
      id="select_classificationRecurrence_display"
      data="{{ getProject_field_classificationRecurrence_values2.data }}"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ getIssue4.data.classification_recurrenceID[0] == null }}"
      label="Classification / Recurrence"
      labelPosition="top"
      labels="{{ item.field_value }}"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue4.data.classification_recurrenceID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_classificationRecurrence"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
    </SegmentedControl>
    <SegmentedControl
      id="select_classificationSeverity_display"
      data="{{ getProject_field_classificationSeverity_values2.data }}"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ getIssue4.data.classification_severityID[0] == null }}"
      label="Classification / Severity"
      labelPosition="top"
      labels="{{ item.field_value }}"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue4.data.classification_severityID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Option id="0000">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_classificationSeverity"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0001" />
    </SegmentedControl>
    <TextArea
      id="textArea6"
      autoResize={true}
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden={
        '{{ getIssue4.data?.evaluation[0] == null || getIssue4.data?.evaluation[0] == "" }}'
      }
      label="Evaluation"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      value="{{ getIssue4.data?.evaluation[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_evaluation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextArea
      id="textArea3"
      autoResize={true}
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ showInformationFields.value }}"
      label="Proposed Corrective Action"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      value="{{ getIssue4.data?.corrective_action[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_proposedCorrectiveAction"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextArea
      id="textArea4"
      autoResize={true}
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ showInformationFields.value }}"
      label="Proposed Preventative Action"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      value="{{ getIssue4.data?.preventative_action[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_proposedPreventativeAction"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <TextArea
      id="textArea5"
      autoResize={true}
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ showInformationFields.value }}"
      label="Reason / Investigation"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      value="{{ getIssue4.data?.reason[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_reasonInvestigation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
  </View>
</Container>
