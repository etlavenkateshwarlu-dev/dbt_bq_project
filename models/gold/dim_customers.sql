{{ config(materialized='table') }}

SELECT

    customer_id,

    first_name,

    last_name,

    CONCAT(first_name,' ',last_name) AS full_name

FROM {{ ref('stg_customers') }}