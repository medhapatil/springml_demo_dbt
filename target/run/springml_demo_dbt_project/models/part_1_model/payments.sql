

  create or replace view `prismatic-cider-279015`.`springml_demo_dataset`.`payments`
  OPTIONS()
  as select payment_type, 
    count(*) as number_of_payments, 
    sum(price) as total_price 
from `prismatic-cider-279015`.`springml_demo_dataset`.`sales`
where country like "United States"
group by payment_type;

