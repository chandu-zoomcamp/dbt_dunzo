{{ config(materialized='table') }}

with stock_flow as
(
    SELECT *
    FROM {{ source('canonical', 'stock_flow') }}
)

SELECT DISTINCT
    for_location_names	,
    product_id	,
    unit_of_measure	,
    cast(opening_balance_quantity as integer) opening_balance_quantity	,
    cast(opening_balance_amount as numeric) opening_balance_amount	,
    cast(purchases_quantity as integer) purchases_quantity	,
    cast(purchases_amount as numeric) purchases_amount	,
    cast(transfers_quantity as integer) transfers_quantity	,
    cast(transfers_amount as numeric) transfers_amount	,
    cast(orders_quantity as integer) orders_quantity	,
    cast(orders_amount as numeric) orders_amount	,
    cast(internal_orders_quantity as integer) internal_orders_quantity	,
    cast(internal_orders_amount as numeric) internal_orders_amount	,
    cast(preparations_quantity as integer) preparations_quantity	,
    cast(preparations_amount as numeric) preparations_amount	,
    cast(seperations_quantity as integer) seperations_quantity	,
    cast(seperations_amount as numeric) seperations_amount	,
    cast(adjustments_quantity as integer) adjustments_quantity	,
    cast(adjustments_amount as numeric) adjustments_amount	,
    cast(fixes_quantity as integer) fixes_quantity	,
    cast(fixes_amount as numeric) fixes_amount	,
    cast(closing_balance_quantity as integer) closing_balance_quantity	,
    cast(closing_balance_amount as numeric) closing_balance_amount	
from stock_flow