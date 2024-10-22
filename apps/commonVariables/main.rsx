<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetOutput id="accentColor" description="" value="#11323b" />
  <GlobalWidgetOutput id="borderColor" value="#cfd8dc" />
  <GlobalWidgetOutput id="currentUser" value="{{ _currentUser.data }}" />
  <GlobalWidgetOutput id="darkText" value="#11323B" />
  <GlobalWidgetOutput id="dateformat" value="yyyyMMdd" />
  <GlobalWidgetOutput id="gap" value="2px" />
  <GlobalWidgetOutput
    id="hasRequiredRoles"
    value="{{ _hasRequiredRoles.data }}"
  />
  <GlobalWidgetOutput id="pagePadding" value="24px 16px" />
  <GlobalWidgetOutput id="space" value="16px" />
  <GlobalWidgetOutput id="tailorEndpoint" value="{{ _tailorEndpoint.data }}" />
  <GlobalWidgetOutput id="tailorToken" value="{{ _tailorToken.data }}" />
  <GlobalWidgetOutput id="timeformat" value="HH:mm" />
  <GlobalWidgetOutput
    id="unitOptions"
    value={
      '[\n\t{value: "CS", label: "CS"},\n\t{value: "DZ", label: "DZ"},\n\t{value: "HN", label: "本"},\n\t{value: "KG", label: "KG"},\n\t{value: "KL", label: "箱(大)"},\n\t{value: "KS", label: "箱(小)"},\n\t{value: "LB", label: "LB"},\n\t{value: "M2", label: "M2"},\n\t{value: "MT", label: "MT"},\n\t{value: "MY", label: "枚"},\n\t{value: "PC", label: "個"},\n\t{value: "PS", label: "PS"},\n\t{value: "RL", label: "巻"},\n\t{value: "RN", label: "連"},\n\t{value: "SK", label: "式"},\n\t{value: "ST", label: "セット"},\n\t{value: "SU", label: "双"},\n\t{value: "TA", label: "玉"},\n\t{value: "TB", label: "坪"},\n\t{value: "TN", label: "TN"},\n\t{value: "YD", label: "YD"},\n]'
    }
  />
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
      hidden="true"
      isGlobalWidgetContainer={true}
      margin="0"
    />
  </Frame>
</App>
