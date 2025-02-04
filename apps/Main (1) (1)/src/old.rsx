<ModalFrame
  id="old"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="0"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="CreateCallMeBack_ModalTitle"
      style={{ ordered: [{ fontSize: "20px" }] }}
      value="Call me back"
      verticalAlign="center"
    />
    <Button
      id="CreateCallMeBack_ModalCloseButton"
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
        pluginId="old"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Form
      id="CreateCallMeBack_Form"
      disableSubmit="{{ CreateCallMeBack_Form.invalid }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooter="false"
      showHeader="false"
    >
      <Date
        id="CallMeBack_Date"
        customValidation={
          '{{ moment(CallMeBack_Date.value) < moment(new Date()).startOf(\'day\') ? "The date is in the past" : "" }}'
        }
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        iconBefore="bold/interface-calendar"
        label="Date"
        labelPosition="top"
        value="{{ moment().format('YYYY-MM-DD') }}"
      />
      <Time
        id="CallMeBack_Time"
        customValidation={
          '{{ moment(callMeBackDate.value) < moment.utc() ? "The time is in the past" : "" }}'
        }
        displayTimeZone="local"
        iconBefore="bold/interface-time-clock-circle-alternate"
        label="Time"
        labelPosition="top"
        manageTimeZone={true}
        minTime="{{moment()}}"
        minuteStep="1"
        value="{{ moment().add(15, 'minutes').format() }}"
        valueTimeZone="00:00"
      />
      <Checkbox
        id="IsUrgent_Checkbox"
        label="Urgent"
        labelWidth="100"
        value="true"
      />
      <Spacer id="spacer3" />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="callMeBackInteraction"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Header>
  <Body>
    <Container
      id="CreateCallMeBack_ModalActions"
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="a3d3e" viewKey="View 1">
        <Button
          id="CreateCallMeBack_ConfirmButton"
          heightType="auto"
          loading="{{ callMeBackInteraction.isFetching }}"
          submit={true}
          submitTargetId="CreateCallMeBack_Form"
          text="Confirm"
        />
        <Button
          id="CreateCallMeBack_CancelButton"
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="hide"
            params={{ ordered: [] }}
            pluginId="old"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Body>
</ModalFrame>
