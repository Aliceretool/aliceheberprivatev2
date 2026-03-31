return Object.entries({{ coachPods.value }}).map(([value, label]) => {
  return { value: value, label: label };
});