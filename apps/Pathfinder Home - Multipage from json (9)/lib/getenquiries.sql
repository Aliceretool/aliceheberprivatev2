 -- This query retrieves all columns from the "enquiries" table and performs inner joins with the "clients", "usersx", and "ioproducts" tables. The join conditions link the "client_id" column of "enquiries" with the "id" column of "clients", the "user_id" column of "enquiries" with the "userID" column of "usersx", and the "product_id" column of "enquiries" with the "id" column of "ioproducts". The result is sorted in descending order based on the "enquiry_expiry_date" column.
SELECT
  *
FROM
  client_enquiries
  INNER JOIN clients ON client_enquiries.client_id = clients.id
  INNER JOIN client_users ON client_enquiries.user_id = client_users.userID
  INNER JOIN products ON client_enquiries.product_id = products.id
   LEFT JOIN categories ON products.CategoryID = categories.category_id
   LEFT JOIN units ON client_enquiries.dosage_unit = units.id
   LEFT JOIN logistics ON client_enquiries.shipping_terms = logistics.id
   LEFT JOIN currencies on client_enquiries.quoted_currency = currencies.id
--  LEFT JOIN entities on enquiries.entity = entities.id
   WHERE  client_enquiries.status = {{ buttonGroup1.value }}
ORDER BY
  enquiry_expiry_date ASC
  
 