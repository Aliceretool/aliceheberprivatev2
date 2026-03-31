<ModalFrame
  id="cohort_compassFrame3"
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
    <Container
      id="container117"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic96"
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
      id="progressBar11"
      label="Core Standards"
      labelPosition="top"
      value="57"
    />
    <ProgressBar
      id="progressBar12"
      label="Group Coaching (The Facilitator)"
      labelPosition="top"
      value="60"
    />
    <ProgressBar
      id="progressBar13"
      label="1-1 Coaching (The Guide)"
      labelPosition="top"
      value="54"
    />
    <ProgressBar
      id="progressBar14"
      label="Progress Review (The Chair)"
      labelPosition="top"
      value="68"
    />
    <ProgressBar
      id="progressBar15"
      label="The Workshop (The Instructor)"
      labelPosition="top"
      value="47"
    />
  </Body>
</ModalFrame>
