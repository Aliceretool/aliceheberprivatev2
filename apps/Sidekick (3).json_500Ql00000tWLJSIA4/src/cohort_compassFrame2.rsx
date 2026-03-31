<ModalFrame
  id="cohort_compassFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Button
      id="modalCloseButton5"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="4c7b1afd"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="cohort_compassFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <IconText
      id="iconText11"
      icon="bold/travel-map-location-compass-2-alternate"
      style={{ fontSize: "h4Font", fontWeight: "h4Font", fontFamily: "h4Font" }}
      text="Compass Breakdown"
    />
    <Container
      id="container91"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text411"
          style={{
            fontSize: "h5Font",
            fontWeight: "h5Font",
            fontFamily: "h5Font",
          }}
          value="Overall Score"
          verticalAlign="center"
        />
        <Statistic
          id="statistic83"
          currency="USD"
          label=""
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          suffix="/ 10"
          value="5.7"
        />
      </View>
    </Container>
  </Header>
  <Body>
    <ProgressBar
      id="progressBar6"
      label="Core Standards"
      labelPosition="top"
      value="57"
    />
    <ProgressBar
      id="progressBar7"
      label="Group Coaching (The Facilitator)"
      labelPosition="top"
      value="60"
    />
    <ProgressBar
      id="progressBar8"
      label="1-1 Coaching (The Guide)"
      labelPosition="top"
      value="54"
    />
    <ProgressBar
      id="progressBar9"
      label="Progress Review (The Chair)"
      labelPosition="top"
      value="68"
    />
    <ProgressBar
      id="progressBar10"
      label="The Workshop (The Instructor)"
      labelPosition="top"
      value="47"
    />
  </Body>
</ModalFrame>
