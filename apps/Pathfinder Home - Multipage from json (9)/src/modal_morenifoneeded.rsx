<ModalFrame
  id="modal_morenifoneeded"
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
      id="modalTitle43"
      value="### {{ i18n.t('More Information Needed') }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton45"
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
        pluginId="modal_morenifoneeded"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextArea
      id="textArea42"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="4"
      placeholder="Comments"
    />
  </Body>
  <Footer>
    <Button
      id="button157"
      disabled={'{{textArea42.value === ""}}'}
      text="{{ i18n.t('Save') }} "
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="upd_assigned_to_reporter"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_moreinfoneeded"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_TODO"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_morenifoneeded"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
