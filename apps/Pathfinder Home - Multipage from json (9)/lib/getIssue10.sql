SELECT i.issueID,i.statusID,i.projectID,i.project_typeID,i.lab_nos, i.anl_method, i.test, i.analysis_other, i.description, i.raw_data, i.equipment_no, i.references_oos_oot, i.due_date, i.created_at,i.created_by,i.issue,i.issue_index, i.analysis_type, i.assigned_to, i.created_by, u.firstName, u.lastName, u.avatarURL, r.firstName as reporter_firstname, r.lastName as reporter_lastName, r.avatarURL as reporter_avatarURL,  pftv.field_value
FROM issue i
LEFT JOIN user u ON i.assigned_to = u.email
LEFT JOIN user r ON i.created_by = r.email
LEFT JOIN project_field_type_value pftv on i.analysis_type = pftv.project_field_type_valueID  

WHERE i.projectID = {{ project_id5.value}}     
ORDER BY i.created_at DESC

 