const contact = {
  ...instanceValues.value[index],
  case_id: url.searchParams.id
};

if (isCreating.value) {
  await CreateContact.trigger({
    additionalScope: {
      contact: {
        ...contact,
        contactRole_id: ContentRole_Select.selectedItem.id,
        contactRole: {
          id: ContentRole_Select.selectedItem.id,
          name: ContentRole_Select.selectedItem.name,
        },
        isRequester: ContentRole_Select.selectedItem.name === "Requester",
      },
    },
  });
} else {
  await EditContact.trigger({
    additionalScope: {
      contact,
      id: contactList.value[index].id
    },
  });
}

GetCase.trigger();
currentContactIndex.setValue(null);
await GetContacts.trigger();
