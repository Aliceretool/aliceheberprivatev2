await GetContacts.trigger();
currentContactIndex.setValue(isCreating.value ? index-1 : index)
isCreating.setValue(false);
