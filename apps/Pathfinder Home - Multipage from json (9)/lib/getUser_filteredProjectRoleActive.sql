SELECT DISTINCT u.userID, u.email, u.firstName, u.lastName
FROM user u INNER JOIN user_project_role upr ON
u.userID = upr.userID
INNER JOIN project_role pr ON upr.project_roleID = pr.project_roleID
WHERE pr.projectID = {{project_id.value}}
AND upr.isActive = 1