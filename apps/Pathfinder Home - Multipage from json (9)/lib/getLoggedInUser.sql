SELECT *
FROM user u
LEFT JOIN language l on  u.languageid = l.languageid
WHERE email = {{current_user.email}}


