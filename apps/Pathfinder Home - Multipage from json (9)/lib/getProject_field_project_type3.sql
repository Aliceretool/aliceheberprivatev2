SELECT pf.*
FROM project_field pf
WHERE pf.project_fieldID NOT IN (
  SELECT pp.project_fieldID
  FROM project_field_project_type pp
)