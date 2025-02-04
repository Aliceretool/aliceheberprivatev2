await Contact_Form.reset();
const res = await GetContacts.trigger();

const payload = {
  address: "",
  case_id: url.searchParams.id,
  contactRole_id: ContentRole_Select.selectedItem.id,
  contactRole: {
    id: ContentRole_Select.selectedItem.id,
    name: ContentRole_Select.selectedItem.name,
  },
  email: "",
  firstName: "",
  isRequester: ContentRole_Select.selectedItem.name === "Requester",
  lastName: "",
  note: "",
  phoneNumber: "",
};

contactList.setValue([payload, ...res]);
currentContactIndex.setValue(0);
isCreating.setValue(true);