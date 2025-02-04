const currentPriorityId = {{  currentTask.value?.priority_id}};
const priorities = {{  GetTaskPriorities.data || [] }};

const selectedPriority = priorities.find(
  (priority) => priority.id === currentPriorityId
);

return selectedPriority
  ? { label: selectedPriority.name, value: selectedPriority.id }
  : null;
