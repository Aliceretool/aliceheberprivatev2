<ModalFrame
  id="addCoachHistoryModal"
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
      id="addCoachHistoryModalTItle"
      value="### Add Status"
      verticalAlign="center"
    />
    <Button
      id="addCoachHistoryModalCloseButton"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="bbfdd997"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="addCoachHistoryModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Alert2
      id="addCoachHistory_alert"
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
        descriptions="{{ addCoachHistory.error }}"
        iconPositions="center"
        icons="bold/interface-delete-circle"
        styleVariants="error"
        titles="Error creating coach history"
        tooltips={null}
        values="error"
      />
    </Alert2>
  </Header>
  <Body>
    <Form
      id="addCoachHistoryModalForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeaderBorder={false}
    >
      <Body>
        <Date
          id="addCoachHistoryModal_effective_from"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          firstDayOfWeek={1}
          iconBefore="bold/interface-calendar"
          label="Effective from"
          labelPosition="top"
          value="{{ new Date().toISOString().slice(0, 10) }}"
        />
        <Select
          id="addCoachHistoryModal_status"
          data="{{ coachStatusTypeFormOptions.value }}"
          emptyMessage="No options"
          label="Status"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{  getSelectedCoach.data.status_type }}"
          values="{{ item.value }}"
        />
        <Select
          id="addCoachHistoryModal_delivery_manager"
          data="{{ employees.data }}"
          emptyMessage="No options"
          label="Delivery Manager"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ getSelectedCoach.data.delivery_manager ? getSelectedCoach.data.delivery_manager.id : '' }}"
          values="{{ item.value }}"
        />
        <NumberInput
          id="addCoachHistoryModal_max_learner_caseload"
          currency="USD"
          inputValue={0}
          label="Max Learner Caseload"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value="{{ getSelectedCoach.data.max_learner_caseload }}"
        />
        <Select
          id="addCoachHistoryModal_role"
          data="{{ coachRoleTypeFormOptions.value }}"
          emptyMessage="No options"
          label="Role"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ getSelectedCoach.data.role_type }}"
          values="{{ item.value }}"
        />
        <Select
          id="addCoachHistoryModal_pod"
          data="{{ coachPodFormOptions.value }}"
          emptyMessage="No options"
          label="Pod"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ getSelectedCoach.data.pod }}"
          values="{{ item.value }}"
        />
        <Select
          id="addCoachHistoryModal_senior_manager"
          data="{{ employees.data }}"
          emptyMessage="No options"
          label="Senior Manager"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ getSelectedCoach.data.senior_manager ? getSelectedCoach.data.senior_manager.id : ''}}"
          values="{{ item.value }}"
        />
        <NumberInput
          id="addCoachHistoryModal_max_cohort_caseload"
          currency="USD"
          inputValue={0}
          label="Max Cohort Caseload"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value="{{ getSelectedCoach.data.max_cohort_caseload }}"
        />
        <Switch
          id="addCoachHistoryModal_is_senior_executive"
          label="Is Senior Executive?"
          value="{{ getSelectedCoach.data.is_senior_executive }}"
        />
      </Body>
      <Footer>
        <Button
          id="addCoachHistoryModalSubmit"
          submit={true}
          submitTargetId="addCoachHistoryModalForm"
          text="Submit"
        />
      </Footer>
      <Event
        id="8e677b48"
        event="submit"
        method="trigger"
        params={{}}
        pluginId="addCoachHistory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="4c9d9ee5"
        event="submit"
        method="setValue"
        params={{}}
        pluginId="addCoachHistory_alert"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
