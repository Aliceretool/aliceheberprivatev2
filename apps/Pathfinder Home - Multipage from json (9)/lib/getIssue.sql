SELECT i.issueID,i.statusID,i.projectID,i.project_typeID,i.responsible_departmentID, i.responsible_department_value, i.created_at,i.created_by,i.issue,i.issue_index, i.closure_ref, i.type_of_modification_value, i.type_of_modificationID, i.impact_q_s_e, i.description, i.impact_supplier_client_scheduling, i.proposed_modification, i.justification, i.specific_reference, i.reference_issueID, i.assigned_to, i.created_by, d.issue as deviation_summary, d.issue_index as deviation_index, u.firstName, u.lastName, u.avatarURL, r.firstName as reporter_firstname, r.lastName as reporter_lastName, r.avatarURL as reporter_avatarURL
FROM issue i
LEFT JOIN user u ON i.assigned_to = u.email
LEFT JOIN user r ON i.created_by = r.email
LEFT JOIN issue d ON i.reference_issueID = d.issueID
WHERE i.projectID = {{ project_id.value }}   
ORDER BY i.created_at DESC

 