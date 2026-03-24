<ModalFrame
  id="opsCompounds"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  margin="0"
  overlayInteraction={true}
  padding="0"
  showHeader={true}
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle" value="### Set Location" verticalAlign="center" />
    <Button
      id="modalCloseButton"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="36b50345"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="opsCompounds"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="raaSDeefletingCompound"
      margin="0"
      name="RaaS Deefleting Compound"
      pageUuid="25e7ce50-96e3-4971-8b90-f87f4d7582ed"
    />
  </Body>
</ModalFrame>
