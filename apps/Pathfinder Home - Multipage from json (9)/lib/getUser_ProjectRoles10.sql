SELECT pr.*, p.projectID, p.project_role, u.email
FROM user_project_role pr 
  join project_role p ON pr.project_roleID = p.project_roleID
  join user u ON pr.userID = u.userID
WHERE u.email = {{ current_user.email }} and p.projectID = {{parent_project_id2.value}} and pr.isActive =  1