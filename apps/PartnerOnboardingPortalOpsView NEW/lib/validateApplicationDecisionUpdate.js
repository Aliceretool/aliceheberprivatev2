const COMPLETE = "Complete";
const applicationStatutes = GetApplicationSectionStatuses.data?.[0];
const allSectionsCompleted = Object.values(applicationStatutes).every(value => value === COMPLETE);

if (allSectionsCompleted) {
  if (appDecisionSelect.value === 'Pass' && GetInstallerAppScorecard.data.applicationDecision !== 'Pass') {
    newApprovedContactList.trigger();
  }
  UpdateInstallerApplication.trigger();
} else {
  //applicationDecisionSaveModal.open();
  applicationDecisionSaveModal.show();
  const updates = installerApplicationUpdates.value;
  delete updates.applicationDecision;
  installerApplicationUpdates.setValue(updates);
}