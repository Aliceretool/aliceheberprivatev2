SELECT DISTINCT brand_name
FROM `datawarehouse-304513.data_products_de.full_joined_cars` 
WHERE brand_name is not NULL
order by brand_name asc