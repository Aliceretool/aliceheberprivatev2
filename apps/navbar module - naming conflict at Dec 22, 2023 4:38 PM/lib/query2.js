function reorderEmails(data) {
  const emails = data.email;
  if (emails.length < 2) return data; // Nothing to change

  const lastEmail = emails.pop();              // Remove last email
  emails.splice(1, 0, lastEmail);              // Insert it at index 1

  return { email: emails };
}

// Example usage
const input = query1.data;

const result = reorderEmails(input);
return result