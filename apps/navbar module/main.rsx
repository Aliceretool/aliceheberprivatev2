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
        src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
        style={{ ordered: [{ background: "success" }] }}
      >
        <Option id="1b772" itemType="app" label="Menu item 1" />
        <Option id="090cf" label="Menu item 2" />
        <Option id="fcc08" label="Menu item 3" />
        <Option
          id="9d4bd"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="green"
        />
      </Navigation>
    </ModuleContainerWidget>
  </Frame>
</App>
