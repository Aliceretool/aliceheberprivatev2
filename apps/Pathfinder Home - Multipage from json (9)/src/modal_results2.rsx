<ModalFrame
  id="modal_results2"
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
  style={{
    ordered: [{ background: "rgb(230, 235, 239)" }, { borderRadius: "8px" }],
  }}
  styleContext={{ ordered: [] }}
>
  <Header>
    <Text
      id="modalTitle20"
      value="### Raw Data / Comments"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton21"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_results2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_sf"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextArea
      id="textArea17"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="4"
      placeholder="{{ i18n.t('Raw Data / Comments') }}"
    />
    <TextInput
      id="textInput24"
      label="{{ i18n.t('Equipment No.') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
    />
    <TextInput
      id="textInput25"
      label="{{ i18n.t('References/OOS/OOT') }}"
      labelPosition="top"
      placeholder="{{ i18n.t('Enter value') }}"
    />
  </Body>
  <Footer>
    <Button id="button122" submitTargetId="" text="{{ i18n.t('Add Results') }}">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_sf"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_results2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="refresh_results2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_open2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
