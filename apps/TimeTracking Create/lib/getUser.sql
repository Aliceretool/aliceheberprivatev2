SELECT u.*
FROM user u
WHERE email = {{current_user.email}}