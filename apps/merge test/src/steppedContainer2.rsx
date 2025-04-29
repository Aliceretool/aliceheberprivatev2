<Container
  id="steppedContainer2"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Steps
      id="steps2"
      horizontalAlign="center"
      itemMode="static"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="66db3" value="Step 1" />
      <Option id="6e233" value="Step 2" />
      <Option id="d26d4" value="Step 3" />
    </Steps>
  </Header>
  <View id="e4c37" viewKey="Step 1">
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Button id="button1" text="Button" />
  </View>
  <View id="b4037" viewKey="Step 2">
    <Button id="button3" text="Button" />
  </View>
  <View id="d0413" viewKey="Step 3">
    <Button id="button2" text="Button" />
  </View>
  <Footer>
    <Button
      id="prevButton2"
      disabled="{{ steppedContainer2.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton2"
      disabled="{{ steppedContainer2.currentViewIndex + 1 === steppedContainer2.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      text="Next"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
