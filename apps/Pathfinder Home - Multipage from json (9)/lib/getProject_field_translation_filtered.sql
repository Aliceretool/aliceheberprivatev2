SELECT pft.*, l.name 
FROM project_field_translation as pft 
INNER JOIN language as l on pft.languageID = l.languageID
WHERE pft.project_fieldID = {{ table_projectFields.selectedRow.project_fieldID }}