select
    CURRENT_DATE() as Ingestion_date, 
    countif(source.Gender is not null and source.Gender = "F") as Female_count,
    countif(source.Gender is not null and source.Gender = "M") as Male_count,
from 
    {{ source('springml_demo_dataset','applicant_data') }} as source