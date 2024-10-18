SELECT u.*
FROM user u
WHERE email = {{tableProject.data.assigned_to}}