<Container
  id="tabbedContainer42"
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
>
  <View
    id="9ec83"
    label="{{ i18n.t('{{ formattedProjectFieldValues.data.by_id['153f0e9e-7959-435a-aaa7-f340ca3b3cd8'].field_value }}
') }}"
    viewKey="General"
  >
    <Select
      id="select_productName2"
      automaticItemColors={true}
      data="{{ getProducts2.data }}"
      disabled=""
      disabledByIndex="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      emptyMessage="No options"
      fallbackTextByIndex="{{ item.ProductDisplayText }}"
      label="{{ i18n.t('Product Name') }}"
      labelPosition="top"
      labels="{{ i18n.t(item.ProductDisplayText) }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue15.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ getIssue15.data.ProductDisplayText[0] }}"
      values="{{ item.id }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_productName2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="textInput31"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Dose') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="false"
      value="{{ getIssue15.data.dose[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_Dose"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_code"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      formDataKey="parent_batch_no"
      label="{{ i18n.t('Code') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue15.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue15.data.product_code[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_code2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_type"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      formDataKey="parent_batch_no"
      label="{{ i18n.t('Type') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue15.data.status_value[0]) }}"
      showClear={true}
      value="{{ getIssue15.data.product_type[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_product_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput30"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Goods Receipt Note') }}"
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="false"
      value="{{ getIssue15.data.good_recv_note[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_GRN"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_qtyrcvd"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Qty Received') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue15.data.qty_rcvd[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_qty_rcvd"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_ibn"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Internal Batch No.') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue15.data.internal_batch_no[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_ibn"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_ebn"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('External Batch No.') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue15.data.external_batch_no[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_ebn"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_testing_req"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Testing Required') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue15.data.test[0] }}"
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
        pluginId="updIssue_testing_reqd"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_ref_ret"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Reference/Retention') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue15.data.reference_retention[0] }}"
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
        pluginId="updIssue_ref_ret"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_stb_protocols"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Stability Protocols') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue15.data.stb_protocols[0] }}"
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
        pluginId="updIssue_stb_prot"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="textInput_stb_cond"
      disabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      label="{{ i18n.t('Stability Conditions') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
      value="{{ getIssue15.data.stb_conditions[0] }}"
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
        pluginId="updIssue_stb_cond"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
</Container>
