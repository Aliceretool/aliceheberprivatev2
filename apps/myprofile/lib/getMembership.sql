SELECT pr.*, p.*, user.*, project.*
FROM user_project_role pr join project_role p ON pr.project_roleID = p.project_roleID
left join project on project.projectID = p.projectID
left join user on user.userID = pr.userID where user.email = {{current_user.email}} and pr.isActive = 1
