SELECT i.issue, i.issueID, i.issue_index
FROM issue as i
WHERE i.projectID = {{parent_project_id.value}}
 