<Container
  id="tabbedContainer35"
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
      id="tabs30"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "primary" }] }}
      targetContainerId="tabbedContainer35"
      value="{{ self.values[0] }}"
    >
      <Option id="bdd9e" value="Tab 1" />
      <Option id="c3760" value="Tab 2" />
      <Option id="d73aa" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="9ec83" label="{{ i18n.t('General') }}" viewKey="General">
    <TextInput
      id="textInput22"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      label="{{ i18n.t('Name') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="false"
      value="{{ getIssue13.data.name[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_name"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput23"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      label="{{ i18n.t('Method') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="false"
      value="{{ getIssue13.data.method_t[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_Method"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_test2"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      formDataKey="parent_batch_no"
      label="{{ i18n.t('Test') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue13.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue13.data.test[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_test"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Select
      id="select_productName"
      automaticItemColors={true}
      data="{{ getProducts.data }}"
      disabled=""
      disabledByIndex="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      emptyMessage="No options"
      fallbackTextByIndex="{{ item.ProductDisplayText }}"
      label="{{ i18n.t('Product Name') }}"
      labelPosition="top"
      labels="{{ i18n.t(item.ProductDisplayText )}}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue13.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue13.data.product_name[0] }}"
      values="{{ item.id }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_productName"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="textInput26"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      label="{{ i18n.t('Dilution') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue13.data.dilution[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dilution"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput27"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      label="{{ i18n.t('SF') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue13.data.SF[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_sf"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <SegmentedControl
      id="segmentedControl4"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      itemMode="static"
      label="{{ i18n.t('pH Meter ID & Cal Exp') }}"
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue13.data.phMeter[0] }}"
    >
      <Option id="f1514" label="{{i18n.t('None')}}" value="None" />
      <Option id="aad4c" label="{{i18n.t('Yes')}}" value="Yes" />
      <Option
        id="9d1dd"
        disabled={false}
        iconPosition="left"
        label="{{i18n.t('No')}}"
        value="No"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_pHMeter"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SegmentedControl>
    <TextInput
      id="textInput28"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      hidden={'{{ segmentedControl4.selectedItem.value !==  "Yes"}}'}
      label="{{ i18n.t('pH Meter ID') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue13.data.phMeterID[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_pHMeterID"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Date
      id="date1"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      firstDayOfWeek={1}
      hidden={'{{ segmentedControl4.selectedItem.value !==  "Yes"}}'}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Calibration Expiry') }}"
      labelPosition="top"
      value="{{ getIssue13.data.phMeter_Calibration_Expiry[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_pHMeterCalibDate"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <SegmentedControl
      id="segmentedControl5"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      itemMode="static"
      label="{{ i18n.t('Balance Slip') }}"
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue13.data.balance_slip[0] }}"
    >
      <Option
        id="0f4db"
        disabled={false}
        iconPosition="left"
        label="{{i18n.t('None')}}"
        value="None"
      />
      <Option id="f1514" label="{{i18n.t('Yes')}}" value="Yes" />
      <Option id="aad4c" label="{{i18n.t('No')}}" value="No" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_balanceSlip"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl3"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      itemMode="static"
      label="{{ i18n.t('Prep Expiry Date') }}"
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ getIssue13.data.prep_expiry[0] }}"
    >
      <Option id="f1514" label="{{i18n.t('Yes')}}" value="Yes" />
      <Option id="aad4c" label="{{i18n.t('No')}}" value="No" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_PrepExpiry"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SegmentedControl>
    <Text
      id="text74"
      hidden={'{{ segmentedControl5.selectedItem.value !==  "Yes"}}'}
      imageWidth="fill"
      value="👋 {{i18n.t('Add/View Balance slips in the attachment section!')}}"
      verticalAlign="center"
    />
    <Date
      id="date2"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      hidden={'{{ segmentedControl3.selectedItem.value !==  "Yes"}}'}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Expiry') }}"
      labelPosition="top"
      value="{{ getIssue13.data.prep_expiry_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_prepExpiryDate"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <TextInput
      id="textInput21"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      hidden={'{{ segmentedControl3.selectedItem.value !== "No"}}'}
      label="{{ i18n.t('Reason') }}"
      labelPosition="top"
      marginType="normal"
      value="{{ getIssue13.data?.prep_expiry_reason[0] }}"
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
        pluginId="updIssue_prepExpiryReason"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput29"
      disabled="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      label="{{ i18n.t('LPR') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue13.data.lpr[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_LPR"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
</Container>
