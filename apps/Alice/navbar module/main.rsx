<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
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
        marginType="normal"
        orientation="vertical"
        src="https://stable-3-24.retool.dev/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
      >
        <Option id="40fd0" label="Menu item 2" />
        <Option
          id="ecf0a"
          key="e659310d-25da-4a95-beed-f361f2d7237c"
          label="Menu item 1"
        />
        <Option id="d3209" label="Menu item 3" />
      </Navigation>
      <Text
        id="text1"
        marginType="normal"
        value="module at very start"
        verticalAlign="center"
      />
      <Text
        id="text2"
        marginType="normal"
        value="before release"
        verticalAlign="center"
      />
      <Text
        id="text3"
        marginType="normal"
        value="after release & before release2"
        verticalAlign="center"
      />
      <Text
        id="text4"
        marginType="normal"
        value="after release2"
        verticalAlign="center"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
