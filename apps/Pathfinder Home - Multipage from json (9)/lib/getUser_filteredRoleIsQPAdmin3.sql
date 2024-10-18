SELECT u.userID, SUM(pr.project_role = 'Qualified Person') as count_qp_admin
FROM user u INNER JOIN user_project_role upr ON
u.userID = upr.userID
INNER JOIN project_role pr ON upr.project_roleID = pr.project_roleID
WHERE pr.projectID = {{project_id6.value}} AND u.email = {{ current_user.email }}
AND upr.isActive = 1
GROUP BY u.userID