WITH raas_trades AS (
  SELECT
    cib.finn_car_id__bd_remarketing_de AS finn_car_id,
    cib.car_in_bundle_id__bd_remarketing_de AS car_id,
    trades.trade_id__bd_remarketing_de AS trade_id,
    trades.trade_raas_type__bd_remarketing_de AS raas_type
  FROM `datawarehouse-304513.il.il_trades_bd_remarketing_de` trades
  LEFT JOIN `datawarehouse-304513.il.il_cars_in_bundles_bd_remarketing_de` cib
    USING(car_in_bundle_id__bd_remarketing_de)
  WHERE trade_raas_type__bd_remarketing_de IS NOT NULL
),

buyback_trades AS (
  SELECT *
  FROM `datawarehouse-304513.il.il_cars_in_bundles_bd_remarketing_de`
  WHERE is_eligible_raas_supply__bd_remarketing_de = TRUE
),

supply_trades AS (
  SELECT
    cib.finn_car_id__bd_remarketing_de AS finn_car_id
  FROM `datawarehouse-304513.il.il_supply_trades_bd_remarketing_de` supply_trades
  LEFT JOIN `datawarehouse-304513.il.il_cars_in_bundles_bd_remarketing_de` cib
    USING(car_in_bundle_id__bd_remarketing_de)
),

fjc AS (
  SELECT 
    finn_car_id,
    vin__atbdgd_car_de AS vin,
    brand_name AS brand_name,
    config_model_name AS config_model_name,
    remarketing_partner_name__bd_remarketing_de AS partner_name,
    partner_id__bd_remarketing_de AS partner_id
  FROM `datawarehouse-304513.data_products_de.full_joined_cars`
)

SELECT *
FROM raas_trades
LEFT JOIN fjc USING (finn_car_id)
WHERE finn_car_id NOT IN (
  SELECT * FROM supply_trades
);