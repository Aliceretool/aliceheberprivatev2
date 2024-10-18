SELECT i.*, p.project, pt.project_type
FROM issue as i
INNER JOIN project as p ON p.projectID = i.projectID
INNER JOIN project_type as pt ON pt.project_typeID = i.project_typeID
WHERE i.issueID =  {{ localStorage.values.deviation_issue_id }}
 