
SELECT  ORDERID,sum(AMOUNT) as toatal_amount 
FROM `vctbatch-9916-500703.raw_stripe.payment` group by ORDERID