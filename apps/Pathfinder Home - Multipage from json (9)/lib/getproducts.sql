select * FROM products  
INNER JOIN categories on products.CategoryID = categories.category_id
  WHERE
  LENGTH("ProductDisplayText" || '') <> 0
order by products.ProductDisplayText DESC LIMIT 100;

##DISTINCT ProductDisplayText, ID, CAS