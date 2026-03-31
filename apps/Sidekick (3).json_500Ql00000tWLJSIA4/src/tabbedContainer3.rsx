<Container
  id="tabbedContainer3"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="cohort_tabs2"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer3"
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
    <Include src="./container82.rsx" />
    <Text
      id="text404"
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="**Success Metrics**"
      verticalAlign="center"
    />
    <Include src="./container83.rsx" />
  </View>
  <View
    id="00032"
    icon="bold/money-graph-bar"
    iconPosition="left"
    label="Trends"
    viewKey="View 2"
  >
    <Include src="./container90.rsx" />
    <Text
      id="text407"
      style={{ fontSize: "h4Font", fontWeight: "h4Font", fontFamily: "h4Font" }}
      value="**Trend Analysis**"
      verticalAlign="center"
    />
    <Include src="./trendContainer3.rsx" />
  </View>
</Container>
