SELECT ia.*, u.avatarURL, u.email, u.firstName, u.lastName , e.firstName as ex_firstname, e.lastName as ex_lastname, e.email as ex_email, e.avatarURL as ex_avatarURL
FROM issue_approval as ia
LEFT JOIN user as u on ia.approver = u.userID
LEFT JOIN user as e on ia.executed_by = e.email
WHERE ia.issueID =  {{url.searchParams.issueID}}
 