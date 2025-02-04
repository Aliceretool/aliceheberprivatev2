<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="prevDate" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      onSubmit=""
      prevDate=""
    >
      <Text
        id="CallMeBack_ModalTitle"
        disableMarkdown={true}
        margin="8px 20px"
        style={{ ordered: [{ fontSize: "20px" }, { fontWeight: "600" }] }}
        value="Call me back"
        verticalAlign="center"
      />
      <Button
        id="CallMeBack_ModalCloseButton"
        ariaLabel="Close"
        horizontalAlign="right"
        iconBefore="bold/interface-delete-1"
        style={{ ordered: [{ border: "transparent" }] }}
        styleVariant="outline"
      >
        <Event
          event="click"
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
          pluginId="onClose"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Form
        id="CallMeBack_Form"
        disableSubmit="{{ CallMeBack_Form.invalid }}"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showBorder={false}
        showFooter="false"
        showHeader="false"
        style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      >
        <Date
          id="CallMeBack_Date"
          customValidation={
            '{{ moment(CallMeBack_Date.value) < moment(new Date()).startOf(\'day\') ? "The date must be in the future" : "" }}'
          }
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          firstDayOfWeek={1}
          iconBefore="bold/interface-calendar"
          label="Date"
          labelPosition="top"
          value="{{ moment(prevDate?.value || new Date()).format('YYYY-MM-DD') }}"
        />
        <Time
          id="CallMeBack_Time"
          customValidation={
            '{{ moment(dateTn.value) < moment() ? "The time must be in the future" : "" }}'
          }
          displayTimeZone="local"
          iconBefore="bold/interface-time-clock-circle-alternate"
          label="Time"
          labelPosition="top"
          manageTimeZone={true}
          minuteStep="1"
          value="{{ moment.utc(prevDate?.value || new Date()).add(prevDate?.value ? 0 : 15, 'minutes').format('HH:mm') }}"
          valueTimeZone="00:00"
        />
        <Text
          id="BeneficiaryTimezone_Text"
          margin="4px 16px"
          value="Beneficiary timezone: XX"
          verticalAlign="center"
        />
        <Checkbox
          id="IsUrgent_Checkbox"
          label="Urgent"
          labelWidth="100"
          value="false"
        />
        <Container
          id="CallMeBack_ModalActions"
          _gap="0px"
          _justify="end"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="12px"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(0, 0, 0, 0)" }] }}
        >
          <View id="a3d3e" viewKey="View 1">
            <Button
              id="CallMeBack_ConfirmButton"
              heightType="auto"
              loading="{{ callMeBackInteraction.isFetching }}"
              submit={true}
              submitTargetId="CallMeBack_Form"
              text="Confirm"
            />
            <Button
              id="CallMeBack_CancelButton"
              styleVariant="outline"
              text="Cancel"
            >
              <Event
                event="click"
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
                pluginId="onClose"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
          </View>
        </Container>
        <Event
          event="submit"
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
          pluginId="submitHandler"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
