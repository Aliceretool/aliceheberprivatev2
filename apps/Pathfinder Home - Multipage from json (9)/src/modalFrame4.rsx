<ModalFrame
  id="modalFrame4"
  enableFullBleed={true}
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
  size="large"
>
  <Header>
    <Text id="modalTitle34" value="### New contact" verticalAlign="center" />
    <Button
      id="modalCloseButton35"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./steppedContainer4.rsx" />
  </Body>
  <Footer>
    <Button
      id="button142"
      hidden="{{ steppedContainer4.currentViewIndex
  === 0}}"
      iconBefore="line/interface-arrows-bend-up-left-3"
      marginType="normal"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousView"
        params={{ ordered: [] }}
        pluginId="steppedContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="formButton14"
      marginType="normal"
      style={{ ordered: [{ background: "primary" }] }}
      submit={true}
      submitTargetId="form39"
      text="Send & Add another"
    />
    <Button
      id="button143"
      marginType="normal"
      style={{ ordered: [{ background: "secondary" }] }}
      text="Create account"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [] }}
        pluginId="steppedContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{switch4.value == true}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addNewClient"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{switch4.value == false}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addnewuser_existingclient"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{switch4.value == true}}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addnewuser_newclient"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button141"
      hidden="{{ steppedContainer4.currentViewIndex != 0 }} "
      iconAfter="line/interface-arrows-right"
      marginType="normal"
      style={{ ordered: [{ background: "secondary" }] }}
      text="Next"
    >
      <Event
        event="click"
        method="showNextView"
        params={{ ordered: [] }}
        pluginId="steppedContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="formButton27"
      marginType="normal"
      style={{ ordered: [{ background: "secondary" }] }}
      submit={true}
      submitTargetId="form39"
      text="Send Welcome Email"
    />
  </Footer>
</ModalFrame>
