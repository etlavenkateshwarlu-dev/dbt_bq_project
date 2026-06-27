{{ config(materialized='table') }}

SELECT

    o.order_id,
    o.customer_id,

    c.first_name,
    c.last_name,

    CONCAT(c.first_name, ' ', c.last_name) AS full_name,

    o.order_date,
    o.order_status,

    SUM(p.amount) AS total_amount

FROM {{ ref('stg_orders') }} o

LEFT JOIN {{ ref('stg_customers') }} c
    ON o.customer_id = c.customer_id

LEFT JOIN {{ ref('stg_payments') }} p
    ON o.order_id = p.order_id

GROUP BY
    o.order_id,
    o.customer_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.order_status