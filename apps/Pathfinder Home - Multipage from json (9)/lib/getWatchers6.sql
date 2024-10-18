SELECT * FROM watchers w
  left join user u on w.userID = u.userID
WHERE issueID = {{url.searchParams.issueID}}