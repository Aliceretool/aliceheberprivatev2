SELECT pv.project_field_type_valueID, pv.field_value
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Risk Area'
AND pf.projectID = {{current_project_id3.value}} 
AND pf.cascade = 0 
AND pt.project_typeID = {{ getIssue6.data.project_typeID[0] }}
AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1

UNION

SELECT pv.project_field_type_valueID, pv.field_value
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN parameter p ON pt.project_typeID = p.parameterID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Risk Area'
AND pf.projectID = {{current_project_id3.value}}  
AND pf.cascade = 1 AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1