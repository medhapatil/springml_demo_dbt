




with all_values as (

    select distinct
        payment_type as value_field

    from `prismatic-cider-279015`.`springml_demo_dataset`.`payments`

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        'Mastercard','Amex','Visa','Diners'
    )
)

select count(*) as validation_errors
from validation_errors

