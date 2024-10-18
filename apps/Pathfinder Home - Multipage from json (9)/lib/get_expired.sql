select COUNT(issueID) as expired FROM issue Issues
WHERE projectID = {{project_id4.value}} and Issues.due_date <= 
{{moment()}}


