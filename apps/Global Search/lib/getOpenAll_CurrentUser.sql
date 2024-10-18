select i.status_value, i.issueID, i.due_date, i.issue, i.projectID,i.project_typeID,i.responsible_department_value, i.assigned_to, i.project_value, i.project_type_value, i.issue_index, i.created_at, u.firstName, u.lastName, u.avatarURL, r.firstName as reporter_firstname, r.lastName as reporter_lastName, r.avatarURL as reporter_avatarURL,concat(p.app_path,i.issueID) as app_path,i.specific_reference,i.closure_ref,i.type_of_modification_value, i.impact_supplier_client_scheduling,i.description,i.impact_q_s_e,i.proposed_modification,i.justification, concat(u.firstName,' ',u.lastName, ' (', u.email,')') as assigned_to_first_last_email FROM  issue i

LEFT JOIN user u ON i.assigned_to = u.email
LEFT JOIN user r ON i.created_by = r.email
LEFT JOIN project p on i.projectID = p.projectID  
WHERE

-- where status_value not in ("Closed", "Done", "Rejected", "Withdrawn") 

 i.project_value = ifnull({{ projectVALUE.value}},i.project_value)


AND ({{!dueDate.value.start}} OR  {{!dueDate.value.end}} OR i.due_date >= {{ dueDate.value.start ? dueDate.value.start : null}} AND i.due_date <= {{ dueDate.value.end ? dueDate.value.end : null}}) order by i.created_at desc



