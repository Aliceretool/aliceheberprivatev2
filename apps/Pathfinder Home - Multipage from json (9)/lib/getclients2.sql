SELECT
  clients.id,
  clients.company_name,
  clients.type
FROM
  clients
WHERE
  LENGTH(clients.company_name) <> 0
