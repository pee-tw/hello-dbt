WITH raw_people AS (
    SELECT
        *
    FROM
       {{ source('people', 'people') }}
)
SELECT
    *
FROM
    raw_people