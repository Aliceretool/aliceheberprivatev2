<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="projectVALUE" defaultValue="null" />
  <GlobalWidgetProp id="input2" description="{{ parentQuery.data }}" />
  <Include src="./src/modalFrame1.rsx" />
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
      refresh=""
    >
      <Container
        id="container4"
        _gap={0}
        enableFullBleed={true}
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        heightType="fixed"
        hidden="true"
        overflowType="hidden"
        padding="12px"
        showBody={true}
        showBorder={false}
        showHeader={true}
      >
        <Header>
          <Text
            id="containerTitle9"
            value="### {{tableProject.selectedRow.issue_index }}"
            verticalAlign="center"
          />
          <Button id="button61" text="{{ i18n.t('Edit')}}">
            <Event
              enabled="{{ !tableProject.selectedRow.app_path}}"
              event="click"
              method="openUrl"
              params={{
                ordered: [{ url: "{{ tableProject.selectedRow.app_path}}" }],
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button62"
            iconBefore="line/interface-delete-1"
            style={{ ordered: [{ background: "canvas" }] }}
          >
            <Event
              event="click"
              method="hide"
              params={{ ordered: [] }}
              pluginId="splitPane"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Header>
        <View id="05835" viewKey="View 1">
          <Include src="./src/tabbedContainer4.rsx" />
        </View>
      </Container>
      <Include src="./src/container3.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
