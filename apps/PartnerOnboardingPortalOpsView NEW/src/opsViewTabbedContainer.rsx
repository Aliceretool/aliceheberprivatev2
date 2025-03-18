<Container
  id="opsViewTabbedContainer"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
>
  <Header>
    <Tabs
      id="opsViewTabs"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      targetContainerId="opsViewTabbedContainer"
      value="{{ self.values[0] }}"
    >
      <Option id="b184f" value="Tab 1" />
      <Option id="4f858" value="Tab 2" />
      <Option id="bd7c5" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="2b9ab" label="Home" viewKey="Home">
    <Include src="./accountHeaderContainer.rsx" />
    <Spacer id="homeSpacer1" marginType="normal" />
    <Include src="./reviewDecisionContainer.rsx" />
    <Spacer id="scorecardSpacer5" marginType="normal" />
    <Include src="./wizardAnswersContainer.rsx" />
  </View>
  <View
    id="cefa3"
    label="License, SOS, Fraud Checks"
    viewKey="License, SOS, Fraud Checks"
  >
    <Include src="./stateLicenseContainer.rsx" />
    <Include src="./companyInfoContainer.rsx" />
  </View>
  <View
    id="e1418"
    label="CAF, Background Checks, Sungage Association Search"
    viewKey="CAF, Background Checks, Sungage Association Search"
  >
    <Include src="./ownershipContainer.rsx" />
    <Spacer id="cafSpacer1" marginType="normal" />
    <Include src="./keyPersonnelContainer.rsx" />
    <Spacer id="cafSpacer2" marginType="normal" />
    <Include src="./sungageAssociationContainer.rsx" />
    <Spacer id="cafSpacer3" marginType="normal" />
    <Include src="./recheckContainer.rsx" />
  </View>
  <View
    id="e91af"
    disabled={false}
    hidden="true"
    iconPosition="left"
    viewKey="Financials"
  >
    <Include src="./financialsContainer.rsx" />
  </View>
  <View
    id="e4df1"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Commercial Credit + Online Reviews"
    viewKey="Commercial Credit + Online Reviews"
  >
    <Include src="./commercialCreditContainer.rsx" />
    <Spacer id="commercialCreditSpacer5" marginType="normal" />
    <Include src="./onlineReviewsContainer.rsx" />
  </View>
  <View
    id="8956b"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Insurance, Contract Check + Installer Agreement"
    viewKey="Insurance, Contract Check + Installer Agreement"
  >
    <Include src="./insuranceVerificationContainer.rsx" />
    <Spacer id="insuranceSpacer6" marginType="normal" />
    <Include src="./sampleContractContainer.rsx" />
    <Spacer id="insuranceSpacer7" marginType="normal" />
    <Include src="./installerAgreementContainer.rsx" />
  </View>
  <View
    id="5c2b9"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Provisional Scorecard + High Risk Designation"
    viewKey="Provisional Scorecard + High Risk Designation"
  >
    <Include src="./provisionalScorecardContainer.rsx" />
    <Spacer id="scorecardSpacer4" marginType="normal" />
    <Include src="./highRiskContainer.rsx" />
  </View>
  <View
    id="68113"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Reviewing + Decisioning"
    viewKey="Reviewing + Decisioning"
  />
  <View
    id="a88a7"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Attachments"
    viewKey="Attachments"
  >
    <Include src="./attachmentsContainer.rsx" />
  </View>
</Container>
