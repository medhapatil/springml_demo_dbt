-- Making sure that there are no countries that have zero payments in all three credit cards

select country
from {{ ref('creditcard' )}}
where Amex_payments = 0 
and	Mastercard_payments = 0 
and	 Visa_payments = 0
