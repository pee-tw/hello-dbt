WITH raw_people AS (
    SELECT
        *
    FROM
       {{ ref('raw_people') }}
)
SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    birth_year
FROM
    raw_people