SELECT pv.project_field_type_valueID, pv.field_value,pv.responsible_user
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Type of Batch' 
AND pf.projectID = {{ selectProject.value }}
AND pt.project_typeID = {{selectProjectType.value}} 
AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1
