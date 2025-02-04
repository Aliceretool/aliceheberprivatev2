const selectedContactId = IdentifyContact_Select.value;
await LinkContactToInteraction.trigger({
  additionalScope: {
    contactId: selectedContactId,
  }
});
await refetchInteractions.trigger();