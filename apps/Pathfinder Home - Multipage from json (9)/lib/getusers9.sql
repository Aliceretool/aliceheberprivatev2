SELECT
  *
FROM
  client_users
WHERE
 client_users.client_id = {{select50.value}} AND active = 1