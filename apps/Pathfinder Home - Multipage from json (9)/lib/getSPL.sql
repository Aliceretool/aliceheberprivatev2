select i.issueID, i.issue_index, i.issue, i.status_value from issue i where projectID = {{ spl_project.value }}
-- AND i.status_value ="Closed"

