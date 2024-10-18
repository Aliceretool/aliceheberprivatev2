SELECT * FROM record_version
WHERE record_id = {{ issueID.value }}
   AND (op = 'INSERT' OR record != old_record) /*The auditlog contains more data than needed*/
ORDER BY record_version.id desc
/*LIMIT 10
offset { offsetFromPagination.value}*/
