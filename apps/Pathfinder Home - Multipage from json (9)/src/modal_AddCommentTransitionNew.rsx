<ModalFrame
  id="modal_AddCommentTransitionNew"
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
    <Text id="modalTitle7" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton7"
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
        pluginId="modal_AddCommentTransitionNew"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form20"
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
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text
          id="formTitle21"
          marginType="normal"
          value="#### {{ transitionNameTemp2.value }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="textArea9"
          autoResize={true}
          hidden="{{ has_comment2.value == false }}"
          label="Add Comment"
          marginType="normal"
          minLines="4"
        />
        <Select
          id="select_classificationDisposition3"
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
          label="Classification / Disposition"
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
        <Form
          id="form21"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden="{{ transitionNameTemp2.value != 'Complete Information' }}"
          marginType="normal"
          padding="12px"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
          style={{ ordered: [{ background: "canvas" }] }}
        >
          <Header>
            <Text
              id="formTitle22"
              marginType="normal"
              value="#### {{ transitionNameTemp2.value }}"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <TextArea
              id="textArea_preventativeAction3"
              autoResize={true}
              label="Proposed Preventative Action"
              marginType="normal"
              minLines="4"
              required={true}
              value="{{ getIssue4.data?.preventative_action[0] }}"
            />
            <TextArea
              id="textArea_correctiveAction3"
              autoResize={true}
              label="Proposed Corrective Action"
              marginType="normal"
              minLines="4"
              required={true}
              value="{{ getIssue4.data?.corrective_action[0] }}"
            />
            <TextArea
              id="textArea_reasonInvestigation6"
              autoResize={true}
              label="Reason / Investigation"
              marginType="normal"
              minLines="4"
              required={true}
              value="{{ getIssue4.data?.reason[0] }}"
            />
          </Body>
          <Footer>
            <Button
              id="button68"
              marginType="normal"
              style={{ ordered: [] }}
              styleVariant="outline"
              text="Cancel"
            >
              <Event
                event="click"
                method="close"
                params={{ ordered: [] }}
                pluginId="modal_addCommentTransition2"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="button69"
              marginType="normal"
              submit={true}
              submitTargetId="form21"
              text="Complete Information"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updIssue_completeInformation"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
        <Select
          id="select_classificationRootCause3"
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
          label="Classification / Root Cause"
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
          id="select_classificationEvaluationOfRelated3"
          data="{{ getProject_field_classificationEvaluationOfRelated_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Classification / Evaluation of Related"
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
          id="select_classificationNotification3"
          data="{{ getProject_field_classificationNotification_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Classification / Notification"
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
          id="select_classificationRecurrence3"
          data="{{ getProject_field_classificationRecurrence_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Classification / Recurrence"
          labels="{{ item.field_value }}"
          paddingType="spacious"
          required={true}
          value="{{ getIssue4.data?.classification_recurrenceID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <SegmentedControl
          id="select_classificationSeverity3"
          data="{{ getProject_field_classificationSeverity_values2.data }}"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Classification / Severity"
          labels="{{ item.field_value }}"
          paddingType="spacious"
          required={true}
          value="{{ getIssue4.data?.classification_severityID[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <TextArea
          id="textArea_evaluation3"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Evaluation"
          labelWrap={true}
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.evaluation[0] }}"
        />
        <TextArea
          id="textArea_proposedCorrectiveAction4"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Proposed Corrective Action"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.corrective_action[0] }}"
        />
        <TextArea
          id="textArea_proposedPreventativeAction4"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Proposed Preventative Action"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.preventative_action[0] }}"
        />
        <TextArea
          id="textArea_reasonInvestigation5"
          autoResize={true}
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          label="Reason / Investigation"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.reason[0] }}"
        />
        <Select
          id="select_chooseQP3"
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
          label="Choose Qualified Person"
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
      </Body>
      <Footer>
        <Button
          id="button84"
          marginType="normal"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="close"
            params={{ ordered: [] }}
            pluginId="modal_addCommentTransition2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button67"
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
          id="button85"
          hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
          marginType="normal"
          submit={true}
          submitTargetId="form20"
          text="{{ transitionNameTemp2.value }}"
        />
        <Button
          id="button83"
          disabled={'{{ has_comment2.value && textArea9.value == "" }}'}
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
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_completeEvaluation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
