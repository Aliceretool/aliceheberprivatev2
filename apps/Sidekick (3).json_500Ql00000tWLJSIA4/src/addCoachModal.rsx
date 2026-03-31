<ModalFrame
  id="addCoachModal"
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
      id="addCoachModalTitle"
      value="### Assign new coach"
      verticalAlign="center"
    />
    <Button
      id="addCoachModalCloseButton"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="f21adc24"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="addCoachModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Alert2
      id="addCoachModal_alert"
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
        descriptions="Description"
        iconPositions="center"
        icons="bold/interface-delete-circle"
        styleVariants="error"
        titles="Error"
        tooltips={null}
        values="error"
      />
    </Alert2>
  </Header>
  <Body>
    <Form
      id="addCoachModalForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
    >
      <Body>
        <Select
          id="addCoachModal_coach"
          captionByIndex=""
          data="{{ employees.data }}"
          emptyMessage="No options"
          label="Multiverse Employee"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.value }}"
        />
        <Date
          id="addCoachModal_effective_from"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          firstDayOfWeek={1}
          iconBefore="bold/interface-calendar"
          label="Effective From"
          labelPosition="top"
          value="{{ new Date() }}"
        />
        <Select
          id="addCoachModal_status_type"
          data="{{ coachStatusTypeFormOptions.value }}"
          emptyMessage="No options"
          label="Status"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.value }}"
        />
        <Select
          id="addCoachModal_delivery_manager"
          data="{{ employees.data }}"
          emptyMessage="No options"
          label="Delivery Manager"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.value }}"
        />
        <NumberInput
          id="addCoachModal_max_learner_caseload"
          currency="USD"
          inputValue={0}
          label="Max Learner Caseload"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <Select
          id="addCoachModal_role_type"
          data="{{ coachRoleTypeFormOptions.value }}"
          emptyMessage="No options"
          label="Role"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.value }}"
        />
        <Select
          id="addCoachModal_pod"
          data="{{ coachPodFormOptions.value }}"
          emptyMessage="No options"
          label="Pod"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.value }}"
        />
        <Select
          id="addCoachModal_senior_manager"
          data="{{ employees.data }}"
          emptyMessage="No options"
          label="Senior Manager"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.value }}"
        />
        <NumberInput
          id="addCoachModal_max_cohort_caseload"
          currency="USD"
          inputValue={0}
          label="Max Cohort Caseload"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <Switch
          id="addCoachModal_is_senior_executive"
          label="Is Senior Executive?"
        />
      </Body>
      <Footer>
        <Button
          id="addCoachModalFormSubmitButton"
          submit={true}
          submitTargetId="addCoachModalForm"
          text="Submit"
        />
      </Footer>
      <Event
        id="a9cd49ef"
        event="submit"
        method="trigger"
        params={{}}
        pluginId="addNewCoach"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
