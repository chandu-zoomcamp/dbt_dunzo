{{ config(materialized='table') }}

with sales as
(
    SELECT *
    FROM {{ source('canonical', 'sales') }}
)


SELECT DISTINCT
    order_id ,
    order_order_number ,
    order_location_id ,
    order_location_name ,
    order_customer_name ,
    order_customer_contact ,
    order_customer_email ,
    order_customer_code ,
    order_customer_tax_number ,
    order_bill_to_customer_address_name ,
    order_ship_to_customer_address_name ,
    order_sale_channel_name ,
    order_register_name ,
    order_employee_name ,
    order_bill_number ,
    order_table_number ,
    order_table_seats ,
    order_ordered_date ,
    order_ordered_at ,
    order_shipment_date ,
    order_ordered_status_name ,
    order_invoice_status_name ,
    order_payment_status_name ,
    order_fulfillment_status_name ,
    order_reference_number ,
    order_currency_code ,
    order_order_type_name ,
    order_online_sale ,
    order_longegrated ,
    order_has_returns ,
    order_return_order_order_number ,
    order_flagged ,
    order_voided ,
    order_quantity ,
    order_sub_total ,
    order_discount ,
    order_loyalty_discount ,
    order_net_sales ,
    order_tax ,
    order_charge ,
    order_charge_tax ,
    order_product_charge ,
    order_product_charge_tax ,
    order_shipping_cost ,
    order_round_off ,
    order_total ,
    order_note ,
    order_discount_type_name ,
    order_discount_value ,
    order_discount_code ,
    order_discount_source ,
    order_discount_expiry ,
    order_discount_notes ,
    order_discount_applied_on_name ,
    order_loyalty_discount_type_name ,
    order_loyalty_discount_value ,
    order_loyalty_discount_code ,
    order_loyalty_discount_source ,
    order_loyalty_discount_expiry ,
    order_loyalty_discount_notes ,
    order_created_at ,
    order_created_by_name ,
    order_updated_at ,
    order_updated_by_name
from sales