SELECT 
  fr.field_relationshipID,
  f.field_value as from_status,
  t.field_value as to_status
FROM field_relationship as fr 
INNER JOIN project_field_type_value as f on fr.value_from = f.project_field_type_valueID
INNER JOIN project_field_type_value as t on fr.value_to = t.project_field_type_valueID