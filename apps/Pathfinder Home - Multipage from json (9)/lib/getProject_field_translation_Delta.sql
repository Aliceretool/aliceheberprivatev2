WITH english_fields
AS (SELECT * FROM {{formatDataAsArray(getProject_field_cross_Languages.data)}}),

translated_fields AS (SELECT * FROM {{formatDataAsArray(getProject_field_translation3.data)}})

SELECT DISTINCT ef.project_fieldID, ef.languageID
FROM english_fields ef LEFT OUTER JOIN translated_fields a
ON ef.project_fieldID = a.project_fieldID AND ef.languageID = a.languageID
WHERE a.languageID is null