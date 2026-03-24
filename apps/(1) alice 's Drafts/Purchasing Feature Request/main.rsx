<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" padding="8px 12px" sticky={false} type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      overflowType="scroll"
    >
      <Include src="./src/requestFeatureModal.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
