SELECT COUNT(id) as issueCount FROM record_version
WHERE record_id = {{ urlparams.hash.issueID }}
