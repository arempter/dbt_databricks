SELECT
    id,
    created_at,
    city,
    state,
    year(birth_date),
    source as source_channel
FROM
{{ ref("bronze_users")}}    