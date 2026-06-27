{{ config(materialized='view') }}

SELECT

    id AS payment_id,

    orderid AS order_id,

    LOWER(paymentmethod) AS payment_method,

    LOWER(status) AS payment_status,

    amount

FROM `vctbatch-9916-500703.raw_jaffle_shop.payment`