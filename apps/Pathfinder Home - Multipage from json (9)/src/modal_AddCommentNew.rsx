<ModalFrame
  id="modal_AddCommentNew"
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
      id="modalTitle5"
      value="### {{ transitionNameTemp2.value }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton5"
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
        pluginId="modal_AddCommentNew"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form18"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hidden="{{ transitionNameTemp2.value == 'Complete Information' }}"
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
          id="formTitle19"
          marginType="normal"
          value="#### {{ transitionNameTemp2.value }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="textArea8"
          autoResize={true}
          hidden="{{ has_comment2.value == false }}"
          label="Add Comment"
          labelPosition="top"
          marginType="normal"
          minLines="4"
        />
        <Select
          id="select_classificationDisposition2"
          automaticItemColors={true}
          captionByIndex=""
          colorByIndex=""
          data="{{ getProject_field_classificationDisposition_values2.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="{{ i18n.t('Classification / Disposition')}}"
          labelPosition="top"
          labels="{{ item.field_value }}"
          marginType="normal"
          overlayMaxHeight={375}
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{ getIssue4.data?.classification_dispositionID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        />
        <Select
          id="select_chooseQP2"
          automaticItemColors={true}
          captionByIndex="{{ item.email }}"
          colorByIndex=""
          data="{{ getUsers_QP2.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex="{{item.avatarURL}}"
          label="{{i18n.t('Qualified Person')}}"
          labelPosition="top"
          labels="{{ `${item.firstName} ${item.lastName}` }}"
          marginType="normal"
          overlayMaxHeight={375}
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{ getIssue4.data?.choose_QP_value[0] }}"
          values="{{ item.userID }}"
        />
        <Select
          id="select_classificationRootCause2"
          automaticItemColors={true}
          captionByIndex=""
          colorByIndex=""
          data="{{ getProject_field_classificationRootCause_values2.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="{{ i18n.t('Classification / Root Cause') }}"
          labelPosition="top"
          labels="{{ item.field_value }}"
          marginType="normal"
          overlayMaxHeight={375}
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{ getIssue4.data?.classification_root_causeID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        />
        <SegmentedControl
          id="select_classificationNotification2"
          data="{{ getProject_field_classificationNotification_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="{{i18n.t('Classification / Notification')}}"
          labelPosition="top"
          labels="{{ item.field_value}}"
          paddingType="spacious"
          required={true}
          value="{{ getIssue4.data?.classification_notificationID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <SegmentedControl
          id="select_classificationEvaluationOfRelated2"
          data="{{ getProject_field_classificationEvaluationOfRelated_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="{{i18n.t('Classification / Evaluation of Related')}}"
          labelPosition="top"
          labels="{{ item.field_value }}"
          paddingType="spacious"
          required={true}
          value="{{ getIssue4.data?.classification_evaluation_of_relatedID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <SegmentedControl
          id="select_classificationSeverity2"
          data="{{ getProject_field_classificationSeverity_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="{{i18n.t('Classification / Severity')}}"
          labelPosition="top"
          labels="{{ item.field_value }}"
          paddingType="spacious"
          required={true}
          value="{{ getIssue4.data?.classification_severityID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <SegmentedControl
          id="select_classificationRecurrence2"
          data="{{ getProject_field_classificationRecurrence_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="{{ i18n.t('Classification / Recurrence') }}"
          labelPosition="top"
          labels="{{ item.field_value }}"
          paddingType="spacious"
          required={true}
          value="{{ getIssue4.data?.classification_recurrenceID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <TextArea
          id="textArea_evaluation2"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="{{i18n.t('Evaluation')}}"
          labelPosition="top"
          labelWrap={true}
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.evaluation[0] }}"
        />
        <TextArea
          id="textArea_proposedCorrectiveAction3"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation'}}"
          label="{{ i18n.t('Proposed Corrective Action')}}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.corrective_action[0] }}"
        />
        <TextArea
          id="textArea_proposedPreventativeAction3"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="{{ i18n.t('Proposed Preventative Action')}}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.preventative_action[0] }}"
        />
        <TextArea
          id="textArea_reasonInvestigation3"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="{{ i18n.t('Reason / Investigation') }}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.reason[0] }}"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_completeEvaluation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "Corrective Details" }] }}
        pluginId="tabbedContainer12"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="button80"
      hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
      marginType="normal"
      submit={true}
      submitTargetId="form18"
      text="{{ transitionNameTemp2.value }}"
    />
    <Button
      id="button81"
      hidden="{{ transitionNameTemp2.value != 'Complete Information' }}"
      marginType="normal"
      text="{{ transitionNameTemp2.value }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_completeInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button79"
      disabled={'{{ has_comment2.value && textArea8.value == "" }}'}
      hidden="{{ transitionNameTemp2.value == 'Complete Information' || transitionNameTemp2.value == 'Complete Evaluation'}}"
      marginType="normal"
      text="{{ transitionNameTemp2.value }}"
    >
      <Event
        enabled="{{ has_comment2.value }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp2.value == 'Send for Approval'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_sendForApproval"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp2.value == 'More Information Needed' && getIssue4.data.status_value[0] == 'Open'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_moreInformationNeeded"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp2.value == 'Rejected' }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_rejected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp2.value == 'Pending Information' }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_pendingInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ transitionNameTemp2.value == 'More Information Needed' && getIssue4.data.status_value[0] == 'Evaluated'}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_moreInformationNeededEvaluation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
