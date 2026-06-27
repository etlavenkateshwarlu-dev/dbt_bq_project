{{ config(materialized='view') }}

SELECT

    id AS order_id,

    user_id AS customer_id,

    order_date,

    LOWER(status) AS order_status

FROM `vctbatch-9916-500703.raw_jaffle_shop.orders`