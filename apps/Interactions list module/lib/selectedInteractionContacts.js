const selectedInteraction = {{ selectedInteraction.value }};
const contacts = selectedInteraction.case.contacts.length
  ? selectedInteraction.case.contacts
  : selectedInteraction.contact
    ? [selectedInteraction.contact]
    : [];
return contacts;
