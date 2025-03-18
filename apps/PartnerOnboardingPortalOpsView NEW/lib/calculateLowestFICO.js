const principalFicoScores = GetInstallerAppUsers.data.principalList
  .map((principal) => principal.personalCreditChecks[0]?.ficoScore)
  .filter((ficoScore) => ficoScore !== undefined);

principalFicoScores.sort((a, b) => a - b);
return principalFicoScores[0];