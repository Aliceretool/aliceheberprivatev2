SELECT 
  fr.*
FROM field_relationship as fr 
INNER JOIN project_field_type_value as f on fr.value_from = f.project_field_type_valueID
INNER JOIN project_field_type_value as t on fr.value_to = t.project_field_type_valueID
WHERE {{table_project_field_project_type.selectedRow.project_field_project_typeID}} = f.project_field_project_typeID AND {{table_project_field_project_type.selectedRow.project_field_project_typeID}} = t.project_field_project_typeID
