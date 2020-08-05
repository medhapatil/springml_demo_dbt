

  create or replace table `prismatic-cider-279015`.`springml_demo_dataset`.`gender_count`
  
  
  OPTIONS()
  as (
    SELECT 
CURRENT_DATE() as Ingestion_date, 
countif(ad.Gender is not null and ad.Gender="F" ) as Female_count,
countif(ad.Gender is not null and ad.Gender="M" ) as Male_count,
FROM `prismatic-cider-279015`.`springml_demo_dataset`.`applicant_data` as ad
  );
    