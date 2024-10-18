SELECT pv.project_field_type_valueID, pv.field_value,pv.responsible_user
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Responsible Department' 
AND pf.projectID = {{ selectProject.value }}
AND pf.cascade = 0 
AND pt.project_typeID = {{selectProjectType.value}} 
AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1
AND pv.project_field_type_valueID = {{selectResponsibleDepartment.value}}

UNION

SELECT pv.project_field_type_valueID, pv.field_value,pv.responsible_user
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN parameter p ON pt.project_typeID = p.parameterID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Responsible Department' 
AND pf.projectID = {{ selectProject.value }}
AND pf.cascade = 1 AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1 AND pv.project_field_type_valueID = {{selectResponsibleDepartment.value}}