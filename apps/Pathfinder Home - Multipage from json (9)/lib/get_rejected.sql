select COUNT(issueID) as rejected FROM issue Issues
WHERE projectID = {{project_id7.value}} and status_value = "Rejected"



