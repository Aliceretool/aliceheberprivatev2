return Object.entries({{ coachRoleTypes.value }}).map(([value, label]) => {
  return { value: value, label: label };
});