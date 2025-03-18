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
  />
</App>
