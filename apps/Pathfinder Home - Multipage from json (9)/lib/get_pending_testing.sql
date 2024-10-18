select COUNT(issueID) as withdrawal_requested FROM issue Issues
WHERE projectID = {{project_id5.value}} and status_value = "Pending Testing"



