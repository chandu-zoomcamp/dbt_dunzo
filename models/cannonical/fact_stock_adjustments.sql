{{ config(materialized='table') }}

with stock_adjustment as
(
    SELECT *
    FROM {{ source('canonical', 'stock_adjustment') }}
)


SELECT DISTINCT
    product_id	,
    cast(expected_quantity as integer) expected_quantity	,
    cast(adjustment_quantity as integer) adjustment_quantity	,
    cast(final_quantity as integer) final_quantity	,
    cast(price as numeric) price	,
    cast(expected_amount as numeric) expected_amount	,
    cast(adjustment_amount as numeric) adjustment_amount	,
    cast(final_amount as numeric) final_amount	,
    note	,
    stock_adjustment_number	,
    stock_adjustment_location_id	,
    stock_adjustment_location_name	,
    stock_adjustment_reference_number	,
    stock_adjustment_status_name	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',Stock_adjustment_Date) stock_adjustment_date	,
    stock_adjustment_reason	,
    cast(stock_adjustment_expected_quantity as integer) stock_adjustment_expected_quantity	,
    cast(stock_adjustment_adjustment_quantity as integer) stock_adjustment_adjustment_quantity	,
    cast(stock_adjustment_final_quantity as integer) stock_adjustment_final_quantity	,
    cast(stock_adjustment_expected_amount as numeric) stock_adjustment_expected_amount	,
    cast(stock_adjustment_adjustment_amount as numeric) stock_adjustment_adjustment_amount	,
    cast(stock_adjustment_final_amount as numeric) stock_adjustment_final_amount	,
    stock_adjustment_note	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',Stock_adjustment_created_at) stock_adjustment_created_at	,
    stock_adjustment_created_by	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',Stock_adjustment_updated_at) stock_adjustment_updated_at	,
    stock_adjustment_updated_by	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',Stock_adjustment_closed_at) stock_adjustment_closed_at	,
    stock_adjustment_closed_by	,
    stock_adjustment_adjustment_reason		
from stock_adjustment