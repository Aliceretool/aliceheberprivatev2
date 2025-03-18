// add principals without personal credit checks for "createPersonalCreditChecks" mutation
let newCreditCheckModelArr = [];

GetInstallerAppUsers.data?.principalList?.forEach(principal => {
  if (principal?.personalCreditChecks?.length === 0) {
    newCreditCheckModelArr.push({ installerApplicationUserId: principal.id });
  }
});

return newCreditCheckModelArr;