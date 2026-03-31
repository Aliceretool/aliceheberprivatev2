return Object.entries({{ coachStatusTypes.value }}).map(([value, label]) => {
  return { value: value, label: label };
});