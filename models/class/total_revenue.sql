select orderid, sum(amount) as toatal_amount
from `vctbatch-9916-500703.raw_stripe.payment`
group by orderid

select * from {{ref('tickets')}}

select * from {{ref('snapshot_tickets_check')}} order by ticket_id asc 