select COUNT(issueID) as closed FROM issue Issues
WHERE projectID = {{project_id5.value}} and status_value = "Approved"



