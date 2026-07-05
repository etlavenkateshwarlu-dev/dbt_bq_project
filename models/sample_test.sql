

{{ config(
    materialized='table' ,
    alias='transaction_tb',
    schema='my_schema'
    )}}


select 1 as id 
union all
select null as id