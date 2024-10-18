SELECT 
    DATE_FORMAT(i.created_at, '%x-%v') AS year_week,
    COUNT(*) AS count
FROM 
    issue I
GROUP BY 
    year_week
ORDER BY 
    year_week;
