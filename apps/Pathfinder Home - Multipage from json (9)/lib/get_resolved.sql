select COUNT(issueID) as resolved FROM issue Issues
WHERE projectID = {{project_id.value}} and status_value = "Resolved"



