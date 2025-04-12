with raw as(

    select * from {{source('snowflake source' , 'raw_payments')}}

),

final as(
 SELECT  
)
SELECT * from finale