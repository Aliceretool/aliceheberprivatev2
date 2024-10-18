let topTaskIssueIdx = {{ getHighestTaskIssueIndex.data.issue_number }}
const nextIdx =  +topTaskIssueIdx+ +1
const nextTaskIssueIdx = 'TASK-'+nextIdx

return nextTaskIssueIdx