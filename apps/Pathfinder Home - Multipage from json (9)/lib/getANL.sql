SELECT i.issueID, i.issue_index, i.status_value, i.issue, i.projectID, p.project, pt.project_type
FROM issue as i
INNER JOIN project as p ON p.projectID = i.projectID
INNER JOIN project_type as pt ON pt.project_typeID = i.project_typeID
-- LEFT JOIN user u on i.assigned_to = u.email
-- LEFT JOIN user u2 on i.created_by = u2.email
-- LEFT JOIN tests ts on ts.idtests = i.test
WHERE i.projectID =  {{anl_project_id.value}}

