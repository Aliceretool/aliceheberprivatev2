<DrawerFrame
  id="projectsDrawerFrame"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter="false"
  showHeader={true}
  showOverlay={true}
  width="600px"
>
  <Header>
    <Text
      id="drawerTitle3"
      value="### {{ selected_user.value.learner.first_name}}'s Projects"
      verticalAlign="center"
    />
    <Button
      id="button34"
      heightType="auto"
      iconBefore="bold/interface-link-square-alternate"
      styleVariant="outline"
      text="Projects on MV Platform"
    >
      <Event
        id="4c072919"
        event="click"
        method="openUrl"
        params={{ map: { url: "https://my.multiverse.io/projects/" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="drawerCloseButton3"
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
        pluginId="projectsDrawerFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="container141"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      loading="{{ getLearnerProjectData.isFetching || formatLearnerProjects.isFetching || getLearnerProjectData.isLoading || formatLearnerProjects.isLoading }}"
      padding="12px"
      showBorder={false}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle171"
          hidden="{{ !(getLearnerProjectData.isFetching || formatLearnerProjects.isFetching || getLearnerProjectData.isLoading || formatLearnerProjects.isLoading) }}"
          value="#### Loading Project Data..."
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1" />
    </Container>
    <ListViewBeta
      id="projectsListView"
      _primaryKeys=""
      data="{{ formatLearnerProjects.data.projects }}"
      hidden="{{ getLearnerProjectData.isFetching || formatLearnerProjects.isFetching || getLearnerProjectData.isLoading || formatLearnerProjects.isLoading }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./collapsibleContainer4.rsx" />
    </ListViewBeta>
  </Body>
</DrawerFrame>
