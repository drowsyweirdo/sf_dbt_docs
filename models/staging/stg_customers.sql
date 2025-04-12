with raw as(
    select * from {{source("snowflake source" , "raw_customers")}}
   
),

final as(

    SELECT ID AS Customer_ID,
    FIRST_NAME,
    LAST_NAME
    FROM raw
)

SELECT * FROM final