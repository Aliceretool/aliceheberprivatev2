SELECT * FROM watchers w
  left join user u on w.userID = u.UserID
WHERE issueID = {{url.searchParams.issueID}}