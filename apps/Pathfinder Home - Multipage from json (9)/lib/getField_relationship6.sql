SELECT f.*,pf.field_value
FROM field_relationship f JOIN project_field_type_value pf
ON f.value_to = pf.project_field_type_valueID
WHERE value_from = {{ getIssue13.data.statusID[0] }}