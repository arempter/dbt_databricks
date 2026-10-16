{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

SELECT 
*
FROM 
{{ source("landing", "orders")}}

{% if is_incremental() %}

WHERE created_at > (select coalesce(max(created_at), '1900-01-01') as max_date from {{ this }})

{% endif %}