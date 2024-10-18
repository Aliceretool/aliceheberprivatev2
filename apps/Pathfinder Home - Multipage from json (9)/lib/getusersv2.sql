SELECT
  *
FROM
  client_users
WHERE
 client_users.client_id = {{select54.value}} AND active = 1