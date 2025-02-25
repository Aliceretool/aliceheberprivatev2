const currentStatusId = {{  currentTask.value?.status_id}};
const statuses = {{  GetTaskStatuses.data || [] }};

const selectedStatus = statuses.find((status) => status.id === currentStatusId);

return selectedStatus
  ? { label: selectedStatus.name, value: selectedStatus.id }
  : { label: selectedStatus.name, value: selectedStatus.id };
