select COUNT(issueID) as expiringin1m FROM issue Issues
WHERE projectID = {{project_id6.value}} and Issues.due_date <= 
{{moment().add(1,'M')}}


