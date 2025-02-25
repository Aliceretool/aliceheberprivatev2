<ModalFrame
  id="CreateCase_ModalFrame_DEPRECATED"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="0"
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Text
      id="CreateCase_ModalTitle"
      value="### Create case"
      verticalAlign="center"
    />
    <Button
      id="CreateCase__ModalCloseButton"
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
        pluginId="CreateCase_ModalFrame_DEPRECATED"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="caseCreationModule2"
      margin="16px"
      name="Case creation module"
      pageUuid="82f651e7-2266-4939-8249-010cb9122b1c"
      policyExtId=""
      selectedInteractionCall=""
      trigger=""
    />
  </Body>
</ModalFrame>
