await DeleteContact.trigger({
  additionalScope: {
    contactId,
  },
});
await GetContacts.trigger();
