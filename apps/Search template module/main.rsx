<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="open" defaultValue="false" />
  <GlobalWidgetProp id="type" description={'"email" or "sms" or none'} />
  <Include src="./src/SearchTemplate_Modal.rsx" />
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
    />
  </Frame>
</App>
