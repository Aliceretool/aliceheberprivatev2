<Container
  id="tabbedContainer4"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="cohort_tabs3"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer4"
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
      id="text589"
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="**Team Performance Metrics** ***(Current Month)***"
      verticalAlign="center"
    />
    <Switch
      id="benchSwitch2"
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
            src: "localStorage.setValue('user_toggle_pref', benchSwitch2.value)",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Include src="./container132.rsx" />
  </View>
  <View
    id="00032"
    icon="bold/money-graph-bar"
    iconPosition="left"
    label="Trends"
    viewKey="View 2"
  >
    <Include src="./trendContainer4.rsx" />
  </View>
</Container>
