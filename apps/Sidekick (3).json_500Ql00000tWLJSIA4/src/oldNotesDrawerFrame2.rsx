<DrawerFrame
  id="oldNotesDrawerFrame2"
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
  width="800px"
>
  <Header>
    <Button
      id="drawerCloseButton10"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="3f8119e1"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="oldNotesDrawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="drawerTitle10"
      value={
        '#### {{ selected_user.value["gh_apprenticeship.learner_full_name"] + " Notes"}}'
      }
      verticalAlign="center"
    />
  </Header>
  <Body>
    <TextEditor
      id="richTextEditor2"
      margin="4px 8px"
      value="type your notes here"
    />
  </Body>
  <Footer>
    <Button
      id="button27"
      style={{ map: { background: "rgba(74, 94, 247, 1)" } }}
      text="Submit"
    />
  </Footer>
</DrawerFrame>
