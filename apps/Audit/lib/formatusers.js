// Reference external variables with curly brackets or using JS variables
const originalDict = {{ getPathfinderUsers.data }};

function transformUserDict(originalDict) {
  const transformedDict = {};

  // Iterate through the arrays and create the new object
  for (let i = 0; i < originalDict.userID.length; i++) {
    transformedDict[originalDict.userID[i]] = `${originalDict.Firstname[i]} ${originalDict.lastname[i]}`.trim();
  }

  return transformedDict;
}

// Usage
const newUserDict = transformUserDict(originalDict);
return newUserDict;