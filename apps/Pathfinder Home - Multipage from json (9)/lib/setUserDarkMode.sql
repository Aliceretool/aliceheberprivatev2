UPDATE user
Set darkmode = {{ darkMode.value }}
WHERE email = {{ current_user.email }}