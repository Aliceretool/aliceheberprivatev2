SELECT * FROM
project_type 

UNION

SELECT
parameterID AS project_typeID, 'All (Cascade To all Types)' AS project_type, {{tableProject8.selectedRow.projectID}} AS projectID, 1 AS isActive
FROM parameter