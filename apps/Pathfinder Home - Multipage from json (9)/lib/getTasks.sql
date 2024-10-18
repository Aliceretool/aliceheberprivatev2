SELECT 
  t.*,
  CONCAT(u.firstName,' ',u.lastName) as assignee_name
FROM task as t
LEFT JOIN user as u ON t.assignee = u.userID
WHERE t.issueID = {{url.searchParams.issueID}}
 