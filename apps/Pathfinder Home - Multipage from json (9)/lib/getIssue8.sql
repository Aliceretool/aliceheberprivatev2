SELECT
  i.issueID,
  i.statusID,
  i.projectID,
  i.project_typeID,
  i.clientID,
  i.markets,
  i.typeofBatch,
  i.batchNos,
  i.typeofCertification,
  i.itemNos,
  i.parentBatchNo,
  i.packType,
  i.yield,
  i.created_at,
  i.created_by,
  i.issue,
  i.issue_index,
  i.reference_issueID,
  i.assigned_to,
  i.created_by,
  d.issue AS deviation_summary,
  d.issue_index AS deviation_index,
  u.firstName,
  u.lastName,
  u.avatarURL,
  r.firstName AS reporter_firstname,
  r.lastName AS reporter_lastName,
  r.avatarURL AS reporter_avatarURL,
  c.company_name,
  pftv.field_value
FROM
  issue i
  LEFT JOIN user u ON i.assigned_to = u.email
  LEFT JOIN user r ON i.created_by = r.email
  LEFT JOIN issue d ON i.reference_issueID = d.issueID
  LEFT JOIN clients c ON i.clientID = c.id
  LEFT JOIN project_field_type_value pftv ON i.typeofBatch = pftv.project_field_type_valueID
WHERE
  i.projectID = {{ project_id4.value }}
ORDER BY
  i.created_at DESC