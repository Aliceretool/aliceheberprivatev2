select COUNT(issueID) as withdrawal_requested FROM issue Issues
WHERE projectID = {{project_id.value}} and status_value = "Withdrawl Requested"



