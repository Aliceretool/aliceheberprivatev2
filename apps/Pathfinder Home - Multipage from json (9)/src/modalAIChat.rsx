<ModalFrame
  id="modalAIChat"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Text
      id="modalTitle47"
      value="### Pathfinder AI Chat"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton49"
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
        pluginId="modalAIChat"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./tabbedContainer53.rsx" />
  </Body>
</ModalFrame>
