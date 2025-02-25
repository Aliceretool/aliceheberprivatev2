<ModalFrame
  id="modalFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle3" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton3"
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
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="ineractionCallModalModule2"
      name="Ineraction call modal module"
      onClose="closeUpdateCallMeBackModal"
      onSubmit="updateCallMeBackInteraction"
      pageUuid="3a32634a-689f-48c8-b578-e9a2e6723912"
      prevDate="{{ CallBack_Table.selectedRow.date }}"
    />
  </Body>
</ModalFrame>
