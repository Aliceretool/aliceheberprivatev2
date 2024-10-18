SELECT pf.project_fieldID, pf.projectID, pf.isActive,pf.project_field
FROM project_field pf
WHERE projectID = {{table_project.selectedRow.projectID}} AND {{table_projectFields.selectedRow.cascade}} = 0
UNION 
SELECT parameterID as project_fieldID, {{table_project.selectedRow.projectID}} AS projectID, 1 AS isActive, 'Cascade To All Projects' AS project_field
FROM parameter WHERE {{table_projectFields.selectedRow.cascade}} = 1
