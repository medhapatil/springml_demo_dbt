select payment_type, 
    count(*) as number_of_payments, 
    sum(price) as total_price 
from {{ source('springml_demo_dataset','sales') }}
where country like "United States"
group by payment_type