WITH external_raas AS (
  SELECT
    raas_finn_car_id__bd_remarketing_de AS finn_car_id
  FROM `datawarehouse-304513.il.il_raas_cars_bd_remarketing_de`
),

internal_raas AS (
  SELECT finn_car_id__bd_remarketing_de AS finn_car_id
  FROM `datawarehouse-304513.il.il_cars_in_bundles_bd_remarketing_de`
  WHERE is_eligible_raas_supply__bd_remarketing_de = TRUE
),

all_raas AS (
SELECT *, 'external_cars' AS raas_type
FROM external_raas
  UNION ALL
SELECT *, 'internal_cars' AS raas_type
FROM internal_raas
)

SELECT * FROM all_raas