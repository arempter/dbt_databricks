SELECT
    id,
    split_part(name, " ", 1) as first_name, 
    split_part(name, " ", 2) as second_name
FROM
{{ ref("bronze_customers")}}    