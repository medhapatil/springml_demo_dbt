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

casted_edited as (
	select
		Emp_no,
		'##ARCHIVED##' as Phone_no,
		'##ARCHIVED##' as Social_insurance_no
	from casted
),

edited as (
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

select edited.Employee_no,
edited.Surname,
edited.Given_name,
edited.Gender,
edited.City,
edited.Age,
edited.Year_joined,
casted_edited.Phone_no,
casted_edited.Social_insurance_no
from edited
join casted_edited on edited.Employee_no = casted_edited.Emp_no