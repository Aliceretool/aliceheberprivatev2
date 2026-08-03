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
        src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
        style={{ ordered: [{ background: "primary" }] }}
      >
        <Option id="090cf" label="Menu item 2" />
        <Option id="1b772" itemType="app" label="Menu item 1" />
        <Option id="fcc08" label="Menu item 3" />
        <Option
          id="9d4bd"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="green updated"
        />
      </Navigation>
    </ModuleContainerWidget>
  </Frame>
</App>
