SELECT u.*
FROM user as u
WHERE u.email = {{ current_user.email }}