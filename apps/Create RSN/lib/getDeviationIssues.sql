SELECT i.issueID,i.status_value,i.projectID,i.project_typeID,i.responsible_departmentID,i.created_at,i.created_by,i.issue,i.issue_index
FROM issue i
WHERE projectID = 'cb96a209-1aa7-49' AND (i.status_value = 'CAPA Created' OR i.status_value = 'QP Approved')
ORDER BY i.created_at DESC