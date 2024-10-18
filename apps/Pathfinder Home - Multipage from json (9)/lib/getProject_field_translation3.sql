SELECT pf.*,l.name
FROM project_field_translation pf INNER JOIN
project_field p on pf.project_fieldID = p.project_fieldID
INNER JOIN language l on pf.languageID = l.languageID
WHERE {{table_project.selectedRow.projectID}} = p.projectID