select COUNT(issueID) as pending_review FROM issue Issues
WHERE projectID = {{project_id6.value}} and status_value = "Under Review"



