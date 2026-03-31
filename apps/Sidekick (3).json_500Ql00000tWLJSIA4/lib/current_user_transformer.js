// 1. Get data from the global variables
const impersonation = {{impersonate_user.value?.coach}};

// 2. Priority: If impersonating, use the first and last name from the global object
if (impersonation.first_name.length > 2 && impersonation.first_name) {
  return `${impersonation.first_name} ${impersonation.last_name}`;
} 

// 3. Fallback: Use the standard API user's first and last name

return {{current_user.fullName}};