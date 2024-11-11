<App>
  <Include src="./functions.rsx" />
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
      <Text
        id="text1"
        value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
        verticalAlign="center"
      />
      <Container
        id="container1"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="containerTitle1"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="78a00" viewKey="View 1">
          <Select
            id="select1"
            emptyMessage="No options"
            itemMode="static"
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
          >
            <Option id="00cf4" value="Option 1" />
            <Option id="e0249" value="Option 2" />
            <Option id="17908" value="Option 3" />
          </Select>
        </View>
      </Container>
      <Switch id="switch1">
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="query3"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Switch>
    </ModuleContainerWidget>
  </Frame>
</App>
