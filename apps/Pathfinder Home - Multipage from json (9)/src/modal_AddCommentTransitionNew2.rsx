<ModalFrame
  id="modal_AddCommentTransitionNew2"
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
      id="modalTitle10"
      value="### {{ transitionNameTemp3.value }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton10"
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
        pluginId="modal_AddCommentTransitionNew2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form23"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text
          id="formTitle24"
          marginType="normal"
          value="#### {{ transitionNameTemp3.value }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="textArea_rejectionComment2"
          autoResize={true}
          hidden="{{ has_rejection_comment.value == false }}"
          label="{{ i18n.t('Rejection Comment') }}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
        />
        <TextArea
          id="textArea_approvalComment2"
          autoResize={true}
          hidden="{{ has_approval_comment.value == false }}"
          label="{{ i18n.t('Comment') }}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
        />
        <Select
          id="select_assigneeTransition2"
          captionByIndex="{{ item.email }}"
          data="{{ getUser_FilteredProject3.data }}"
          disabled="{{ transitionNameTemp3.value == 'Reject' && getIssue6.data.status_value[0] == 'Pending Department Review' }}"
          emptyMessage="No options"
          hidden="{{ !has_assignee.value }}"
          hiddenByIndex=""
          imageByIndex="{{ item.avatarURL }}"
          label="{{ i18n.t('Assignee') }}"
          labelPosition="top"
          labels="{{ `${item.firstName} ${item.lastName}` }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="{{ i18n.t('Select a user to assign to') }}"
          readOnly=""
          showSelectionIndicator={true}
          value="{{ transitionNameTemp3.value == 'Reject' && getIssue6.data.status_value[0] == 'Pending Department Review' ? formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == getIssue6.data.created_by[0])[0].userID : transitionNameTemp3.value == 'Reject' && ['Awaiting QA Review','QA Reviewed','Awaiting Committee Review'].includes(getIssue6.data.status_value[0]) ? getIssue6.data.department_manager[0] : transitionNameTemp3.value == 'Approved' && ['Awaiting Committee Review'].includes(getIssue6.data.status_value[0]) ? getIssue6.data.department_manager[0] : [] }}"
          values="{{ item.userID }}"
        />
        <TextArea
          id="textArea_impactAnalysis2"
          autoResize={true}
          hidden="{{ transitionNameTemp3.value != 'Impact & Risk Analysed'}}"
          label="{{ i18n.t('Impact Analysis') }}"
          labelPosition="top"
          marginType="normal"
          minLines={2}
          value="{{ getIssue6.data?.impact_analysis[0] }}"
        />
        <TextArea
          id="textArea_riskAnalysis2"
          autoResize={true}
          hidden="{{ transitionNameTemp3.value != 'Impact & Risk Analysed'}}"
          label="{{ i18n.t('Risk Analysis') }}"
          labelPosition="top"
          marginType="normal"
          minLines={2}
          value="{{ getIssue6.data?.risk_analysis[0] }}"
        />
        <Multiselect
          id="multiselect7"
          automaticItemColors={true}
          captionByIndex="{{ item.email }}"
          data="{{ crfApprovers_list.data }}"
          emptyMessage="No options"
          hidden="{{ transitionNameTemp3.value != 'Send for Committee Review'}}"
          imageByIndex="{{item.avatarURL}}"
          label="{{ i18n.t('Select Approvers') }}"
          labels="{{ `${item.firstName} ${item.lastName}` }}"
          marginType="normal"
          overlayMaxHeight={375}
          showSelectionIndicator={true}
          values="{{ item.userID }}"
          wrapTags={true}
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_reopen"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="button95"
      disabled="{{ multiselect7.value.length == 0 }}"
      heightType="auto"
      hidden="{{ transitionNameTemp3.value != 'Send for Committee Review' }}"
      marginType="normal"
      style={{ ordered: [] }}
      text="{{ i18n.t('Send for Committee Review') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_sendForCommitteeReview"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button94"
      disabled={
        '{{ has_rejection_comment.value && textArea_rejectionComment2.value == "" || has_approval_comment.value && textArea_approvalComment2.value == "" }}'
      }
      hidden="{{ transitionNameTemp3.value == 'Impact & Risk Analysed' || transitionNameTemp3.value == 'Send for Committee Review'}}"
      marginType="normal"
      text="{{ transitionNameTemp3.value}}"
    >
      <Event
        enabled="{{ has_rejection_comment.value }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_rejection"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp3.value == 'Reject' && getIssue6.data.status_value[0] == 'Pending Department Review' }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_reject"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp3.value == 'Approved' && getIssue6.data.status_value[0] == 'Pending Department Review' }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_approved2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp3.value == 'Reject' && ['Awaiting QA Review','QA Reviewed','Awaiting Committee Review']      .includes(getIssue6.data.status_value[0]) }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_reject_pendingDepartmentReview"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ has_approval_comment.value }} "
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_approval"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp3.value == 'Approved' && getIssue6.data.status_value[0] == 'Awaiting Committee Review' }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_committeeApproved"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp3.value == 'QA Approved' }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_QAApproved"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp3.value == 'More Information Needed' && getIssue6.data.status_value[0] == 'Pending Department Review' }} "
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_moreIInformationNeeded"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
