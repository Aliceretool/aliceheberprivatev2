SELECT *
FROM project_type
WHERE projectID = {{ selectProject.value }} AND isActive = 1