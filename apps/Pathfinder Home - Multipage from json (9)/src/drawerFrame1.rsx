<DrawerFrame
  id="drawerFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text
      id="drawerTitle1"
      marginType="normal"
      value="### Activity"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton1"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Timeline
      id="timeline1"
      isGrouped={true}
      items={
        '["Account created - 2020-06-29", "Password updated - 2020-06-29", "Billing details added - 2020-06-28"]'
      }
      sortedDesc={true}
      timestamps={
        '["2020-06-29T21:34:00+00:00", "2020-06-29T20:39:00+00:00", "2020-06-28T11:12:00+00:00"]'
      }
    />
  </Body>
</DrawerFrame>
