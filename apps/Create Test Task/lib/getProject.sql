SELECT * FROM project as p 
INNER JOIN project_type as pt on p.projectID = pt.projectID
WHERE p.projectID = {{project_id.value}}