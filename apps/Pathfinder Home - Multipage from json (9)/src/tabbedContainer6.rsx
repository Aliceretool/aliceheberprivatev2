<Container
  id="tabbedContainer6"
  currentViewKey="{{ self.viewKeys[0] }}"
  disabled=""
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
  transition="fade"
>
  <Header>
    <Tabs
      id="tabs6"
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "primary" }] }}
      targetContainerId="tabbedContainer6"
      value="{{ self.values[0] }}"
    >
      <Option id="a2fa8" value="Tab 1" />
      <Option id="7d17c" value="Tab 2" />
      <Option id="5531f" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="9ec83" label="{{ i18n.t('SPL Details')}}" viewKey="SPL Details">
    <TextInput
      id="textInput82"
      label="{{ i18n.t('Product Name')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.ProductDisplayText[0]}}"
    />
    <TextInput
      id="textInput81"
      disabled=""
      label="{{ i18n.t('Dose')}}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.dose[0] }}"
    />
    <TextInput
      id="textInput_code3"
      disabled=""
      formDataKey="parent_batch_no"
      label="{{ i18n.t('Code')}}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue17.data.status_value[0]) }}"
      showClear={true}
      value="{{getReferenceIssue2.data.product_code[0] }}"
    />
    <TextInput
      id="textInput_type2"
      disabled=""
      formDataKey="parent_batch_no"
      label="{{ i18n.t('Type')}}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue17.data.status_value[0]) }}"
      showClear={true}
      value="{{ getReferenceIssue2.data.product_type[0] }}"
    />
    <TextInput
      id="textInput80"
      disabled=""
      label="{{ i18n.t('Goods Receipt Note')}}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.good_recv_note[0] }}"
    />
    <TextInput
      id="textInput_qtyrcvd2"
      disabled=""
      label="{{ i18n.t('Qty Received')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.qty_rcvd[0] }}"
    />
    <TextInput
      id="textInput_ibn2"
      disabled=""
      label="{{ i18n.t('Internal Batch No.')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.internal_batch_no[0] }}"
    />
    <TextInput
      id="textInput_ebn2"
      disabled=""
      label="{{ i18n.t('External Batch No.')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.external_batch_no[0] }}"
    />
    <TextInput
      id="textInput_testing_req2"
      disabled=""
      label="{{ i18n.t('Testing Required')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.test[0] }}"
    />
    <TextInput
      id="textInput_ref_ret2"
      disabled=""
      label="{{ i18n.t('Reference/Retention')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.reference_retention[0] }}"
    />
    <TextInput
      id="textInput_stb_protocols2"
      disabled=""
      label="{{ i18n.t('Stability Protocols')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.stb_protocols[0] }}"
    />
    <TextInput
      id="textInput_stb_cond2"
      disabled=""
      label="{{ i18n.t('Stability Conditions')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="true"
      value="{{ getReferenceIssue2.data.stb_conditions[0] }}"
    />
  </View>
  <View
    id="62b0d"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('Test Details')}}"
    viewKey="Test Details"
  >
    <TextInput
      id="textInput83"
      disabled="false"
      label="{{ i18n.t('Test Required')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="{{ ['Closed'].includes(getIssue17.data.status_value[0]) }}"
      style={{ ordered: [{ border: "primary" }] }}
      value="{{getIssue17.data.test[0]}}"
    />
    <TextInput
      id="textInput84"
      label="{{ i18n.t('Results')}}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value')}}"
      readOnly="{{ ['Closed'].includes(getIssue17.data.status_value[0]) }}"
      value="{{getIssue17.data.results[0]}}"
    />
    <Multiselect
      id="multiselect26"
      colorByIndex={
        '{{item.status_value == \'Open\' ? "green": item.status_value ==\'Pending Testing\'? "orange" : item.status_value =="Rejected"? "red" : item.status_value ==\'Approved\'?"lightblue":\'\'}}'
      }
      data="{{ getANL.data }}"
      emptyMessage="No options"
      iconByIndex={
        '{{ item.status_value == \'Open\' ? "/icon:bold/shopping-business-startup": item.status_value ==\'Pending Testing\'? "/icon:bold/interface-time-alarm" : item.status_value =="Rejected"? "/icon:bold/interface-alert-warning-circle-alternate" : item.status_value ==\'Approved\'?"/icon:bold/mail-smiley-happy-face-alternate":\'\'}}\n'
      }
      label="{{ i18n.t('Analysis Nos')}}"
      labelPosition="top"
      labels="{{ item.issue_index }} ({{i18n.t(item.status_value)}}) -  {{item.issue}} "
      maxLines=""
      overlayMaxHeight={375}
      placeholder="Select options"
      readOnly="{{ ['Closed'].includes(getIssue17.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ JSON.parse(getIssue17.data.analysis_nos[0]) }}"
      values="{{ item.issueID }}"
      wrapTags={true}
    />
  </View>
</Container>
