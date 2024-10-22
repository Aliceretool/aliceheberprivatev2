<App>
  <AppStyles id="$appStyles" css=".H_wX60 {height: auto !importamt;}" />
  <GlobalWidgetProp id="label" value="ラベル" />
  <GlobalWidgetProp id="required" defaultValue="false" value="true" />
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
      label="ラベル"
      margin="0"
      required="true"
    >
      <Container
        id="labelStack"
        _align="center"
        _flexWrap={true}
        _gap="4px"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        overflowType="hidden"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{
          ordered: [
            { background: "rgb(236, 239, 241)" },
            { borderRadius: "0px" },
          ],
        }}
      >
        <View id="02791" viewKey="View 1">
          <TagsWidget2
            id="requiredTag"
            _colorByIndex={["red"]}
            _hiddenByIndex={["{{ !required.value }}"]}
            _iconByIndex={[""]}
            _ids={["02d4d"]}
            _imageByIndex={[""]}
            _labels={[""]}
            _textColorByIndex={["white\n"]}
            _tooltipByIndex={[""]}
            _values={["必須"]}
            allowWrap={true}
            colorByIndex=""
            data=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            itemMode="static"
            labels=""
            margin="5px 0px 5px 0px"
            style={{ ordered: [{ fontSize: "h6Font" }] }}
            textColorByIndex=""
            tooltipByIndex=""
            values=""
          />
          <Text
            id="labelText"
            margin="4px 0px 4px 4px"
            style={{ ordered: [] }}
            value="**{{ label.value }}**"
            verticalAlign="center"
          />
        </View>
        <Event
          event="click"
          method="focus"
          params={{ ordered: [] }}
          pluginId="select"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
