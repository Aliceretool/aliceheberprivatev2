<DrawerFrame
  id="drawerFrame6"
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
      id="drawerTitle5"
      value="### {{ i18n.t('Activity') }}"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton6"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="audit6"
      current_project_id="{{ current_project_id5.value }}"
      issueID="{{ url.searchParams.issueID }}"
      name="Audit"
      pageUuid="bb5fc372-ad3c-4e59-bf4a-1862b74ef2e1"
      userID="{{ getUser9.data.userID[0] }}"
    />
  </Body>
</DrawerFrame>
