<ModalFrame
  id="modal_Transition_New"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      value="#### {{i18n.t(transitionNameTemp.value) }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modal_Transition_New"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form13"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text
          id="formTitle14"
          marginType="normal"
          value="#### {{ transitionNameTemp.value }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="textArea2"
          autoResize={true}
          hidden="{{ has_comment.value == false }}"
          label="{{ i18n.t('Add Comment') }}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
        />
        <TextArea
          id="textArea_justification2"
          autoResize={true}
          hidden="{{ transitionNameTemp.value != 'Request Withdrawl' }}"
          label="{{ i18n.t('Withdrawl Justification') }}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue2.data.justification[0] }}"
        />
        <SegmentedControl
          id="select_typeOfModification2"
          data="{{ getProject_field_typeOfModification_values2.data }}"
          hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
          label="{{ i18n.t('Type of Modification') }}"
          labelPosition="top"
          labels="{{ item.field_value }}"
          paddingType="spacious"
          required={true}
          style={{ ordered: [{ indicatorBackground: "primary" }] }}
          value="{{ getIssue2.data.type_of_modificationID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <TextArea
          id="textArea_impact_q_s_e2"
          autoResize={true}
          hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
          label="{{ i18n.t('Impact on Q/S/E') }}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue2.data.impact_q_s_e[0] }}"
        />
        <TextArea
          id="textArea_impact_supplier_clien_scheduling2"
          autoResize={true}
          hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
          label="{{ i18n.t('Impact on Supplier / Client / Scheduling') }}"
          labelPosition="top"
          labelWrap={true}
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue2.data.impact_supplier_client_scheduling[0] }}"
        />
        <TextArea
          id="textArea_proposed_modification2"
          autoResize={true}
          hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
          label="{{ i18n.t('Proposed Modification & Justification') }}"
          labelPosition="top"
          labelWrap={true}
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue2.data.proposed_modification[0] }}"
        />
        <TextArea
          id="textArea_comment_modifications_exceeded2"
          autoResize={true}
          hidden="{{ transitionNameTemp.value != 'Request Modification' ? true : parseInt(getIssue2.data.count_modified[0]) < 3 }}"
          label="{{ i18n.t('Comment') }}"
          labelPosition="top"
          marginType="normal"
          minLines={2}
          readOnly="true"
          value="CAPA has been modified more than 3 times which exceeds the allowable amendments, you must get Approval from Management to accept this modification."
        />
        <TextInput
          id="textInput_closureRef2"
          hidden="{{ !['Done','Verified & Completed'].includes(transitionNameTemp.value) }}"
          label="{{ i18n.t('Closure REF') }}"
          labelPosition="top"
          marginType="normal"
          required={true}
          value="{{ getIssue2.data?.closure_ref[0] }}"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_requestModification"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ parseInt(getIssue2.data.count_modified[0]) > 3 }}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_modificationsExceeded"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="button62"
      hidden="{{ transitionNameTemp.value != 'Verified & Completed'}}"
      marginType="normal"
      text="{{ i18n.t('Verified & Completed') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_verifiedCompleted"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button57"
      hidden="{{ transitionNameTemp.value != 'Request Modification' }}"
      marginType="normal"
      submit={true}
      submitTargetId="form13"
      text="{{ i18n.t(transitionNameTemp.value) }}"
    />
    <Button
      id="button63"
      hidden="{{ transitionNameTemp.value != 'Request Withdrawl' }}"
      marginType="normal"
      text="{{ i18n.t('Request Withdrawl') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_requestWithdrawl"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button60"
      disabled="{{ !textInput_closureRef2.value }}"
      hidden="{{ transitionNameTemp.value != 'Done' }}"
      marginType="normal"
      submitTargetId="form13"
      text="{{ i18n.t('Done') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_done"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button56"
      disabled={'{{ has_comment.value && textArea2.value == "" }}'}
      hidden="{{ ['Request Withdrawl', 'Request Modification', 'Done','Verified & Completed'].includes(transitionNameTemp.value) }}"
      marginType="normal"
      text="{{ i18n.t(transitionNameTemp.value ) }}"
    >
      <Event
        enabled="{{ has_comment.value }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp.value == 'Reopen CAPA'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_reopenCAPA"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp.value == 'Withdrawl Rejected'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_withdrawlRejected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp.value == 'Withdrawl Accepted'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_withdrawlAccepted"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp.value == 'Modification Rejected'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_modificationRejected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp.value == 'Modification Accepted'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_modificationAccepted"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
