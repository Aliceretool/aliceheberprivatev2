SELECT DISTINCT config_model_name
FROM `datawarehouse-304513.data_products_de.full_joined_cars` 
WHERE config_model_name is not NULL AND ({{ add_supply_brands_selector.value.length === 0 }} OR brand_name in UNNEST({{ add_supply_brands_selector.value.length ? add_supply_brands_selector.value : [""] }}))
order by config_model_name ASC
