-- SELECT COUNT(*) FROM issue where projectID ="cb96a209-1aa7-49" AND status_value in ("Open") -- GROUP BY status_value;

select COUNT(issueID) as Await_QA FROM issue Issues
WHERE projectID = {{project_id3.value }} and status_value = "Awaiting QA Review"



