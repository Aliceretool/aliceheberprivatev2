<ModalFrame
  id="companyInfoKickBackModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
>
  <Header>
    <Button
      id="modalCloseButton2"
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
        pluginId="companyInfoKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="companyInfoKickBackForm3"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="companyInfoKickBackFormTitle3"
          marginType="normal"
          value="#### Kick Back Details"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="companyInfoKickBackRejectionReasonTextArea3"
          autoResize={true}
          label="Rejection Notes"
          labelPosition="top"
          marginType="normal"
          minLines="3"
          placeholder="Please enter the reason for rejecting this section..."
          required="true"
        >
          <Event
            event="change"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    '{{{...applicationSectionStatusUpdates.value, "companyProfileKickbackNotes": self.value}}}',
                },
              ],
            }}
            pluginId="applicationSectionStatusUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </TextArea>
        <Spacer id="spacer34" marginType="normal" />
        <Checkbox
          id="invalidateSampleContractCheckbox3"
          label="Invalidate Sample Contract?"
          labelPosition="left"
          labelWidth="80"
          marginType="normal"
        />
      </Body>
      <Footer>
        <Button
          id="companyInfoKickBackSubmitButton3"
          marginType="normal"
          submit={true}
          submitTargetId="companyInfoKickBackForm3"
          text="Submit kickback"
        />
      </Footer>
      <Event
        enabled="{{invalidateSampleContractCheckbox3.value === true}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatKickBackInvalidationsAsArray"
        type="datasource"
        waitMs=""
        waitType="debounce"
      />
      <Event
        enabled="{{invalidateSampleContractCheckbox3.value === false}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateApplicationSectionStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Event
    event="show"
    method="setValue"
    params={{ ordered: [{ value: '{"companyProfileReview": "Rejected" }' }] }}
    pluginId="applicationSectionStatusUpdates"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="setValue"
    params={{ ordered: [{ value: "{}" }] }}
    pluginId="applicationSectionStatusUpdates"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="clearValue"
    params={{ ordered: [] }}
    pluginId="companyInfoKickBackRejectionReasonTextArea"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="show"
    method="setValue"
    params={{ ordered: [{ value: "companyInfo" }] }}
    pluginId="kickBackSection"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="setValue"
    params={{ ordered: [{ value: "null" }] }}
    pluginId="kickBackSection"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="resetValue"
    params={{ ordered: [] }}
    pluginId="invalidateSampleContractCheckbox"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
