SELECT
  i.issueID,
  i.statusID,
  i.projectID,
  i.project_typeID,
  i.responsible_departmentID,
  i.responsible_department_value,
  i.batch_no,
  i.code,
  i.description,
  i.product_effected_comment,
  i.equipment_effected_comment,
  i.status_value,
  i.type_of_modification_value,
  i.created_at,
  i.created_by,
  i.issue,
  i.issue_index,
  i.assigned_to,
  u.firstName,
  u.lastName,
  u.avatarURL,
  r.firstName as reporter_firstname,
  r.lastName as reporter_lastName,
  r.avatarURL as reporter_avatarURL,
  i.classification_disposition_value,
  i.choose_QP_value,
  i.classification_root_cause_value,
  i.classification_evaluation_of_related_value,
  i.classification_notification_value,
  i.classification_recurrence_value,
  i.classification_severity_value,
  i.evaluation,
  i.corrective_action,
  i.preventative_action,
  i.reason,
  q.firstName as qp_firstname,
  q.lastName as qp_lastName,
  q.avatarURL as qp_avatarURL
  
FROM
  issue i
  LEFT JOIN user u ON i.assigned_to = u.email
  LEFT JOIN user r ON i.created_by = r.email
  LEFT JOIN user q on i.choose_QP_value = q.userID
  
WHERE
  i.projectID = {{project_id2.value}}
 -- AND (
 --   ({{ multiselect3.value.length === 0 }}) OR i.assigned_to = ANY ({{ multiselect3.selectedItem.email }} ))

ORDER BY
  i.issue_index DESC