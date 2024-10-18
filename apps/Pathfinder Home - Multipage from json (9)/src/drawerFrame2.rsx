<DrawerFrame
  id="drawerFrame2"
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
      id="drawerTitle2"
      value="### {{ formatDataAsArray(getProject_field_translation.data).filter(x => x.project_fieldID == '502e8878-020f-4bf1-a0dd-1e867dc656d3')[0].field_value }}"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton2"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="audit2"
      current_project_id="{{ current_project_id.value }}"
      issueID="{{ url.searchParams.issueID }}"
      name="Audit"
      pageUuid="bb5fc372-ad3c-4e59-bf4a-1862b74ef2e1"
      userID="{{ getUser2.data.userID[0] }}"
    />
  </Body>
</DrawerFrame>
