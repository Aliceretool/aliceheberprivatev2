SELECT SUM(ia.approval_status = 'Approved') as approved, SUM(ia.approval_status = 'Rejected') as rejected, SUM(ia.approval_status is not null) as processed, COUNT(*) as all_records 
FROM issue_approval as ia
WHERE ia.issueID = {{url.searchParams.issueID}}
 