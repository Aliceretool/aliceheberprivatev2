select COUNT(issueID) as closed FROM issue Issues
WHERE projectID = {{project_id4.value}} and status_value = "Complete"



