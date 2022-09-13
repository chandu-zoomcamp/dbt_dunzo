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
    cast(quantity as integer) quantity	,
    cast(price as numeric) price	,
    cast(modifier_price as numeric) modifier_price	,
    cast(discount as numeric) discount	,
    cast(loyalty_discount as numeric) loyalty_discount	,
    cast(net_sales as numeric) net_sales	,
    tax_name	,
    cast(tax_percentage as numeric) tax_percentage	,
    cast(tax as numeric) tax	,
    cast(charge as numeric) charge	,
    cast(charge_tax as numeric) charge_tax	,
    cast(total as numeric) total	,
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
    parse_date('%d/%m/%y',date) date
from sales_line