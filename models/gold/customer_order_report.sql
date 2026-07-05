{{
    config(
        materialized='table'
    )
}}

select 
    CONCAT(c.first_name,'',c.last_name) as cust_name,
    o.order_id,
    o.order_date,
    o.order_status,
    p.payment_status,
    p.amount
from {{ ref('stg_customers') }} as c
join {{ ref('stg_orders') }} as o
    on c.customer_id=o.customer_id
join {{ ref('stg_payments') }} p
    on o.order_id =p.order_id 
where p.payment_status='success'

