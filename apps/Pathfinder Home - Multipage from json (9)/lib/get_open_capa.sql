select COUNT(issueID) as OpenCAPA FROM issue Issues
WHERE projectID = {{project_id.value}} and status_value = "Open"



