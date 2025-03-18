<ModalFrame
  id="applicationDecisionSaveModal"
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
      id="modalCloseButton1"
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
        pluginId="applicationDecisionSaveModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Alert
      id="outstandingSectionsWarning2"
      description="This application cannot be put into the Pass or Ready for Review status because there are sections or the fields, 'Minimum Business Age Met?' and 'Date Scorecard Completed', that require further review."
      title="Review Required: Outstanding"
      type="warning"
    />
  </Body>
  <Event
    event="hide"
    method="resetValue"
    params={{ ordered: [] }}
    pluginId="appDecisionSelect"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
