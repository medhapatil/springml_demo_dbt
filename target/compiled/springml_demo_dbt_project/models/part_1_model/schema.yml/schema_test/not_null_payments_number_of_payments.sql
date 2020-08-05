



select count(*) as validation_errors
from `prismatic-cider-279015`.`springml_demo_dataset`.`payments`
where number_of_payments is null

