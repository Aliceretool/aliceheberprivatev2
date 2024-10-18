select COUNT(issueID) as closed FROM issue Issues
WHERE projectID = {{project_id6.value}} and status_value = "Rejected"



