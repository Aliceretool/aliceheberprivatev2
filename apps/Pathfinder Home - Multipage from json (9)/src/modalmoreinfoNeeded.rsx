<ModalFrame
  id="modalmoreinfoNeeded"
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
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <Text
      id="modalTitle16"
      value="### More Information Needed"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton17"
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
        pluginId="modalmoreinfoNeeded"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextArea
      id="textArea15"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="4"
      placeholder="{{ i18n.t('Comments') }}"
    />
  </Body>
  <Footer>
    <Button id="button114" text="{{ i18n.t('Save') }}">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="upd_assignto_reporter"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_open"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalmoreinfoNeeded"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    event="show"
    method="focus"
    params={{ ordered: [] }}
    pluginId="textArea15"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
