SELECT f.*,pf.field_value,pf.project_field_type_valueID
FROM field_relationship f JOIN project_field_type_value pf
ON f.value_to = pf.project_field_type_valueID
WHERE value_from = {{ getIssue4.data.statusID[0] }}