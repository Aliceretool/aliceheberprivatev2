<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="blank" defaultValue="false" />
  <GlobalWidgetProp id="fieldData" />
  <GlobalWidgetProp id="fieldSubData" />
  <GlobalWidgetProp id="label" value="ラベル" />
  <GlobalWidgetProp id="linkPath" />
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
      disable=""
      fieldData=""
      fieldSubData=""
      formKey="formKey"
      isGlobalWidgetContainer={true}
      label="ラベル"
      labelWidth="200"
      margin="0"
      options={
        '[{\n  id: "idis-0001-uuid",\n  name: "name01",\n  code: "CODE01"\n}, {\n  id: "idis-0002-uuid",\n  name: "name02",\n  code: "CODE02"\n}]'
      }
      required="true"
    >
      <Container
        id="fieldStack"
        _direction="vertical"
        _gap="4px"
        _justify="space-between"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        showBorder={false}
        style={{
          ordered: [
            { background: "rgba(255, 255, 255, 0)" },
            { borderRadius: "0px" },
          ],
        }}
      >
        <View id="02791" viewKey="View 1">
          <Module
            id="fieldLabel"
            label="{{ label.value }}"
            margin="0"
            name="formLabel"
            pageUuid="44bc2ff6-8550-44d1-ac80-d7d9f10d88f3"
            required="false"
          />
          <Link
            id="fieldText"
            disabled="{{ disabled.value }}"
            text="{{ displayData.value }}"
          >
            <Event
              event="click"
              method="run"
              params={{
                ordered: [
                  {
                    src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: linkPath.value, blank: blank.value }\n  }, \n  urlparams.href\n);',
                  },
                ],
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
