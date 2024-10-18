WITH UserCrossProject AS
(SELECT * FROM {{formatDataAsArray(getUserCrossProjectRole.data)}}),

UserProjectRole AS
(SELECT DISTINCT CAST(userID as nvarchar) as userID, CAST(project_roleID as nvarchar) as project_roleID FROM {{formatDataAsArray(getUser_project_role.data)}}),

Delta AS
(SELECT u.userID,u.project_roleID
FROM UserCrossProject u
LEFT OUTER JOIN UserProjectRole pr 
ON CAST(u.userID AS nvarchar) = cast(pr.userID AS nvarchar) AND cast(u.project_roleID AS nvarchar)= cast(pr.project_roleID as nvarchar)
WHERE pr.userID IS NULL)

SELECT * From Delta
