sendInteractionState.setValue({
  type,
  open: true,
  case: {
    ...GetCase.data,
    contacts: GetContacts.data,
  }
});