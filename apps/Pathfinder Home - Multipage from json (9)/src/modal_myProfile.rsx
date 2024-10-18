<ModalFrame
  id="modal_myProfile"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="myProfileModal" value="### My Profile" verticalAlign="center" />
    <Button
      id="modalCloseButton41"
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
        pluginId="modal_myProfile"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="myprofile1"
      close=""
      name="myprofile"
      pageUuid="8538edef-42d5-4076-83b4-ba13fb71c381"
    />
  </Body>
</ModalFrame>
