const data = getAvatarUrl.data
// The email to search for
const userEmail = "mathias.kusk@nymbl.app";

// Find the index of the email
const emailIndex = data.email.indexOf(userEmail);

// Get the corresponding avatarURL
const avatarURL = data.avatarURL[emailIndex];

return avatarURL// Output: null (or the corresponding URL if it exists)