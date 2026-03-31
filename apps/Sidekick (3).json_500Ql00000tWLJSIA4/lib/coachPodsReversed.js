// Reference external variables with curly brackets or using JS variables
return Object.fromEntries(Object.entries({{ coachPods.value }}).map(([k, v]) => [v, k]))