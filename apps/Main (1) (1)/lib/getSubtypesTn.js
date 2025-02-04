const typeId = {{ DocumentType_Select.value }};
const allTypes = {{ GetDocumentTypes.data }};

if (typeId) {
  return allTypes.find(({ id }) => id === typeId).subtypes
}

return null;