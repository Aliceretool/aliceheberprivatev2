<Screen
  id="screen1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  events={[
    {
      ordered: [
        { event: "load" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "query8" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
        { id: "36e3d099" },
      ],
    },
  ]}
  title="Screen 1"
  uuid="76f5a88a-7dd5-4f25-bcfc-53928c63c12e"
>
  <CollectionView
    id="listCollection1"
    bodyByIndex=""
    data="{{ query3.data }}"
    hidden="true"
    prefixIconByIndex="bold/interface-user-single"
    prefixIconColorByIndex=""
    prefixImageFitByIndex="cover"
    prefixImageShapeByIndex="square"
    prefixImageSizeByIndex="1 to 1"
    prefixImageSourceByIndex=""
    prefixTypeByIndex="none"
    showSeparator={true}
    subtitleByIndex=""
    subtitleLengthByIndex="2"
    suffixIconByIndex="bold/interface-arrows-button-right"
    suffixTextByIndex="Button"
    suffixTypeByIndex="none"
    suffixValueByIndex="false"
    titleByIndex="{{ item.name }}"
  >
    <Event
      id="6bc0c0e8"
      event="press"
      method="navigateTo"
      params={{ ordered: [{ screenPluginId: "details" }] }}
      pluginId=""
      type="navigator"
      waitMs="0"
      waitType="debounce"
    />
  </CollectionView>
  <Button id="button1" size="large" text="Button">
    <Event
      id="19a904be"
      event="click"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "THIS" },
                { description: "This" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="40aa21ae"
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query6"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Switch id="switch1" caption="Caption" value={true} width="full" />
  <Signature
    id="signature1"
    _forceUseObjectUrl={true}
    _useObjectUrl={true}
    instructions="Sign your name using your finger"
    label="Signature"
    placeholder="Sign your name"
  >
    <Event
      id="587f9f75"
      event="capture"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query8"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="d612664f"
      event="capture"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query8"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Signature>
  <Text
    id="text3"
    markdown={true}
    size="medium"
    value="signature.value = {{query9.data.password}}"
    weight="normal"
  />
  <Button id="button2" size="large" text="new shiny button" />
</Screen>
