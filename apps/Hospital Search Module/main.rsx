<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="default_address"
    value="проспект Володимира Івасюка, 8К8, Kyiv, Ukraine"
  />
  <GlobalWidgetOutput
    id="hospital"
    value="{{ JSON.stringify(selectedHospital?.value || null) }}"
  />
  <GlobalWidgetProp id="place_Id" value="ChIJQcDQAfnR1EARPErNI_-PXwM" />
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
      defaultAddress="проспект Володимира Івасюка, 8К8, Kyiv, Ukraine"
      isGlobalWidgetContainer={true}
      placeAddress="проспект Володимира Івасюка, 8К8, Kyiv, Ukraine"
      placeId="ChIJQcDQAfnR1EARPErNI_-PXwM"
    >
      <Include src="./src/Main_Container.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
