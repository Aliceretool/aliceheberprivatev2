select COUNT(issueID) as pending_review FROM issue Issues
WHERE projectID = {{project_id7.value}} and status_value = "Pending Review"



