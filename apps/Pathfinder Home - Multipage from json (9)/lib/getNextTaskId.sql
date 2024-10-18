SELECT 
    issue_index,
    CAST(SUBSTRING_INDEX(issue_index, '-', -1) AS UNSIGNED) AS issue_number
FROM Issue
WHERE projectID = 'ac347935-ad6f-4413-939f-aaad8a99c6db'
ORDER BY issue_number DESC
LIMIT 1;