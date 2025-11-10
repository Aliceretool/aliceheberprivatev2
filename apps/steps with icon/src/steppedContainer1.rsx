<Container
  id="steppedContainer1"
  _align="center"
  _gap="0px"
  _type="stack"
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
      targetContainerId="steppedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Step 1" />
      <Option id="00031" value="Step 2" />
      <Option id="00032" value="Step 3" />
    </Steps>
  </Header>
  <View id="00030" viewKey="Step 1">
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
      <View id="00030" viewKey="View 1">
        <Icon
          id="icon2"
          horizontalAlign="center"
          icon="bold/shopping-business-target-check"
        />
      </View>
    </Container>
  </View>
  <View id="00031" viewKey="Step 2">
    <Icon id="icon3" horizontalAlign="center" icon="bold/shopping-gift" />
  </View>
  <View id="00032" viewKey="Step 3" />
  <Footer>
    <Button
      id="prevButton1"
      disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton1"
      disabled="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      text="Next"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
