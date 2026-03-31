<DrawerFrame
  id="projectsDrawerFrame2"
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
      id="drawerTitle11"
      value="### {{ selected_user.value.learner.first_name}}'s Projects"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton11"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="133391d8"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="projectsDrawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <ListViewBeta
      id="listView7"
      _primaryKeys=""
      data="{{ unique_project_list4.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    />
  </Body>
</DrawerFrame>
