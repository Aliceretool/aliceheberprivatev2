<DrawerFrame
  id="drawerFrame11"
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
    <Text id="drawerTitle10" value="### Activity" verticalAlign="center" />
    <Button
      id="drawerCloseButton11"
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
        pluginId="drawerFrame11"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="audit9"
      current_project_id="{{ current_project_id8.value }}"
      issueID="{{ url.searchParams.issueID }}"
      name="Audit"
      pageUuid="bb5fc372-ad3c-4e59-bf4a-1862b74ef2e1"
      userID="{{ getUserData.data.userID[0] }}"
    />
  </Body>
</DrawerFrame>
