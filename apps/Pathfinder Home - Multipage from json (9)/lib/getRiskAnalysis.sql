SELECT 
  *,
  CASE 
    WHEN severity_value = 1 THEN 'Low'
    WHEN severity_value = 2 THEN 'Medium'
    WHEN severity_value = 3 THEN 'High'
  ELSE null END as severity_name,
  CASE 
    WHEN occurance_value = 1 THEN 'Low'
    WHEN occurance_value = 2 THEN 'Medium'
    WHEN occurance_value = 3 THEN 'High'
  ELSE null END as occurance_name
FROM risk_analysis
WHERE issueID =  {{url.searchParams.issueID}}