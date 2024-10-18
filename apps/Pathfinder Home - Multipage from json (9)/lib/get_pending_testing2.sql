select COUNT(issueID) as pending_testing FROM issue Issues
WHERE projectID = {{project_id7.value}} and status_value = "Pending Testing"



