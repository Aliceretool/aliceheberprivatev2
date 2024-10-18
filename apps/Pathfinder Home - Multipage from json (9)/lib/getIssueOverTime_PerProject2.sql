SELECT 
    DATE_FORMAT(i.created_at, '%x-%v') AS year_week,
    i.projectCode,
    COUNT(*) AS count
FROM 
    issue i
GROUP BY 
    year_week, i.projectCode
UNION ALL
SELECT 
    DATE_FORMAT(i.created_at, '%x-%v') AS year_week,
    'Total' AS projectCode,
    COUNT(*) AS count
FROM 
    issue i
GROUP BY 
    year_week
ORDER BY 
    year_week, projectCode;