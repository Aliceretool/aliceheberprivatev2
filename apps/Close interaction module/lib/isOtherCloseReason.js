const selectValue = {{ CloseInteractionReason_Select.value }};
const closeReasons = {{ GetInteractionCloseReasons.data }};

const selected = closeReasons.find((reason) => reason.id === selectValue);

return selected?.name === "Other";
