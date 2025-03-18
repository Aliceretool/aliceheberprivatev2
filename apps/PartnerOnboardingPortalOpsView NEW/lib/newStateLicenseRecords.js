return formatStateLicenses.data.filter(item => !item.isNonSungageState).map((state) => {
  if(state.stateLicenses === undefined || state.stateLicenses.length === 0){
    newStateLicenseList.setIn([state.id, "accountId"], GetAccountHome.data.account.id)
    newStateLicenseList.setIn([state.id, "installerApplicationId"], urlparams.id)
    newStateLicenseList.setIn([state.id, "state"], state.state)
    newStateLicenseList.setIn([state.id, "licenseType"],"No_License_Required")
  }
})
