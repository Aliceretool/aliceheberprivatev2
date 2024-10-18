<DrawerFrame
  id="drawerFrame4"
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
      id="drawerTitle3"
      value="{{ i18n.t('Activity') }}"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton4"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="audit3"
      current_project_id="{{ current_project_id3.value }}"
      issueID="{{ url.searchParams.issueID }}"
      name="Audit"
      pageUuid="bb5fc372-ad3c-4e59-bf4a-1862b74ef2e1"
      userID="{{ getUser4.data.userID[0] }}"
    />
  </Body>
</DrawerFrame>
