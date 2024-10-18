select COUNT(issueID) as approved FROM issue Issues
WHERE projectID = {{project_id6.value}} and status_value = "Approved"



