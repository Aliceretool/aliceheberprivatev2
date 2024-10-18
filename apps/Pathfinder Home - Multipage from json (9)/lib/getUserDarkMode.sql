SELECT userID, darkMode
FROM user
where email = {{ current_user.email }}