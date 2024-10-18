SELECT i.issueID,i.statusID,i.projectID,i.project_typeID,i.name, i.method_t, i.test, i.product_name, i.created_at,i.created_by,i.issue,i.issue_index, i.description, i.dilution, i.SF, i.phMeter, i.phMeterID, i.phMeter_Calibration_Expiry, i.balance_slip, i.prep_expiry, i.prep_expiry_reason, i.lpr, i.created_by, u.firstName, u.lastName, u.avatarURL, r.firstName as reporter_firstname, r.lastName as reporter_lastName, r.avatarURL as reporter_avatarURL,  pftv.field_value, p.id, p.ProductDisplayText
FROM issue i
LEFT JOIN user u ON i.assigned_to = u.email
LEFT JOIN user r ON i.created_by = r.email
LEFT JOIN project_field_type_value pftv on i.analysis_type = pftv.project_field_type_valueID  

LEFT JOIN products p on i.product_name = p.id
  
WHERE i.projectID = {{ project_id6.value}}     
ORDER BY i.created_at DESC

 