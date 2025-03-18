let authList = [];

GetInstallerAppUsers.data?.principalList?.map((principal) => {
  if(!principal.personalCreditChecks[0]?.creditResponseId){
    authList.push({
      "firstName": principal.firstName,
      "lastName": principal.lastName,
      "street": principal.creditAuthorizationForms[0]?.homeAddress?.street1 + ' ' + principal.creditAuthorizationForms[0]?.homeAddress?.street2,
      "city": principal.creditAuthorizationForms[0]?.homeAddress?.city,
      "state": principal.creditAuthorizationForms[0]?.homeAddress?.state,
      "postalCode": principal.creditAuthorizationForms[0]?.homeAddress?.zipCode,
      "dob": principal.creditAuthorizationForms[0]?.dob
    })
  }
})

return authList;