SELECT pv.project_field_type_valueID, pv.field_value
FROM project_field pf
INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
WHERE pf.project_field = 'Status'
AND pf.projectID = '65ecccb8-2886-4361-a2e0-6f87c98569cf' # SPL Project

-- AND pf.cascade = 0 
-- AND pt.project_typeID = '195919d0-e21b-4be8-ac60-a0dd34a583cb' #SPL Type
-- AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1

-- UNION

-- SELECT pv.project_field_type_valueID, pv.field_value
-- FROM project_field pf
-- INNER JOIN project_field_project_type pt ON pf.project_fieldID = pt.project_fieldID
-- INNER JOIN parameter p ON pt.project_typeID = p.parameterID
-- INNER JOIN project_field_type_value pv ON pt.project_field_project_typeID = pv.project_field_project_typeID
-- WHERE pf.project_field = 'Status'
-- AND pf.projectID = '65ecccb8-2886-4361-a2e0-6f87c98569cf'
-- AND pf.cascade = 1 AND pv.isActive = 1 AND pt.isActive = 1 AND pf.isActive = 1