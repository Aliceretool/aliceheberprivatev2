SELECT i.issue, i.issueID, i.status_value, i.incident_date, i.due_date, i.responsible_department_value, i.department_manager, i.assigned_to, i.description, i.project_type_value,i.issue_index, p.project, pt.project_type,u.firstName AS assignedfirstName,u.avatarURL AS assignedAvatarURL,  u.lastName AS assignedLastName
FROM issue as i
INNER JOIN project as p ON p.projectID = i.projectID
INNER JOIN project_type as pt ON pt.project_typeID = i.project_typeID
LEFT JOIN user u on i.assigned_to = u.email
-- LEFT JOIN user u2 on i.created_by = u2.email
WHERE i.reference_issueID = {{tableProject2.selectedRow.issueID}}
 