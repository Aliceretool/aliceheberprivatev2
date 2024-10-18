SELECT i.issueID,i.statusID,i.projectID,i.project_typeID,i.responsible_departmentID, i.responsible_department_value, i.description,i.created_at,i.created_by,i.issue,i.issue_index, i.assigned_to, u.firstName, u.lastName, u.avatarURL, r.firstName as reporter_firstname, r.lastName as reporter_lastName, r.avatarURL as reporter_avatarURL
FROM issue i
LEFT JOIN user u ON i.assigned_to = u.email
LEFT JOIN user r ON i.created_by = r.email
WHERE i.projectID = {{project_id3.value }}
-- AND where  i.status_value = ANY {{ multiselect6.selectedItems.values }}
-- AND ({{ !multiselect5.value }} OR i.assigned_to in 
-- { {multiselect1.value}})
  ORDER BY i.created_at DESC

 