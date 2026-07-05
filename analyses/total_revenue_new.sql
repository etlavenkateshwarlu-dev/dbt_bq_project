with payments as 
(
     select * from {{ ref('stg_payments') }}
      ), aggregated as ( 
        select sum(amount) as total_revenue from payments 
        where payment_status = 'success' ) 

select * from aggregated


select * from {{ref('employeeid')}}

select * from {{ref('employees')}}

select * from {{ref('customer_anlasys_test_new')}}