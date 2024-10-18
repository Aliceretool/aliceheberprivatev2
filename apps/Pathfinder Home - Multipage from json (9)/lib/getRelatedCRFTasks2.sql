SELECT i.issueID,i.status_value,i.projectID,i.project_typeID,i.created_at,i.created_by,i.issue,i.issue_index,i.due_date, i.reference_issueID, i.description, i.assigned_to
FROM issue i
WHERE i.reference_issueID = {{url.searchParams.issueID}}
ORDER BY i.created_at DESC