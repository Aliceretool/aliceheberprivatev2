SELECT i.*, p.project, pt.project_type,u.firstName AS assignedfirstName,u.avatarURL AS assignedAvatarURL,
u2.avatarURL AS reporterAvatarURL, ts.*
FROM issue as i
INNER JOIN project as p ON p.projectID = i.projectID
INNER JOIN project_type as pt ON pt.project_typeID = i.project_typeID
LEFT JOIN user u on i.assigned_to = u.email
LEFT JOIN user u2 on i.created_by = u2.email
LEFT JOIN tests ts on ts.idtests = i.test
WHERE i.issueID =  {{ url.searchParams.issueID }}
 