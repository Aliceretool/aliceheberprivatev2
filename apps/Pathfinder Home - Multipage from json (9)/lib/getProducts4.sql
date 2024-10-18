SELECT
  *
FROM
  products p
  LEFT JOIN categories c ON p.categoryid = c.category_id  
WHERE
  p.isActive = 1