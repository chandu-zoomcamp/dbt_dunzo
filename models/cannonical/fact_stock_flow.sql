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
    opening_balance_quantity	,
    opening_balance_amount	,
    purchases_quantity	,
    purchases_amount	,
    transfers_quantity	,
    transfers_amount	,
    orders_quantity	,
    orders_amount	,
    internal_orders_quantity	,
    internal_orders_amount	,
    preparations_quantity	,
    preparations_amount	,
    seperations_quantity	,
    seperations_amount	,
    adjustments_quantity	,
    adjustments_amount	,
    fixes_quantity	,
    fixes_amount	,
    closing_balance_quantity	,
    closing_balance_amount	
from stock_flow