<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetOutput
    id="address"
    value="{{ JSON.stringify(responseAddress?.value || 'null') }}"
  />
  <GlobalWidgetProp
    id="defaultAddress"
    value="проспект Володимира Івасюка, 8К8, Kyiv, Ukraine"
  />
  <GlobalWidgetProp id="label" defaultValue="Address" />
  <GlobalWidgetProp id="placeId" value="ChIJQcDQAfnR1EARPErNI_-PXwM" />
  <GlobalWidgetProp id="required" defaultValue="false" />
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
      label=""
      margin="4px 8px"
      placeId="ChIJQcDQAfnR1EARPErNI_-PXwM"
    >
      <Select
        id="AddressSelect"
        data="{{ addresses.value }}"
        emptyMessage="Address not found"
        hiddenByIndex=""
        iconBefore="bold/travel-map-location-pin"
        label="{{ label.value }}"
        labelPosition="top"
        labels="{{ item.description }}"
        margin=""
        overlayMaxHeight={375}
        placeholder="Search address"
        required="{{ required.value }}"
        showClear={true}
        showSelectionIndicator={true}
        value="{{ placeId.value }}"
        values="{{ item.place_id }}"
      >
        <Event
          event="inputValueChange"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  object: {
                    onSuccess: null,
                    onFailure: null,
                    additionalScope: null,
                  },
                },
              },
            ],
          }}
          pluginId="SearchByInputText"
          type="datasource"
          waitMs=""
          waitType="debounce"
        />
      </Select>
    </ModuleContainerWidget>
  </Frame>
</App>
