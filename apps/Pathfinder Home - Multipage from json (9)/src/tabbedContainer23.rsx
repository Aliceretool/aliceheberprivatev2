<Container
  id="tabbedContainer23"
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
      id="tabs20"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "primary" }] }}
      targetContainerId="tabbedContainer23"
      value="{{ self.values[0] }}"
    >
      <Option id="bdd9e" value="Tab 1" />
      <Option id="c3760" value="Tab 2" />
      <Option id="d73aa" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="9ec83" label="{{ i18n.t('General') }}" viewKey="General">
    <TextInput
      id="textInput13"
      disabled=""
      label="{{ i18n.t('Batch No\'s') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      value="{{ getIssue9.data.batchNos[0] }}"
    />
    <Select
      id="select_type_of_batch"
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getProject_field_typeofBatches_values.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t('Type of Batch') }}"
      labelPosition="top"
      labels="{{ i18n.t(item.field_value)}}"
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ getIssue9.data.typeofBatch[0] }}"
      values="{{item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_type_of_batch"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="select_type_of_certification"
      automaticItemColors={true}
      data="{{ getProject_field_type_of_certification.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Type of Certification') }}"
      labelPosition="top"
      labels="{{ i18n.t(item.field_value) }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue9.data.typeofCertification[0] }}"
      values="{{ item.project_field_type_valueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_type_of_certification"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_type_of_certification"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="textInput_item_nos"
      disabled=""
      formDataKey="itemNos"
      label="{{ i18n.t('Item No\'s') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue9.data.itemNos[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_itemnos"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput12"
      disabled="{{getIssue9.data.status_value == 
  'Closed'}}"
      hidden={'{{ getIssue9.data?.cert_other[0] == "" }}'}
      label=""
      labelPosition="top"
      marginType="normal"
      value="{{ getIssue9.data?.cert_other[0] }}"
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
    <TextInput
      id="textInput_parent_batch_no"
      disabled=""
      formDataKey="parent_batch_no"
      label="{{ i18n.t('Parent batch No.') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue9.data.parentBatchNo[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_parentbatchno"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_packType"
      disabled=""
      formDataKey="pack_type"
      label="{{ i18n.t('Pack Type') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue9.data.packType[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_pack_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_yield"
      disabled=""
      formDataKey="yield"
      label="{{ i18n.t('Yield') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue9.data.yield[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_itemnos"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Select
      id="select_referenceIssue2"
      automaticItemColors={true}
      captionByIndex="{{ item.status_value }}"
      colorByIndex=""
      data="{{ getDeviationIssues2.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="{{ i18n.t('Reference') }}"
      labelPosition="top"
      labels="{{ item.issue_index}}: {{ item.issue }} "
      marginType="normal"
      overlayMaxHeight={375}
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex="(DVR Issue)"
      value="{{ getIssue9.data.reference_issueID[0] }}"
      values="{{ item.issueID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_reference2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="select_client"
      captionByIndex=""
      data="{{ getClients.data }}"
      disabled=""
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Client') }}"
      labelPosition="top"
      labels="{{ item.company_name}}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showClear={true}
      showSelectionIndicator={true}
      value="{{ getIssue9.data.clientID[0] }}"
      values="{{ item.id }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_client"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Multiselect
      id="select_markets"
      automaticItemColors={true}
      data="{{ getMarkets.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      label="{{ i18n.t('Markets') }}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue9.data.markets[0] }}"
      values="{{ item.project_field_type_valueID }}"
      wrapTags={true}
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_markets"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
  </View>
</Container>
