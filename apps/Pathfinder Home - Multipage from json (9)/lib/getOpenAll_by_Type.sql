select i.status_value, i.issueID, i.due_date, i.issue, i.responsible_department_value, i.assigned_to, i.project_value, i.project_type_value, i.issue_index, i.created_at FROM  issue i

where status_value not in ("Closed", "Done", "Rejected", "Withdrawan")
 
  -- AND i.due_date >= {{dateRange1.value.start }} AND i.due_date <= {{dateRange1.value.end}} 

