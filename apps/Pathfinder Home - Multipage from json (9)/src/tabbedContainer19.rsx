<Container
  id="tabbedContainer19"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  overflowType="hidden"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeader={true}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs8"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [] }}
      targetContainerId="tabbedContainer19"
      value="{{ self.values[0] }}"
    >
      <Option id="b8541" value="Tab 1" />
      <Option id="65e02" value="Tab 2" />
      <Option id="234a7" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="ab6ff" viewKey="Premises & Equipment">
    <CheckboxGroup
      id="multiselect_premisisEquipment3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_premisisAndEquipment_values.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Premisis and Equipment') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.premises_and_equipmentID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
    <CheckboxGroup
      id="materials_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_materials.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Materials') }}"
      labels="{{item.field_value}}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.materialsID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
  </View>
  <View
    id="ea32b"
    label="{{ i18n.t('Personnel & Production') }}"
    viewKey="View 2"
  >
    <CheckboxGroup
      id="personnel_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_personnel.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Personnel') }}"
      labels="{{item.field_value}}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.personnelID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
    <CheckboxGroup
      id="production_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_production.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Production') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.productionID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
  </View>
  <View id="59d4c" viewKey="RA & Documentation">
    <CheckboxGroup
      id="regulatory_affairs_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_regulatroy_affairs.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Regulatory Affairs') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.regulatory_affairsID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
    <CheckboxGroup
      id="documentation_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_documentation.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Documentation') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.documentationID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
  </View>
  <View
    id="dcf36"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('Validation & Qualification') }}"
    viewKey="View 4"
  >
    <CheckboxGroup
      id="validation_and_qualifications_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_validation_and_qualifications.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Validation and Qualifications') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.validation_and_qualificationID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
    <CheckboxGroup
      id="inform_external_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_inform_external.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Inform External Parties') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.inform_external_partiesID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
  </View>
  <View
    id="77300"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('Quality Department') }}"
    viewKey="View 5"
  >
    <CheckboxGroup
      id="quality_control_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_quality_control.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Quality Control') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.quality_controlID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
    <CheckboxGroup
      id="quality_assurance_multiselect3"
      _keyByIndex={[]}
      _parentKeyByIndex={[]}
      checkedPathArray={null}
      checkedPathStrings={{ array: [] }}
      checkStrictly={false}
      data="{{ getProject_field_quality_assurance.data }}"
      delimiter=""
      keyByIndex={{ array: [] }}
      label="{{ i18n.t('Quality Assurance') }}"
      labels="{{ item.field_value }}"
      leafPathArray={null}
      leafPathStrings={{ array: [] }}
      marginType="normal"
      parentKeyByIndex={{ array: [] }}
      value="{{ JSON.parse(getIssue6.data?.quality_assuranceID[0]) }}"
      values="{{ item.project_field_type_valueID }}"
    />
  </View>
</Container>
