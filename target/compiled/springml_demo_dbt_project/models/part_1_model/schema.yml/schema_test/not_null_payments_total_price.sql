



select count(*) as validation_errors
from `prismatic-cider-279015`.`springml_demo_dataset`.`payments`
where total_price is null

