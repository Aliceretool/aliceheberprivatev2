SELECT pf.*
FROM project_field_project_type pf CROSS JOIN parameter p
WHERE {{table_projectFields.selectedRow.cascade}} = 0 
  AND pf.project_fieldID = {{table_projectFields.selectedRow.project_fieldID}}
 -- AND pf.project_typeID NOT IN (p.parameterID)
UNION 
SELECT pf.*
FROM project_field_project_type pf CROSS JOIN parameter p
WHERE {{table_projectFields.selectedRow.cascade}} = 1 
  AND pf.project_fieldID = {{table_projectFields.selectedRow.project_fieldID}} 
 -- AND pf.project_typeID IN (p.parameterID)