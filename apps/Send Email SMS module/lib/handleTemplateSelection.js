function removeHTMLTags(str) {
  return str.replace(/<[^>]*>/g, "");
}

if (!selectedTemplate.value) return;

const cleanSubject = type.value === "email"
  ? removeHTMLTags(EmailSubject_Input.value)
  : "";
const cleanBody =
  type.value === "email"
    ? removeHTMLTags(EmailBody_Input.value)
    : removeHTMLTags(SMSBody_Input.value);

if (cleanSubject.length || cleanBody.length) {
  ConfirmTemplatePlacement_Modal.show();
} else {
  await replaceBodyWithTemplate.trigger();
}
