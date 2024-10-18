SELECT i.issueID,i.statusID,i.projectID,i.project_typeID,i.responsible_departmentID,i.created_at,i.created_by,i.issue,i.issue_index
FROM issue i
WHERE projectID = {{ selectProject.value }}
ORDER BY i.created_at DESC