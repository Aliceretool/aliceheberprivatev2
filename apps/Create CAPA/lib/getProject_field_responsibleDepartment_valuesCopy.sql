SELECT *
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Responsible Department' 
AND pf.projectID = {{ selectProject.value }}
AND pf.cascade = 0 
