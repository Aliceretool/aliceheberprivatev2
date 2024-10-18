
SELECT SUM(i.status_value = 'Closed') as closed, SUM(i.status_value = 'TO DO') as todo, SUM(i.status_value is not null) as processed, COUNT(*) as all_records 
FROM issue as i
WHERE i.reference_issueID ={{parentIssueID.value}}
 