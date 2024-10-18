SELECT DISTINCT u.userID, u.firstName, u.lastName, u.email, pr.project_role
FROM user u INNER JOIN user_project_role upr ON
u.userID = upr.userID
INNER JOIN project_role pr ON upr.project_roleID = pr.project_roleID
WHERE pr.projectID = {{current_project_id7.value}}
AND upr.isActive = 1 AND pr.project_role = 'SPL Supervisors'