SELECT i.issue, i.issueID, i.issue_index, i.status_value
FROM issue as i
WHERE i.reference_issueID = {{ getIssue17.data.reference_issueID[0] }}
 