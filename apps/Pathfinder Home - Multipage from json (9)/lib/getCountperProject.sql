select projectCode, project_value, COUNT(issueID) as NumberofIssues FROM issue Issues
group by project_value
order by NumberofIssues desc