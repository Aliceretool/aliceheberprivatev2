select COUNT(issueID) as accepted FROM issue Issues
WHERE projectID = {{project_id7.value}} and status_value = "Accepted"



