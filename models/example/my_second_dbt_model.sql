
-- Use the `ref` function to select from other models

{{config(schema='staging' ,alias='secound_table')}}
select *
from {{ ref('my_first_dbt_model') }}
where id = 1
