SELECT pf.project_fieldID,pf.project_field, l.code AS language_key 
FROM 
project_field as pf
CROSS JOIN language as l
INNER JOIN project p on pf.projectID = p.projectID
WHERE {{table_project.selectedRow.projectID}} = p.projectID
ORDER BY pf.project_field,l.code

