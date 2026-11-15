{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

SELECT 
*
FROM 
{{ source("landing", "raw_orders")}}

{% if is_incremental() %}

WHERE ordered_at > (select coalesce(max(ordered_at), '1900-01-01') as max_date from {{ this }})

{% endif %}