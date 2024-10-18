WITH english_values AS
(SELECT project_fieldID,project_field FROM {{formatDataAsArray(getProject_field.data)}}),

translations_to_update AS 
(SELECT * FROM {{formatDataAsArray(getProject_field_translation3.data)}}
WHERE field_value is null)

SELECT t.project_field_translationID,e.project_field as field_value
FROM translations_to_update t INNER JOIN english_values e
ON t.project_fieldID = e.project_fieldID
WHERE t.field_value is null