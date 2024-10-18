SELECT [Project field translation id] as project_field_translationID, [Field value] as field_value
FROM {{ fileInput3.parsedValue[0] }}