<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Button id="button1" text="Button" />
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="5cf3f" value="Tab 1" />
          <Option id="63df4" value="Tab 2" />
          <Option id="99021" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="129b6" viewKey="View 1" />
      <View id="3c8cf" viewKey="View 2" />
      <View id="7bf03" viewKey="View 3" />
    </Container>
  </Frame>
</App>
