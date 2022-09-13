{{ config(materialized='table') }}

select
    product_id,
    product_variant_id, 
    product_full_name,
    category_name,
    product_hsn_code,
    product_line_entry_id
from {{ source('canonical','sales') }}