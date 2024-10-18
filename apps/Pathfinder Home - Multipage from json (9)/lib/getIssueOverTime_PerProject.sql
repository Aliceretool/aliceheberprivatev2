SELECT 
    DATE_FORMAT(i.created_at, '%x-%v') AS year_week,
    COUNT(*) AS count,
  i.projectCode
  
FROM 
    issue I
  where i.projectCode = "DVR"
GROUP BY 
    year_week
ORDER BY 
    year_week;
