const statuses = {{ FetchInteractionStatuses.data }};
const isCaseNumberHidden = {{ isCaseNumberHidden.value }};

return isCaseNumberHidden
  ? statuses.filter((status) => status.name !== "non-attached")
  : statuses;