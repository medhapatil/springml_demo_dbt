

  create or replace table `prismatic-cider-279015`.`springml_demo_dataset`.`redact_fields`
  
  
  OPTIONS()
  as (
    with source as (
	select * 
	from
		`prismatic-cider-279015`.`springml_demo_dataset`.`applicant_data`
),

casted as (
	select
		Employee_no as Emp_no,
		cast(Phone_no as string),
		cast(Social_insurance_no as string)
	from source
),

casted_redacted as (
	select
		Emp_no,
		'##ARCHIVED##' as Phone_no,
		'##ARCHIVED##' as Social_insurance_no
	from casted
),

redacted as (
	select
		Employee_no,
		'##ARCHIVED##' as Surname,
		'##ARCHIVED##'as Given_name,
		Gender,
		City,
		Age,
		Year_joined
	from	
		source
)

select 
	redacted.Employee_no,
	redacted.Surname,
	redacted.Given_name,
	redacted.Gender,
	redacted.City,
	redacted.Age,
	redacted.Year_joined,
	casted_redacted.Phone_no,
	casted_redacted.Social_insurance_no
from 
	redacted
join 
	casted_redacted 
		on redacted.Employee_no = casted_redacted.Emp_no
  );
    