select COUNT(issueID) as closed FROM issue Issues
WHERE projectID = {{project_id.value}} and status_value = "Closed"



