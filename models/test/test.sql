{{config(
    materialized='table',
    schema='staging',
    alias='test_cleaned'
)}}

select
    order_id,
    customer_id,
    order_date,
    trim(product_name) as product_name,
    upper(category) as category,
    quantity,
    unit_price,
    quantity * unit_price as total_amount,
    upper(payment_method) as payment_method,
    upper(order_status) as order_status
from {{ source('staging','orders') }}
