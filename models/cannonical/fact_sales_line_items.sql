{{ config(materialized='table') }}

with sales_line as
(
    SELECT *
    FROM {{ source('canonical', 'sales') }}
)


SELECT DISTINCT
    product_line_entry_id	,
    is_return	,
    return_order_number	,
    quantity	,
    price	,
    modifier_price	,
    discount	,
    loyalty_discount	,
    net_sales	,
    tax_name	,
    tax_percentage	,
    tax	,
    charge	,
    charge_tax	,
    total	,
    note	,
    unit_of_measure_name	,
    created_at	,
    updated_at	,
    voided	,
    voided_at	,
    voided_reason	,
    kot_prlonged	,
    kot_prlonged_at	,
    discount_code	,
    discount_source	,
    discount_notes	,
    discount_expiry	,
    discount_applied_on	,
    loyalty_discount_type_name	,
    loyalty_discount_value	,
    loyalty_discount_code	,
    loyalty_discount_source	,
    loyalty_discount_expiry	,
    loyalty_discount_notes	,
    rnk	,
    date
from sales_line