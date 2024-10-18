SELECT pft.field_value, pft.project_field_translationID, pft.languageID, pf.project_fieldID
FROM project_field_translation pft
INNER JOIN project_field pf ON pf.project_fieldID = pft.project_fieldID
WHERE pf.projectID = {{ selectProject.value }}
AND {{ getUser.data.languageID[0] }} is not null AND pft.languageID = {{ getUser.data.languageID[0] }}

UNION ALL 

SELECT pftb.field_value, pftb.project_field_translationID, pftb.languageID, pf.project_fieldID
FROM project_field_translation pftb
INNER JOIN project_field pf ON pf.project_fieldID = pftb.project_fieldID
WHERE pf.projectID = {{ selectProject.value }}
AND pftb.languageID = '65c9a454-15eb-4963-8477-f2737393356d' AND pftb.project_fieldID NOT IN (SELECT pf.project_fieldID
FROM project_field_translation pft
INNER JOIN project_field pf ON pf.project_fieldID = pft.project_fieldID WHERE pf.projectID = {{ selectProject.value }}
AND {{ getUser.data.languageID[0] }} is not null AND pft.languageID = {{ getUser.data.languageID[0] }})

