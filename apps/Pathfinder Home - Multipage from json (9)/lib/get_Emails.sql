SELECT
  userID,
  email_subject,
  sent_date_time,
  itemID
FROM
  client_outgoing_emails
WHERE
  userID = {{table36.selectedRow.userID}} AND
  itemID = {{table36.selectedRow.enquiry_id}}