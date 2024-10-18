select COUNT(issueID) as withdrawn FROM issue Issues
WHERE projectID = {{project_id.value}} and status_value = "Withdrawn"



