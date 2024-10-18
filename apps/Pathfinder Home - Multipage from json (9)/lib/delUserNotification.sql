SELECT * FROM user_notifications
WHERE "issueID" = {{ urlparams.hash.issueID }} AND "notification_sent" IS NOT TRUE AND "userID" = {{ getUser_ProjectRoles2.data.userID[0] }}
