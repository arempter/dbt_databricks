{{
    config(
        tags='pii'
    )
}}

SELECT
* 
FROM
{{ source("landing", "users")}}