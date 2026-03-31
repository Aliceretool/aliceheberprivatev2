// Reference external variables with curly brackets or using JS variables
return Object.fromEntries(Object.entries({{ coachRoleTypes.value }}).map(([k, v]) => [v, k]))