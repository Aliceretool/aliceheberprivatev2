SELECT * FROM user_notifications
WHERE "issueID" = {{ urlparams.hash.issueID }} AND "userID" = {{ getUser_ProjectRoles2.data.userID[0] }}
