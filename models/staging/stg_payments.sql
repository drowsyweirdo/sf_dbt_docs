with raw as(

    select * from {{source('snowflake source' , 'raw_payments')}}

)
limit 10