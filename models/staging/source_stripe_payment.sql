{{ config(materialized='view') }}

SELECT

    id AS payment_id,

    orderid AS order_id,

    LOWER(paymentmethod) AS payment_method,

    LOWER(status) AS payment_status,

    amount

FROM {{ source('statging', 'payment_source') }}