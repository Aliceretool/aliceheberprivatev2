<ModalFrame
  id="addRaasSupplyModalFrame"
  enableFullBleed={true}
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
  size="fullScreen"
>
  <Header>
    <Text
      id="modalTitle3"
      value="### Add New Raas Supply"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton3"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="4b270829"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="addRaasSupplyModalFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./steppedContainer1.rsx" />
  </Body>
  <Event
    id="d7f42765"
    event="show"
    method="trigger"
    params={{ map: { options: { map: { additionalScope: {} } } } }}
    pluginId="run_get_partners"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
