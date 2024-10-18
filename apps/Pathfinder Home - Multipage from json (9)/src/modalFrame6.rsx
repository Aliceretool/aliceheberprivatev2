<ModalFrame
  id="modalFrame6"
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
      id="modalTitle36"
      value="### {{table32.selectedRow.company_name}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton37"
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
        pluginId="modalFrame6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text90"
      horizontalAlign="center"
      style={{ ordered: [{ background: "secondary" }] }}
      value="#### IN PROGRESS"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Include src="./steppedContainer3.rsx" />
  </Body>
</ModalFrame>
