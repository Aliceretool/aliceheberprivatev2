<ModalFrame
  id="modal_Rejection_comments"
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
  style={{ ordered: [] }}
>
  <Header>
    <Text
      id="modalTitle32"
      value="### Rejection Comments"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton33"
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
        pluginId="modal_Rejection_comments"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextArea
      id="textArea24"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="6"
      placeholder="{{ i18n.t('Enter value') }}"
      required={true}
    />
    <Switch
      id="switch2"
      label="{{ i18n.t('All linked Tests will be marked as Rejected') }}"
    />
  </Body>
  <Footer>
    <Button
      id="button139"
      disabled="{{switch2.value === false }}"
      text="{{ i18n.t('Reject') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_rejected4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_Rejection_comments"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getIssue15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
