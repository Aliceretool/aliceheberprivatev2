SELECT pf.project_fieldID, pt.project_typeID
FROM project_field pf
INNER JOIN project p ON pf.projectID = p.projectID
INNER JOIN project_type pt on p.projectID = pt.projectID

