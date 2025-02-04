<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="action"
    defaultValue="attach"
    description={'"attach" or "detach"'}
    value="attach"
  />
  <GlobalWidgetProp id="interactionId" />
  <GlobalWidgetProp id="isOpen" defaultValue="false" />
  <Include src="./src/AttachInteractionToCase_Modal.rsx" />
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
      action="attach"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      margin="0"
    />
  </Frame>
</App>
