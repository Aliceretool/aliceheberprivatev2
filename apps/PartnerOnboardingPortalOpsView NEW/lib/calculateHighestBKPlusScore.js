const principalBKPlusScores = GetInstallerAppUsers.data.principalList
  .map((principal) => principal.personalCreditChecks[0]?.bankruptcyPlusScore)
  .filter((bankruptcyPlusScore) => bankruptcyPlusScore !== undefined);

principalBKPlusScores.sort((a, b) => b - a);
return principalBKPlusScores[0];