SELECT 
CURRENT_DATE() as Ingestion_date, 
countif(ad.Gender is not null and ad.Gender="F" ) as Female_count,
countif(ad.Gender is not null and ad.Gender="M" ) as Male_count,
FROM {{ source('springml_demo_dataset','applicant_data') }} as ad