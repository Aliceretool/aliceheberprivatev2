contactCreationModal.show();
let contactList = []
GetInstallerAppUsers.data.installerApplicationUsers.map((contact, index) => {
  contactList[index] = {
    "firstName": contact.firstName,
    "lastName": contact.lastName,
    "email": contact.authUser.email,
    "phone": contact.phone,
    "title": contact.title,
    "isLegalSigner": contact.isLegalSigner,
    "isOwner": contact.isPrincipal
  }
})
return contactList