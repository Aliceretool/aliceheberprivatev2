let connection = createAttachmentVariables.value.connection

let body = {
  "variables":{
    "data":{
      "file": null,
      "type": createAttachmentVariables.value.attachmentType, 
    }
  },
  "query":"mutation ($data: AttachmentCreateInput!) { createAttachment(data: $data) { id }}"
}

if(connection === "installerApplication"){
  body.variables.data.installerApplicationId = urlparams.id;
}
else if (connection === "personalCreditChecks"){
  body.variables.data.personalCreditCheckId = createAttachmentVariables.value.id;
}
else if(connection === "installerApplicationUser"){
  body.variables.data.installerApplicationUserId = createAttachmentVariables.value.id;
}
else if(connection === "stateLicense"){
  body.variables.data.stateLicenseId = createAttachmentVariables.value.licenseId;
}
  // not sure where the below is used?
// else if(connection === "insurance"){
//   body.variables.data.insurance = {"create": {"installerApplication": {"connect": {"id": urlparams.id }}}}
// }
return body;