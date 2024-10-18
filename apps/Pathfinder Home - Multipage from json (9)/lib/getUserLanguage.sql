SELECT u.*,
       l.code
FROM user u
  left join language l on u.languageID = l.languageID
WHERE email = {{ current_user.email }}