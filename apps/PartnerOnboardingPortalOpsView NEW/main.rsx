<App>
  <Include src="./functions.rsx" />
  <AppStyles
    id="$appStyles"
    css=":root { --retool-canvas-max-width: 1560px; }"
  />
  <DocumentTitle
    id="$customDocumentTitle"
    value="{{  GetAccountHome.data.account.name}} | POP Ops View"
  />
  <Include src="./header.rsx" />
  <Include src="./src/applicationDecisionSaveModal.rsx" />
  <Include src="./src/companyInfoKickBackModal.rsx" />
  <Include src="./src/companyInfoKickBackModal2.rsx" />
  <Include src="./src/contactCreationModal.rsx" />
  <Include src="./src/financialsKickBackModal.rsx" />
  <Include src="./src/installerAgreementKickBackModal.rsx" />
  <Include src="./src/insuranceVerificationKickBackModal.rsx" />
  <Include src="./src/messagingAppDrawer.rsx" />
  <Include src="./src/principalsKickBackModal.rsx" />
  <Include src="./src/saveReminderModal.rsx" />
  <Include src="./sidebar.rsx" />
  <Include src="./src/statesAndLicensesKickBackModal.rsx" />
  <Frame
    id="$main"
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Container
      id="applicationNotesContainer"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden="{{ GetCurrentUserId }}"
      marginType="normal"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="applicationNotesHeader"
          marginType="normal"
          value="## Application Notes"
          verticalAlign="center"
        />
      </Header>
      <View id="ab010" viewKey="View 1" />
    </Container>
    <Include src="./src/opsViewTabbedContainer.rsx" />
  </Frame>
</App>
