<ModalFrame
  id="insuranceVerificationKickBackModal"
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
        pluginId="insuranceVerificationKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="insuranceVerificationKickBackForm2"
      disableSubmit="{{ UpdateKickbackRelatedAttachmentsForInsurances.isFetching || UpdateApplicationSectionStatus.isFetching}}"
      footerPaddingType="normal"
      headerPaddingType="normal"
      loading="{{ UpdateKickbackRelatedAttachmentsForInsurances.isFetching || UpdateApplicationSectionStatus.isFetching}}"
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
          id="insuranceVerificationKickBackFormTitle2"
          marginType="normal"
          value="#### Kick Back Details"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="insuranceVerificationKickBackRejectionReasonTextArea2"
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
                    '{{{...applicationSectionStatusUpdates.value, "insurancesKickbackNotes": self.value}}}',
                },
              ],
            }}
            pluginId="applicationSectionStatusUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </TextArea>
        <Spacer id="spacer37" marginType="normal" />
        <Multiselect
          id="insuranceDocumentsToInvalidateMultiselect"
          emptyMessage="No options"
          itemMode="static"
          label="Documents to invalidate:"
          labelPosition="top"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select options"
          required={true}
          showSelectionIndicator={true}
          wrapTags={true}
        >
          <Option
            id="32441"
            label="General Liability"
            value="General_Liability"
          />
          <Option id="47d86" label="Worker’s Comp" value="Workers_Comp" />
          <Option
            id="2284c"
            label="Workers Comp exemption"
            value="Workers_Comp_Exemption"
          />
        </Multiselect>
      </Body>
      <Footer>
        <Button
          id="insuranceVerificationKickBackSubmitButton5"
          marginType="normal"
          submit={true}
          submitTargetId="insuranceVerificationKickBackForm2"
          text="Submit kickback"
        />
      </Footer>
      <Event
        enabled=""
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatKickBackInvalidationsAsArray"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Button
      id="button1"
      submit={true}
      submitTargetId="insuranceVerificationKickBackForm2"
      text="Button"
    />
    <Button
      id="button2"
      submit={true}
      submitTargetId="insuranceVerificationKickBackForm2"
      text="Button"
    />
  </Body>
  <Event
    event="show"
    method="setValue"
    params={{ ordered: [{ value: '{"insurancesReview": "Rejected" }' }] }}
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
    pluginId="insuranceVerificationKickBackRejectionReasonTextArea2"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="clearValue"
    params={{ ordered: [] }}
    pluginId="insuranceDocumentsToInvalidateMultiselect"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="show"
    method="setValue"
    params={{ ordered: [{ value: "insurances" }] }}
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
</ModalFrame>
