<DrawerFrame
  id="Comments_Drawer"
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
  width="medium"
>
  <Header>
    <Text
      id="Comments_Drawer_Title"
      value="### Comments"
      verticalAlign="center"
    />
    <Button
      id="Comments_Drawer_CloseButton"
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
        pluginId="Comments_Drawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Timeline
      id="eventList1"
      items={
        '["Account created - 2020-06-29", "Password updated - 2020-06-29", "Billing details added - 2020-06-28"]'
      }
      timestamps={
        '["2020-06-29T21:34:00+00:00", "2020-06-29T20:39:00+00:00", "2020-06-28T11:12:00+00:00"]'
      }
    />
  </Body>
  <Footer>
    <TextArea
      id="textArea1"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="1"
      placeholder="Add comment"
    />
    <Icon id="icon1" horizontalAlign="center" icon="line/mail-send-email" />
  </Footer>
</DrawerFrame>
