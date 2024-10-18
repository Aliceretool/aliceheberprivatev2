SELECT * FROM watchers w
left JOIN user U ON w.userID = u.userID
WHERE issueID = {{url.searchParams.issueID}}
