<ModalFrame
  id="modalAddCAPA"
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
        pluginId="modalAddCAPA"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="CreateCAPA3"
      close="closeCAPAModal"
      margin="0"
      name="Create CAPA"
      pageUuid="fd1c38df-e8ea-489f-a726-cf3c9a713459"
      referenceIssueID="{{ getIssue4.data.issueID[0] }}"
      referenceReadOnly="true"
      refresh="refreshCAPAModule"
    />
  </Body>
</ModalFrame>
