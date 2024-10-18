SELECT u.userID, SUM(pr.project_role = 'Deviation – Client') as count_dvr_client
FROM user u INNER JOIN user_project_role upr ON
u.userID = upr.userID
INNER JOIN project_role pr ON upr.project_roleID = pr.project_roleID
WHERE pr.projectID = {{project_id2.value}} AND u.email = {{ current_user.email }}
AND upr.isActive = 1
GROUP BY u.userID