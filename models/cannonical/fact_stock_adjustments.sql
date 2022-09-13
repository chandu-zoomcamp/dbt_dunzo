{{ config(materialized='table') }}

with stock_adjustment as
(
    SELECT *
    FROM {{ source('canonical', 'stock_adjustment') }}
)


SELECT DISTINCT
    product_id	,
    expected_quantity	,
    adjustment_quantity	,
    final_quantity	,
    price	,
    expected_amount	,
    adjustment_amount	,
    final_amount	,
    note	,
    stock_adjustment_number	,
    stock_adjustment_location_id	,
    stock_adjustment_location_name	,
    stock_adjustment_reference_number	,
    stock_adjustment_status_name	,
    stock_adjustment_date	,
    stock_adjustment_reason	,
    stock_adjustment_expected_quantity	,
    stock_adjustment_adjustment_quantity	,
    stock_adjustment_final_quantity	,
    stock_adjustment_expected_amount	,
    stock_adjustment_adjustment_amount	,
    stock_adjustment_final_amount	,
    stock_adjustment_note	,
    stock_adjustment_created_at	,
    stock_adjustment_created_by	,
    stock_adjustment_updated_at	,
    stock_adjustment_updated_by	,
    stock_adjustment_closed_at	,
    stock_adjustment_closed_by	,
    stock_adjustment_adjustment_reason		
from stock_adjustment