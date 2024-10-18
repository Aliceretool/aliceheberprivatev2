select * FROM products  
INNER JOIN categories on products.CategoryID = categories.category_id
  WHERE
  products.id in ({{ multi_select3.value }})


##DISTINCT ProductDisplayText, ID, CAS