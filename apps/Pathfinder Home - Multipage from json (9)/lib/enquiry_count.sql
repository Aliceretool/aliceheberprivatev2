SELECT
  *
FROM
  client_enquiries
  INNER JOIN clients ON client_enquiries.client_id = clients.id
  INNER JOIN products ON client_enquiries.product_id = products.id
  INNER JOIN categories ON products.CategoryID = categories.category_id
WHERE
  client_enquiries.client_id = {{table36.selectedRow.client_id}} and cancelled = FALSE
ORDER BY
  enquiry_expiry_date DESC