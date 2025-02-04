<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="interactionId" />
  <GlobalWidgetProp id="isOpen" defaultValue="false" />
  <Include src="./src/CloseInteraction_Modal.rsx" />
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
      interactionId=""
      isGlobalWidgetContainer={true}
      isOpen=""
      margin="0"
      onClose={null}
      onModalHide=""
    />
  </Frame>
</App>
