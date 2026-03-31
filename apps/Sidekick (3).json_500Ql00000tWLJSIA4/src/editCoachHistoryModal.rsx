<ModalFrame
  id="editCoachHistoryModal"
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
      id="editCoachHistoryModalTitle"
      value="### Edit Coach History"
      verticalAlign="center"
    />
    <Button
      id="editCoachHistoryModalCloseButton"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="96d7e6d1"
        event="click"
        method="trigger"
        params={{
          map: {
            options: {
              object: {
                onSuccess: null,
                onFailure: null,
                additionalScope: null,
              },
            },
          },
        }}
        pluginId="editCoachHistory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Alert2
      id="editCoachHistory_alert"
      hidden={true}
      value="error
"
    >
      <State
        id="3"
        actionIconPositions="right"
        actionPositions="bottom"
        actionTexts="Action"
        actionTooltips={null}
        backgroundColors={null}
        borderColors={null}
        colors={null}
        descriptions="{{ editCoachHistory.error }}"
        iconPositions="center"
        icons="bold/interface-delete-circle"
        styleVariants="error"
        titles="Error creating coach history"
        tooltips={null}
        values="error"
      />
    </Alert2>
    <Form
      id="editCoachHistoryModalForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
    >
      <Body>
        <Date
          id="editCoachHistoryModal_effective_from"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          firstDayOfWeek={1}
          iconBefore="bold/interface-calendar"
          label="Effective from"
          labelPosition="top"
          value="{{ coachHistoryTable.selectedRow.effective_from }}"
        />
        <Select
          id="editCoachHistoryModal_status"
          data="{{ coachStatusTypeFormOptions.value }}"
          emptyMessage="No options"
          label="Status"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{  coachStatusTypesReversed.value[coachHistoryTable.selectedRow.status_type] }}"
          values="{{ item.value }}"
        />
        <Select
          id="editCoachHistoryModal_delivery_manager"
          data="{{ employees.data }}"
          emptyMessage="No options"
          label="Delivery Manager"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ coachHistoryTable.selectedRow.delivery_manager_id }}"
          values="{{ item.value }}"
        />
        <NumberInput
          id="editCoachHistoryModal_max_learner_caseload"
          currency="USD"
          inputValue={0}
          label="Max Learner Caseload"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value="{{ coachHistoryTable.selectedRow.max_learner_caseload }}"
        />
        <Select
          id="editCoachHistoryModal_role"
          data="{{ coachRoleTypeFormOptions.value }}"
          emptyMessage="No options"
          label="Role"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ coachRoleTypesReversed.value[coachHistoryTable.selectedRow.role_type] }}"
          values="{{ item.value }}"
        />
        <Select
          id="editCoachHistoryModal_pod"
          data="{{ coachPodFormOptions.value }}"
          emptyMessage="No options"
          label="Pod"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ coachPodsReversed.value[coachHistoryTable.selectedRow.pod] }}"
          values="{{ item.value }}"
        />
        <Select
          id="editCoachHistoryModal_senior_manager"
          data="{{ employees.data }}"
          emptyMessage="No options"
          label="Senior Manager"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ coachHistoryTable.selectedRow.senior_manager_id }}"
          values="{{ item.value }}"
        />
        <NumberInput
          id="editCoachHistoryModal_max_cohort_caseload"
          currency="USD"
          inputValue={0}
          label="Max Cohort Caseload"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value="{{ coachHistoryTable.selectedRow.max_cohort_caseload }}"
        />
        <Switch
          id="editCoachHistoryModal_is_senior_executive"
          label="Is Senior Executive?"
          value="{{ coachHistoryTable.selectedRow.is_senior_executive }}"
        />
      </Body>
      <Footer>
        <Button
          id="editCoachHistoryModalSubmitButton"
          submit={true}
          submitTargetId="editCoachHistoryModalForm"
          text="Submit"
        />
      </Footer>
      <Event
        id="491c718f"
        event="submit"
        method="trigger"
        params={{}}
        pluginId="editCoachHistory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Header>
</ModalFrame>
