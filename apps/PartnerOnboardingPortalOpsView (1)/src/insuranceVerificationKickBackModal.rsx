<ModalFrame
  id="insuranceVerificationKickBackModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden=""
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
      <Button
        id="button1"
        submit={true}
        submitTargetId="insuranceVerificationKickBackForm2"
        text="Button"
      />
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
