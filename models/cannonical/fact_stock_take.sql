{{ config(materialized='table') }}

with stock_take as
(
    SELECT *
    FROM {{ source('canonical', 'stock_take') }}
)

SELECT DISTINCT
    product_id	,
    expected_quantity	,
    counted_quantity	,
    difference_quantity	,
    price	,
    expected_amount	,
    counted_amount	,
    difference_amount	,
    note	,
    stock_take_number	,
    stock_take_location_id	,
    stock_take_location_name	,
    stock_take_reference_number	,
    stock_take_status_name	,
    stock_take_date	,
    stock_take_expected_quantity	,
    stock_take_counted_quantity	,
    stock_take_difference_quantity	,
    stock_take_expected_amount	,
    stock_take_counted_amount	,
    stock_take_difference_amount	,
    stock_take_note	,
    stock_take_created_at	,
    stock_take_created_by	,
    stock_take_updated_at	,
    stock_take_updated_by	,
    stock_take_closed_at	,
    stock_take_closed_by	,
    stock_take_name	
from stock_take