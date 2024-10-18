WITH ProjectFieldCrossType AS
(SELECT * FROM {{formatDataAsArray(getProject_field_CROSS_project_type.data)}}),

ProjectFieldType AS
(SELECT * FROM {{formatDataAsArray(getProject_field_project_typeTable_Refresh.data)}}),

Delta AS
(SELECT u.project_fieldID,1 AS isActive,u.project_typeID
FROM ProjectFieldCrossType u
LEFT OUTER JOIN ProjectFieldType pr 
ON CAST(u.project_fieldID AS nvarchar)= cast(pr.project_fieldID AS nvarchar) AND cast(u.project_typeID AS nvarchar)= cast(pr.project_typeID as nvarchar)
WHERE pr.project_fieldID IS NULL)

SELECT * From Delta
