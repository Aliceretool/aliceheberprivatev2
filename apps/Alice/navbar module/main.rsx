<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Navigation
        id="navigation1"
        itemMode="static"
        orientation="vertical"
        src="https://stable-3-24.retool.dev/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
      >
        <Option id="ecf0a" label="Menu item 1" />
        <Option id="40fd0" label="Menu item 2" />
        <Option id="d3209" label="Menu item 3" />
      </Navigation>
      <Text id="text1" value="module at very start" verticalAlign="center" />
      <Text id="text2" value="before release" verticalAlign="center" />
      <Text
        id="text3"
        value="after release & before release2"
        verticalAlign="center"
      />
      <Text id="text4" value="after release2" verticalAlign="center" />
    </ModuleContainerWidget>
  </Frame>
</App>
