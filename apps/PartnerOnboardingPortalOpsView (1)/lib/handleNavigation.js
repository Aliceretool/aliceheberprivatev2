const SELECTED_NAVIGATION_ITEM = nextTabSelection.value ?? "Home";
const NAVIGATION_TO_QUERY = {
  'License, SOS, Fraud Checks': [GetLicenseSosFraud, GetStateLicenses],
  'Provisional Scorecard + High Risk Designation': [GetLicenseSosFraud, GetInstallerAppUsers, GetInstallerAppCaf, GetInstallerAppScorecard, GetInstallerAppCommCredit, GetCurrentUserId],
  'CAF, Background Checks, Sungage Association Search': [GetLicenseSosFraud, GetInstallerAppUsers, GetInstallerAppCaf, GetRecheckReviews],
  'Financials': [GetFinancialStatements],
  'Home': [GetAccountHome, GetApplicationSectionStatuses, GetCurrentUserId],
  'Insurance, Contract Check + Installer Agreement': [GetInsurances],
  'Attachments': [GetInsurances],
  'Commercial Credit + Online Reviews': [GetInstallerAppCommCredit],
};

if (saveButton.disabled) {
  if (SELECTED_NAVIGATION_ITEM in NAVIGATION_TO_QUERY) {
    for (const query of NAVIGATION_TO_QUERY[SELECTED_NAVIGATION_ITEM]) {
      query.trigger();
    }
  }
  
  resetStates.trigger();
  closeKickBackModals.trigger();
  opsViewTabbedContainer.setCurrentView(SELECTED_NAVIGATION_ITEM);
} else {
  saveReminderModal.show();
} 