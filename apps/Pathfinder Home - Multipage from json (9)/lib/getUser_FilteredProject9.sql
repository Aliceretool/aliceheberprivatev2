SELECT DISTINCT u.*
FROM user u INNER JOIN user_project_role up
ON u.userID = up.userID
INNER JOIN project_role pr ON up.project_roleID = pr.project_roleID
  WHERE pr.projectID = {{parent_project_id2.value}}
AND up.isActive = 1