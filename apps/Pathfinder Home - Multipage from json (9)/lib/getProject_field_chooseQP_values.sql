SELECT pv.project_field_type_valueID, pv.field_value
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_fieldID = 'd287fbb4-4a52-4785-8a99-68d9d7e29c9c' 
AND pf.cascade = 0 
AND pt.project_typeID = {{ getIssue2.data.project_typeID[0] }} 
AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1

UNION

SELECT pv.project_field_type_valueID, pv.field_value
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN parameter p ON pt.project_typeID = p.parameterID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_fieldID = 'd287fbb4-4a52-4785-8a99-68d9d7e29c9c' 
AND pf.cascade = 1 AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1