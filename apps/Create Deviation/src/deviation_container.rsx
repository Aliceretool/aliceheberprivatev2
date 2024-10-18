<Container
  id="deviation_container"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hidden=""
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgb(230, 235, 239)" }] }}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      targetContainerId="deviation_container"
      value="{{ self.values[0] }}"
    >
      <Option id="98c27" value="Tab 1" />
      <Option id="c6451" value="Tab 2" />
      <Option id="150c6" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="aeee3" viewKey="View 1">
    <Date
      id="date_incident"
      dateFormat="dd MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      formDataKey="incident_date"
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Date of Incident')}}"
      labelPosition="top"
      marginType="normal"
      value="{{ new Date() }}"
    />
    <Date
      id="date_due"
      dateFormat="dd MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      formDataKey="due_date"
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date')}}"
      labelPosition="top"
      marginType="normal"
      required={true}
      value="{{moment().add(1,'M')}}"
    />
    <TextInput
      id="textInput_issue"
      formDataKey="issue"
      label="{{ i18n.t('Summary')}}"
      labelPosition="top"
      labelWidth="16"
      marginType="normal"
      required={true}
    />
    <TextEditor
      id="richTextEditor_description"
      formDataKey="description"
      value=""
    />
    <Switch
      id="switchProductsAffected"
      label="{{ i18n.t('Products Affected')}}"
      labelPosition="left"
      marginType="normal"
      value="0"
    />
    <Switch
      id="switchEquipmentAffected"
      label="{{ i18n.t('Equipment Affected')}}"
      labelPosition="left"
      marginType="normal"
    />
    <TextArea
      id="textArea_productEffectedComment"
      autoResize={true}
      formDataKey="product_effected_comment"
      hidden="{{!switchProductsAffected.value}}"
      label="Comment"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      required="{{ switchProductsAffected.value }}"
    />
    <TextArea
      id="textArea_equipmentEffectedComment"
      autoResize={true}
      formDataKey="equipment_effected_comment"
      hidden="{{!switchEquipmentAffected.value}}"
      label="Comment"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      required="{{ switchEquipmentAffected.value }}"
    />
    <TextInput
      id="textInput_code"
      formDataKey="code"
      label="{{ i18n.t('Code Number')}}"
      labelPosition="top"
      marginType="normal"
      placeholder="Item, asset, SOP, BMR, etc"
    />
    <TextInput
      id="textInput_batchNo"
      formDataKey="batch_no"
      label="{{ i18n.t('Batch Number')}}"
      labelPosition="top"
      marginType="normal"
    />
    <Select
      id="selectResponsiblePerson"
      automaticItemColors={true}
      captionByIndex="{{ i18n.t(item.email) }}"
      colorByIndex=""
      data="{{ getUser_filteredProjectRoleActive.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      formDataKey="responsible_department_value"
      hidden="{{!selectProjectType.value}}"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t(formatDataAsArray(getProject_field_translation.data).filter(x => x.project_fieldID == '0929ea23-ea31-46f7-869c-4c1dc6bff051')[0].field_value )}}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.userID }}"
    />
    <Select
      id="selectResponsibleDepartment"
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getProject_field_responsibleDepartment_values.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      formDataKey="responsible_department_value"
      hidden="{{!selectProjectType.value}}"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t(formatDataAsArray(getProject_field_translation.data).filter(x => x.project_fieldID == 'ef2cf9dc-0d9e-4d80-9972-454c7b777ca8')[0].field_value )}}"
      labelPosition="top"
      labels="{{ i18n.t(item.field_value) }}"
      marginType="normal"
      overlayMaxHeight={375}
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="getProject_field_responsibleDepartment_Person"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Multiselect
      id="multiselect_concernedUsers"
      captionByIndex="{{ item.email }}"
      colorByIndex=""
      data="{{ getUser_filteredProjectRoleActive.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      formDataKey="concerned_users"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex="{{item.avatarURL}}"
      label="{{ i18n.t('Concerned User/s')}}"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      labelWidth="16.5"
      marginType="normal"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.userID }}"
      wrapTags={true}
    />
  </View>
</Container>
