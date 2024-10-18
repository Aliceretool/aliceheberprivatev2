SELECT
  t.userID,
  COUNT(*)
FROM
  pathfinder_retool.time t
WHERE
  t.accountID = {{table38.selectedRow.accountID}}
GROUP BY t.userID;