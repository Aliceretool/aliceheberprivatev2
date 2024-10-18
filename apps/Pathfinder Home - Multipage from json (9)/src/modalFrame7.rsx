<ModalFrame
  id="modalFrame7"
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
  size="medium"
>
  <Header>
    <Text
      id="modalTitle37"
      marginType="normal"
      value="### New Enquiry v2"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton38"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame7"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./container28.rsx" />
    <Include src="./tabbedContainer48.rsx" />
  </Body>
  <Footer>
    <Button id="button144" marginType="normal" text="Submit" />
  </Footer>
</ModalFrame>
