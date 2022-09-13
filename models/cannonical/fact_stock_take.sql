{{ config(materialized='table') }}

with stock_take as
(
    SELECT *
    FROM {{ source('canonical', 'stock_take') }}
)

SELECT DISTINCT
    product_id	,
    cast(expected_quantity as integer) expected_quantity	,
    cast(counted_quantity as integer) counted_quantity	,
    cast(difference_quantity as integer) difference_quantity	,
    cast(price as numeric) price	,
    cast(expected_amount as numeric) expected_amount	,
    cast(counted_amount as numeric) counted_amount	,
    cast(difference_amount as numeric) difference_amount	,
    note	,
    stock_take_number	,
    stock_take_location_id	,
    stock_take_location_name	,
    stock_take_reference_number	,
    stock_take_status_name	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',stock_take_date) stock_take_date	,
    cast(stock_take_expected_quantity as integer) stock_take_expected_quantity	,
    cast(stock_take_counted_quantity as integer) stock_take_counted_quantity	,
    cast(stock_take_difference_quantity as integer) stock_take_difference_quantity	,
    cast(stock_take_expected_amount as numeric) stock_take_expected_amount	,
    cast(stock_take_counted_amount as numeric) stock_take_counted_amount	,
    cast(stock_take_difference_amount as numeric) stock_take_difference_amount	,
    stock_take_note	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',stock_take_created_at) stock_take_created_at	,
    stock_take_created_by	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',stock_take_updated_at) stock_take_updated_at	,
    stock_take_updated_by	,
    parse_datetime('%b %e, %Y %l:%M:%S %p',stock_take_closed_at) stock_take_closed_at	,
    stock_take_closed_by	,
    stock_take_name	
from stock_take