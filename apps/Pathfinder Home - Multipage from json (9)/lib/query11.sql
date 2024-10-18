SELECT
  project_value,
  DATE_FORMAT(i.created_at, '%m-%Y') AS issue_month,
  COUNT(i.issue_index) AS COUNT
FROM
  issue i
WHERE
  i.created_at >= {{dateRange1.value.start}}
  AND i.created_at <= {{dateRange1.value.end}}
GROUP BY
  MONTH(i.created_at),
  YEAR(i.created_at),
  project_value
ORDER BY
  YEAR(issue_month) ASC,
  MONTH(issue_month) DESC