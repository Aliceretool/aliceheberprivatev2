SELECT ia.*, u.avatarURL, u.email, u.firstName, u.lastName
FROM issue_approval as ia
INNER JOIN user as u on ia.approver = u.userID
WHERE ia.issueID =  {{urlparams.hash.issueID}}
 