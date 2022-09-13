{{ config(materialized='table') }}

with purchases as
(
    SELECT *
    FROM {{ source('canonical', 'purchases') }}
)


SELECT DISTINCT
    product_id	,
    cast(ordered_quantity as integer) ordered_quantity	,
    cast(received_quantity as integer) received_quantity	,
    cast(difference_quantity as  integer) difference_quantity	,
    cast(price as  numeric) price,
    cast(tax as  numeric) tax,
    cast(charge as  integer) charge,
    cast(charge_tax as  integer) charge_tax,
    cast(ordered_total as  numeric) ordered_total,
    cast(received_total as  numeric) received_total,
    cast(difference_total as  integer) difference_total,
    tax_name	,
    purchase_order_purchase_order_number	,
    purchase_order_bill_to_location_id	,
    purchase_order_bill_to_location_name	,
    purchase_order_ship_to_location_id	,
    purchase_order_ship_to_location_name	,
    parse_date('%d/%m/%y',purchase_order_fulfilled_date) purchase_order_fulfilled_date	,
    purchase_order_status_name	,
    purchase_order_reference_number	,
    purchase_order_supplier_id	,
    purchase_order_supplier_name	,
    purchase_order_updated_at	,
    parse_date('%d/%m/%y',fulfilled_date) fulfilled_date	,
    rnk	
from purchases