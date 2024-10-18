SELECT pv.project_field_type_valueID, pv.field_value
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Type of Modification' 
AND pf.projectID = {{ tableProject.selectedRow.projectID }}
AND pf.cascade = 0 
AND pt.project_typeID = {{tableProject.selectedRow.project_typeID }}
AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1

UNION

SELECT pv.project_field_type_valueID, pv.field_value
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN parameter p ON pt.project_typeID = p.parameterID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Type of Modification' 
AND pf.projectID ={{tableProject.selectedRow.project_id}}
AND pf.cascade = 1 AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1