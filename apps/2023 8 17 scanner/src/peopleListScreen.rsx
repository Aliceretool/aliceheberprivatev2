<Screen id="peopleListScreen" title="People List">
  <Scanner
    id="scanner1"
    _scannerMode="embedded"
    buttonSize="large"
    buttonText="Scanner"
    data="[]"
    disabled=""
    ratio={1}
  >
    <Event
      event="capture"
      method="navigateTo"
      params={{ ordered: [{ screenPluginId: "peopleDetailsScreen" }] }}
      pluginId=""
      type="navigator"
      waitMs="0"
      waitType="debounce"
    />
  </Scanner>
  <Button id="button1" size="large" text="Button" />
  <Button id="button2" size="large" text="Button" />
  <Button id="button3" size="large" text="Button" />
  <Button id="button4" size="large" text="Button" />
  <Button id="button5" size="large" text="Button" />
</Screen>
