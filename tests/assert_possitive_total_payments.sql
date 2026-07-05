select 
  ORDERID,
  sum(AMOUNT) as total_payment
from  `vctbatch-9916-500703.raw_jaffle_shop.payment`
group by ORDERID  having total_payment<0