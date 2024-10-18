SELECT * 
FROM record_version
WHERE record_id = {{ issueID.value }}
  AND (op = 'INSERT' OR record != old_record)
ORDER BY record_version.id DESC;