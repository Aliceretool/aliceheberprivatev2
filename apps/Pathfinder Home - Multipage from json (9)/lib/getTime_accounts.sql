SELECT
  *
FROM
  time_accounts ta
  LEFT JOIN clients c ON ta.client_id = c.id
  LEFT JOIN products p ON ta.products = p.id