<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Button id="button1" text="Button">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="query1"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <JSONEditor id="jsonEditor1" value="{{ query1.data }}" />
    </ModuleContainerWidget>
  </Frame>
</App>
