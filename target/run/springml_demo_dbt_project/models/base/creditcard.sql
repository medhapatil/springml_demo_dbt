

  create or replace view `prismatic-cider-279015`.`springml_demo_dataset`.`creditcard`
  OPTIONS()
  as 

select country,

sum(case when payment_type = 'Amex' then 1 else 0 end) as Amex_payments,

sum(case when payment_type = 'Mastercard' then 1 else 0 end) as Mastercard_payments,

sum(case when payment_type = 'Visa' then 1 else 0 end) as Visa_payments,

from `prismatic-cider-279015`.`springml_demo_dataset`.`sales`
group by country 
order by (Amex_payments+Mastercard_payments+Visa_payments) desc;

