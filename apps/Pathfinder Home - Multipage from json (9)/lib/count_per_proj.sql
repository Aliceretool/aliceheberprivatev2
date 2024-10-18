SELECT issue_index, project_value, created_at, assigned_to, COUNT(*) FROM issue
  
where status_value not in ("Closed", "Done", "Rejected", "Withdrawan") 
AND assigned_to = {{ current_user.email }}
  GROUP BY project_value;