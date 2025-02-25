<ModalFrame
  id="UpdateCallMeBack_Modal"
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
      id="UpdateCallMeBack_ModalTitle"
      style={{ ordered: [{ fontSize: "20px" }] }}
      value="Call me back"
      verticalAlign="center"
    />
    <Button
      id="UpdateCallMeBack_ModalCloseButton"
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
        pluginId="UpdateCallMeBack_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="UpdateCallMeBack_Form"
      disableSubmit="{{ UpdateCallMeBack_Form.invalid }}"
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
        id="CallMeBack_Update_Date"
        customValidation={
          '{{ moment(CallMeBack_Update_Date.value) < moment().startOf(\'day\') ? "The date is in the past" : "" }}'
        }
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        iconBefore="bold/interface-calendar"
        label="Date"
        labelPosition="top"
        value="{{ moment(CallBack_Table.selectedRow.date).format('YYYY-MM-DD') }}"
      />
      <Time
        id="CallMeBack_Update_Time"
        customValidation={
          '{{ moment(CallMeBack_Update_Time.value, "HH:mm:ss.SSS") < moment.utc() ? "The time is in the past" : "" }}'
        }
        displayTimeZone="local"
        iconBefore="bold/interface-time-clock-circle-alternate"
        label="Time"
        labelPosition="top"
        manageTimeZone={true}
        minuteStep="1"
        value={'{{ moment(CallBack_Table.selectedRow.date).format("HH:mm") }}'}
        valueTimeZone="00:00"
      />
      <Checkbox
        id="IsUrgent_Update_Checkbox"
        label="Urgent"
        labelWidth="100"
        value="true"
      />
      <Spacer id="spacer4" />
      <Event
        event="submit"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  {
                    additionalScope: {
                      ordered: [
                        { id: "{{ CallBack_Table.selectedRow.id }}" },
                        { isUrgent: "{{ IsUrgent_Update_Checkbox.value }}" },
                        {
                          date: "{{ moment(`${CallMeBack_Update_Date.value} ${CallMeBack_Update_Time.value}`) }}",
                        },
                      ],
                    },
                  },
                ],
              },
            },
          ],
        }}
        pluginId="updateCallMeBackInteraction"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Container
      id="UpdateCallMeBack_ModalActions"
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
          id="UpdateCallMeBack_ConfirmButton"
          heightType="auto"
          loading="{{ callMeBackInteraction.isFetching }}"
          submit={true}
          submitTargetId="UpdateCallMeBack_Form"
          text="Confirm"
        />
        <Button
          id="UpdateCallMeBack_CancelButton"
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="hide"
            params={{ ordered: [] }}
            pluginId="UpdateCallMeBack_Modal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Footer>
</ModalFrame>
