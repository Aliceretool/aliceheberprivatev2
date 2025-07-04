<App>
  <GlobalWidgetOutput id="apiToken" description="" />
  <Frame id="$main" padding="8px 12px" sticky={false} type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Text
        id="warning_text"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        hidden="{{ retoolContext.environment != 'production' }}"
        horizontalAlign="center"
        style={{ ordered: [{ color: "" }, { background: "" }] }}
        value="{{ '<b>🛑 Warning!</b> You are in production. 🛑' }}"
        verticalAlign="center"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
