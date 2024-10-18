SELECT up.*, u.*
FROM user u
INNER JOIN user_project_role up on u.userID = up.userID
INNER JOIN project_role pr on up.project_roleID = pr.project_roleID
INNER JOIN project p on pr.projectID = p.projectID

WHERE email = {{current_user.email}} AND up.isActive = 1
LIMIT 1