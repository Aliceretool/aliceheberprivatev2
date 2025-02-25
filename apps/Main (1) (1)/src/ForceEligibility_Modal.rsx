<ModalFrame
  id="ForceEligibility_Modal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px 16px 12px"
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Text id="modalTitle6" value="### Create case" verticalAlign="center" />
    <Button
      id="modalCloseButton8"
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
        pluginId="ForceEligibility_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="caseCreationModule4"
      hidden=""
      margin="4px 8px 160px 8px"
      name="Case creation module"
      onSubmit="closeForceEligibilityModal"
      pageUuid="82f651e7-2266-4939-8249-010cb9122b1c"
      policyExtId=""
      selectedInteractionCall=""
      trigger=""
    />
  </Body>
</ModalFrame>
