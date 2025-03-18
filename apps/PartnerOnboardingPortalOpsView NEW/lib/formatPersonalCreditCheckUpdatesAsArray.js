let creditCheckUpdatesArr = [];

// Check if personalCreditCheckUpdates.value has keys
 if (Object.keys(personalCreditCheckUpdates.value).length > 0) {
   creditCheckUpdatesArr = Object.values(personalCreditCheckUpdates.value).map(update => ({
    where: { id: update.where.id },
    data: update.data
  }));
 } else {
   // Fallback to using GetInstallerAppUsers.data?.principalList
   GetInstallerAppUsers.data?.principalList.forEach(principal => {
     creditCheckUpdatesArr.push({
       where: { id: principal?.personalCreditChecks?.[0]?.id },
       data: { creditResponseId: GetAuthorizedCreditReports?.data?.msg?.slice(-19, -1) }
     });
   });
}

return creditCheckUpdatesArr;