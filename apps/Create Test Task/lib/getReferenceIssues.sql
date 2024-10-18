SELECT i.issueID,i.status_value,i.projectID,i.project_typeID,i.responsible_departmentID,i.created_at,i.created_by,i.issue,i.issue_index,i.due_date
FROM issue i
WHERE i.reference_issueID = {{ referenceIssueID.value }}
ORDER BY i.created_at DESC