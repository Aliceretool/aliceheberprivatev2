SELECT
  i.issueID,
  i.issue_index,
  i.issue,
  t.issueID,
  t.description,
  t.time,
  t.userID,
  t.date_start,
  u.firstName,
  u.lastName,
  u.avatarURL
FROM
  time t
  LEFT JOIN user u ON t.userID = u.userID
  LEFT JOIN issue i ON i.issueID = t.issueID
  -- WHERE
  --  t.accountID = {{table40.selectedRow.accountID}}