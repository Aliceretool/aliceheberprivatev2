select i.status_value, i.issueID, i.due_date, i.issue, i.responsible_department_value, i.assigned_to, i.project_value, i.project_type_value, i.issue_index, i.created_at, u.firstName, u.lastName, u.avatarURL, r.firstName as reporter_firstname, r.lastName as reporter_lastName, r.avatarURL as reporter_avatarURL,concat(p.app_path,i.issueID) as app_path FROM  issue i

LEFT JOIN user u ON i.assigned_to = u.email
LEFT JOIN user r ON i.created_by = r.email
LEFT JOIN project p on i.projectID = p.projectID  


where status_value not in ("Closed", "Done", "Rejected", "Withdrawan") 

 and i.assigned_to = {{ current_user.email }}

AND ({{!dateRange1.value.start}} OR  {{!dateRange1.value.end}} OR i.due_date >= {{ dateRange1.value.start ? dateRange1.value.start : null}} AND i.due_date <= {{ dateRange1.value.end ? dateRange1.value.end : null}}) order by i.created_at desc



