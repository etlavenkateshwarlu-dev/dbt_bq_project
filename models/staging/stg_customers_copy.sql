{{ config(materialized='view') }}

SELECT

    id AS customer_id,

    TRIM(first_name) AS first_name,

    TRIM(last_name) AS last_name

FROM `vctbatch-9916-500703.raw_jaffle_shop.customers`