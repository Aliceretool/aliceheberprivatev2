const onSaveProgress = async () => {
  const triggerPromise = (updateFunction) => {
    return new Promise((resolve, reject) => {
      updateFunction.trigger({
        onSuccess: resolve,
        onFailure: reject
      });
    });
  }

  const updates = [];
  
  // Helper function to check if object has keys
  const hasUpdates = (obj) => {
    return obj !== null && Object.keys(obj).length > 0;
  }

  // Trigger queries/mutations based on conditions
  if (hasUpdates(stateLicensesUpdates.value)) {
    updates.push(triggerPromise(formatStateLicenseUpdatesAsArray));
  }
  
  if (hasUpdates(installerApplicationUpdates.value) &&
      (!installerApplicationUpdates.value.hasOwnProperty("applicationDecision") ||
       !["Pending_Pass", "Pass"].includes(installerApplicationUpdates.value?.applicationDecision))) {
    updates.push(triggerPromise(UpdateInstallerApplication));
  }

  if (hasUpdates(applicationCompanyUpdates.value)) {
    updates.push(triggerPromise(UpdateApplicationCompany));
  }

  if (hasUpdates(cafBackgroundUpdates.value)) {
    updates.push(triggerPromise(formatCafBackgroundUpdatesAsArray));
  }
  
  if (hasUpdates(insuranceUpdates.value)) {
    updates.push(triggerPromise(formatInsuranceUpdatesAsArray));
  }
  
  if (hasUpdates(personalCreditCheckUpdates.value)) {
    updates.push(triggerPromise(formatPersonalCreditCheckUpdatesAsArray));
  }
  
  if (GetAccountHome.data?.account?.accountManagerEmail !== (GetChannelManager.data?.[0]?.Sungage_Channel_Manager__r?.Email ?? GetAccountHome.data?.account?.accountManagerEmail)) {
    updates.push(triggerPromise(UpdateAccount));
  }

  if (hasUpdates(installerApplicationUpdates.value) &&
      Object.keys(installerApplicationUpdates.value).includes("applicationDecision") &&
      ["Pending_Pass", "Pass"].includes(installerApplicationUpdates.value["applicationDecision"])) {
        updates.push(triggerPromise(validateApplicationDecisionUpdate));
  }

  if (hasUpdates(financialsUpdates.value)) {
    updates.push(triggerPromise(UpdateFinancialStatement));
  }

  if (hasUpdates(recheckReviewUpdates.value) && GetRecheckReviews.data.length !== 0) {
    updates.push(triggerPromise(UpdateRecheckReview));
  }

  if (hasUpdates(recheckReviewUpdates.value) && GetRecheckReviews.data.length === 0) {
    updates.push(triggerPromise(CreateRecheckReview));
  }

  try {
    await Promise.all(updates);
    await triggerPromise(resetStates);
  } catch (error) {
    console.log("Error during onSave: ", error);
    utils.showNotification({title: "ERROR!", description: "An error occurred while saving your changes." ,notificationType: "error"});
  }
}

onSaveProgress();