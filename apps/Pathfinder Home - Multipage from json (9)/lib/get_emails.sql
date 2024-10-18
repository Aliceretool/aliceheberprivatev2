SELECT
  e.sender,
  e.to_address,
  e.userID,
  e.email_subject,
  e.sent_date_time,
  e.itemID,
  e.email_body,
  user.firstName, user.lastName,
  CONCAT (user.firstName,' ',user.lastName) AS "fullName"
FROM
  client_outgoing_emails e
LEFT JOIN user on e.sender = user.email

WHERE
  e.userID = {{table33.selectedRow.userID}} 
order by sent_date_time desc




