SELECT i.assigned_to, i.created_by, i.issueID, i.issue_index, i.issue, u.firstName AS assignedfirstName,u.avatarURL AS assignedAvatarURL
-- u2.avatarURL AS reporterAvatarURL
FROM issue as i
LEFT JOIN user u on i.assigned_to = u.email
-- LEFT JOIN user u2 on i.created_by = u2.email

order by i.updated_at desc

