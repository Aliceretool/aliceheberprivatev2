select COUNT(issueID) as OpenQP FROM issue Issues
WHERE projectID = {{project_id5.value}} and status_value = "Open"



