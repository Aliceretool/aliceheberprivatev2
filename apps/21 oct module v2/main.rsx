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
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      overflowType="hidden"
    >
      <Text
        id="text1"
        value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
        verticalAlign="center"
      />
      <Text id="text2" value="21 oct module v2" verticalAlign="center" />
      <Button id="button1" text="Button" />
      <Text id="text3" value="branch test 7" verticalAlign="center" />
      <Text
        id="text4"
        value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
        verticalAlign="center"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
