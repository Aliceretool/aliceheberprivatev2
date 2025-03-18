<ModalFrame
  id="installerAgreementKickBackModal"
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
      id="modalCloseButton6"
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
        pluginId="installerAgreementKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="installerAgreementKickBackForm2"
      disableSubmit="{{ UpdateApplicationSectionStatus.isFetching || UpdateKickbackAttachments.isFetching}}"
      footerPaddingType="normal"
      headerPaddingType="normal"
      loading="{{ UpdateApplicationSectionStatus.isFetching || UpdateKickbackAttachments.isFetching}}"
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
          id="kickbackFormTitle2"
          marginType="normal"
          value="#### Kick Back Details"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="installerAgreementKickBackRejectionReasonTextArea2"
          autoResize={true}
          label="Rejection Notes"
          labelPosition="top"
          marginType="normal"
          minLines="3"
          placeholder="Please enter the reason for rejecting this section..."
          required={true}
        >
          <Event
            event="change"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    '{{{...applicationSectionStatusUpdates.value, "installerAgreementKickbackNotes": self.value}}}',
                },
              ],
            }}
            pluginId="applicationSectionStatusUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </TextArea>
      </Body>
      <Footer>
        <Button
          id="installerAgreementKickBackSubmitButton2"
          marginType="normal"
          submit={true}
          submitTargetId="installerAgreementKickBackForm2"
          text="Submit kickback"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateInstallerAgreement"
        type="datasource"
        waitMs=""
        waitType="debounce"
      />
    </Form>
  </Body>
  <Event
    event="show"
    method="setValue"
    params={{
      ordered: [{ value: '{"installerAgreementReview": "Rejected" }' }],
    }}
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
    pluginId="installerAgreementKickBackRejectionReasonTextArea2"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
