SELECT * FROM record_version
WHERE record_id = {{ urlparams.hash.issueID }} 
ORDER BY record_version.id desc
LIMIT {{ auditsToFetch.value }}
