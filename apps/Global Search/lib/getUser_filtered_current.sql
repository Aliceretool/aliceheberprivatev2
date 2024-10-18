SELECT u.userID, concat(u.firstName,' ',u.lastName, ' (', u.email,')') as assigned_to_first_last_email
from user u
where u.email = {{ current_user.email }}