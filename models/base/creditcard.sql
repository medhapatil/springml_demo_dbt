{% set creditcards = ["Amex", "Mastercard", "Visa"] %}

select country,
{% for creditcard in creditcards %}
sum(case when payment_type = '{{creditcard}}' then 1 else 0 end) as {{creditcard}}_payments,
{% endfor %}
from {{ source('springml_demo_dataset','sales') }}
group by country 
having not (Amex_payments = 0 
and	Mastercard_payments = 0 
and	 Visa_payments = 0)
order by (Amex_payments + Mastercard_payments + Visa_payments) desc