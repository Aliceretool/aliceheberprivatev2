<DrawerFrame
  id="drawerFrame4"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  width="700px"
>
  <Header>
    <Text
      id="drawerTitle7"
      value="### {{ selectedNotesLearner.value.learner.first_name }} {{ selectedNotesLearner.value.learner.last_name }} Notes History"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton7"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="e279edea"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="drawerFrame4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <ListViewBeta
      id="viewNotesList2"
      _primaryKeys="{{ item.id }}"
      data="{{ (()=>{
  const notes = getLearnerNotesHistory.data?.items || [];
  return notes;
})() }}"
      heightType="auto"
      itemWidth="200px"
      margin="0"
      maxHeight="100vh"
      numColumns={3}
      padding="0"
    >
      <Include src="./viewNotesContainer2.rsx" />
    </ListViewBeta>
  </Body>
</DrawerFrame>
