SELECT code
FROM language 
WHERE languageID = (SELECT u.languageID FROM user u where email = {{ current_user.email }})