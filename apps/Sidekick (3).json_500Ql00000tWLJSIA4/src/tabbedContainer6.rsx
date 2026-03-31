<Container
  id="tabbedContainer6"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="cohort_tabs4"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer6"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Tab 1" />
      <Option id="00031" value="Tab 2" />
      <Option id="00032" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="00031"
    icon="bold/programming-module-three-alternate"
    iconPosition="left"
    label="Summary"
    viewKey="View 1"
  >
    <Text
      id="text526"
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="**Performance Metrics** ***(Current Month)***"
      verticalAlign="center"
    />
    <Switch
      id="benchSwitch3"
      label="Show/hide company-wide benchmarks"
      labelCaption="Includes all coaches with 10+ active learners"
      style={{
        sharedLabelFontSize: "12px",
        sharedLabelFontWeight: "400",
        sharedLabelFontFamily: "Saans, Inter, sans-serif",
      }}
      value="{{ localStorage.values.user_toggle_pref ?? true }}"
    >
      <Event
        id="8762a2c9"
        event="change"
        method="run"
        params={{
          map: {
            src: "localStorage.setValue('user_toggle_pref', benchSwitch3.value)",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Include src="./container120.rsx" />
  </View>
  <View
    id="00032"
    icon="bold/money-graph-bar"
    iconPosition="left"
    label="Trends"
    viewKey="View 2"
  >
    <Text
      id="text534"
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="**Trend Charts**"
      verticalAlign="center"
    />
    <Include src="./trendContainer5.rsx" />
  </View>
</Container>
