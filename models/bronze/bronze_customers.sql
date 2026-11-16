{{
    config(
        tags='pii'
    )
}}

SELECT
* 
FROM
{{ source("landing", "raw_customers")}}