SELECT i.issue, i.issueID, i.issue_index
FROM issue as i
WHERE i.projectID = {{current_project_id3.value}}
 