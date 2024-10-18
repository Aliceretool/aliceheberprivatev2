<Container
  id="tabbedContainer17"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs16"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "rgb(8, 54, 97)" }] }}
      targetContainerId="tabbedContainer17"
      value="{{ self.values[0] }}"
    >
      <Option id="bdd9e" value="Tab 1" />
      <Option id="c3760" value="Tab 2" />
      <Option id="d73aa" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="9ec83" label="{{ i18n.t('General') }}" viewKey="General">
    <Select
      id="select_responsibleDepartment3"
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getProject_field_responsibleDepartment_values3.data }}"
      disabled=""
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t( 'Responsible Department') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getIssue6.data.responsible_departmentID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_responsibleDepartment3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_responsibleDepartment_person2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="select_departmentManager2"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      colorByIndex=""
      data="{{ getUser_FilteredProject3.data }}"
      disabled=""
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Person Responsible') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="true"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getIssue6.data.department_manager[0] }}"
      values="{{ item.userID }}"
    />
    <Multiselect
      id="multiselect_sourceOfChange"
      automaticItemColors={true}
      data="{{ getProject_field_sourceOfChange_values.data }}"
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{ i18n.t('Source of Change') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data.sourceID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    >
      <Option id="36ab0" value="Option 1" />
      <Option id="66cb7" value="Option 2" />
      <Option id="fbdc3" value="Option 3" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_source2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Select
      id="select_type"
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getProject_field_typeOfChange_values.data }}"
      disabled=""
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t('Type of Change') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getIssue6.data.typeID[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
  </View>
  <View
    id="9b936"
    label="{{ i18n.t('Risk Analysis') }}"
    viewKey="Risk Analysis"
  >
    <Table
      id="table11"
      actionsOverflowPosition={1}
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
        label="{{ i18n.t('Risk analysis id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
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
        label="{{ i18n.t('Issue id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
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
        label="{{ i18n.t('Risk area id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={273.73333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="bf38a"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="risk_area_value"
        label="{{ i18n.t('Risk Area') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={209.01666259765625}
        summaryAggregationMode="none"
      />
      <Column
        id="cadaf"
        alignment="center"
        format="string"
        groupAggregationMode="none"
        key="severity_name"
        label="{{ i18n.t('Severity / Consequences') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={169.96665954589844}
        summaryAggregationMode="none"
      />
      <Column
        id="fcb51"
        alignment="center"
        format="string"
        groupAggregationMode="none"
        key="occurance_name"
        label="{{ i18n.t('Occurance / Likelyhood') }}"
        placeholder="{{ i18n.t('Enter value') }}"
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
        label="{{ i18n.t('Intrinsic Risk') }}"
        placeholder="{{ i18n.t('Enter value') }}"
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
        label="{{ i18n.t('Severity id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
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
        label="{{ i18n.t('Severity value') }}"
        placeholder="{{ i18n.t('Enter value') }}"
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
        label="{{ i18n.t('Occurance id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
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
        label="{{ i18n.t('Occurance value') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={113.51666259765625}
        summaryAggregationMode="none"
      />
      <Action id="2e714" icon="line/interface-delete-bin-2">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delRisk2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="{{ i18n.t('Filter') }}"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="{{ i18n.t('Download') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table11"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="{{ i18n.t('Refresh') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table11"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Button
      id="button89"
      disabled="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      marginType="normal"
      text="{{ i18n.t('Add Risk') }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modal_Risksonly_New"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="372d3"
    disabled={false}
    hidden="{{ showImpactAnalysis.value }}"
    iconPosition="left"
    label="{{ i18n.t('Impact Analysis') }}"
    viewKey="Impact Analysis"
  >
    <Multiselect
      id="multiselect_premisisEquipment2"
      automaticItemColors={true}
      data="{{ getProject_field_premisisAndEquipment_values.data }}"
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{ i18n.t('Premises and Equipment') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      style={{ ordered: [] }}
      value="{{ JSON.parse(getIssue6.data?.premises_and_equipmentID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="materials_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_materials.data }}"
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{ i18n.t('Materials') }}"
      labelPosition="top"
      labels="{{item.field_value}}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.materialsID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="personnel_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_personnel.data }}"
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{ i18n.t('Personnel') }}"
      labelPosition="top"
      labels="{{item.field_value}}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.personnelID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="production_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_production.data }}"
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{ i18n.t('Production') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.productionID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="quality_control_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_quality_control.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Quality Control') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.quality_controlID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="quality_assurance_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_quality_assurance.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Quality Assurance') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.quality_assuranceID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="regulatory_affairs_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_regulatroy_affairs.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Regulatory Affairs') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.regulatory_affairsID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="documentation_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_documentation.data }}"
      disabledByIndex="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      emptyMessage="No options"
      label="{{ i18n.t('{{ formatDataAsArray(getProject_field_translation.data).filter(x => x.project_fieldID == '02fc58be-b1ab-453a-9d99-156c68786ad9')[0].field_value }}') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.documentationID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="validation_and_qualifications_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_validation_and_qualifications.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Validation and Qualifications') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.validation_and_qualificationID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
    <Multiselect
      id="inform_external_multiselect2"
      automaticItemColors={true}
      data="{{ getProject_field_inform_external.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Inform External Parties') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue6.data?.inform_external_partiesID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    />
  </View>
</Container>
