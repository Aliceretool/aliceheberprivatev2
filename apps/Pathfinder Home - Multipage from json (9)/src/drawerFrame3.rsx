<DrawerFrame
  id="drawerFrame3"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text id="text39" value="### Activity" verticalAlign="center" />
    <Button
      id="drawerCloseButton3"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "10" }] }}
        pluginId="auditsToFetch"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="audit4"
      current_project_id="{{ getProject4.data.projectID[0] }}"
      issueID="{{ url.searchParams.issueID }}"
      name="Audit"
      pageUuid="bb5fc372-ad3c-4e59-bf4a-1862b74ef2e1"
      userID="{{ getUser3.data.userID[0] }}"
    />
  </Body>
  <Event
    event="show"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="getPathfinderAudit_issue"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="setValue"
    params={{ ordered: [{ value: "10" }] }}
    pluginId="auditsToFetch"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</DrawerFrame>
