SELECT pr.*, p.projectID
FROM user_project_role pr join project_role p ON pr.project_roleID = p.project_roleID