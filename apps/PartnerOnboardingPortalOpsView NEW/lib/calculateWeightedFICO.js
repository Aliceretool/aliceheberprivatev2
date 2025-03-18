const getTotalWeightedFicoScore = (principalList) => {
  let totalWeightedFicoScore = 0;
  let totalOwnershipPercentage = 0;

  principalList.forEach((principal) => {
    const ficoScore = Number(principal.personalCreditChecks[0]?.ficoScore);
    const ownershipPercentage = Number(principal.percentageOwned);

    totalWeightedFicoScore += (ownershipPercentage * ficoScore);
    totalOwnershipPercentage += ownershipPercentage;
  });
  
  if (totalOwnershipPercentage === 0) return null;
  
  return Math.round(totalWeightedFicoScore / totalOwnershipPercentage); 
}

const isFicoPresentForAllUsers = (principalList) => {
  return principalList.every(principal => {
    const ficoScore = principal.personalCreditChecks?.[0]?.ficoScore;
    return ficoScore !== '' && ficoScore !== null && principal.percentageOwned !== null;
  });
};

const principalList = GetInstallerAppUsers.data?.principalList || [];

if(isFicoPresentForAllUsers(principalList)) {
  console.log("All users have FICO scores and ownership percentages.");
  return getTotalWeightedFicoScore(principalList);
} else {
  console.log("Not all users have FICO scores and ownership percentages.");
  return null;
}