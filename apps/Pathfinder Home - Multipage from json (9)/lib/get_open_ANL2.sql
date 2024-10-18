select COUNT(issueID) as Open FROM issue Issues
WHERE projectID = {{project_id6.value}} and status_value = "Open"



