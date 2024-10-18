SELECT COUNT(id) as issueCount FROM record_version
WHERE record_id = {{ issueID.value }} 
  AND record != old_record