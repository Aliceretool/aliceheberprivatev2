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
    >
      <Text id="text1" value="module created" verticalAlign="center" />
      <Text
        id="text2"
        value="release created but not published "
        verticalAlign="center"
      />
      <Text
        id="text3"
        value="release created and published"
        verticalAlign="center"
      />
      <Text
        id="text4"
        value="added text but not published release"
        verticalAlign="center"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
