select COUNT(issueID) as invalid FROM issue Issues
WHERE projectID = {{project_id6.value}} and status_value = "Invalid"



