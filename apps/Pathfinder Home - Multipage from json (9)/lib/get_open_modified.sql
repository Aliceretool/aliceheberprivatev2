select COUNT(issueID) as Open_modified FROM issue Issues
WHERE projectID = {{project_id.value}} and status_value = "Open Modified"



