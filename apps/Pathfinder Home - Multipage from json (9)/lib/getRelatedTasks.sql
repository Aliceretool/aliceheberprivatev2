SELECT t.*, i.issue_index, u.email AS assignedEmail,u.avatarURL AS assignedAvatarURL
FROM task as t
INNER JOIN issue as i ON i.issueID = t.issueID
LEFT JOIN user u on t.assignee = u.userID
WHERE t.issueID = {{url.searchParams.issueID}}
 