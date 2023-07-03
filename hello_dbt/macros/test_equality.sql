{% macro test_equality(model, compare_model) %} 
(
{%- if target.name == 'dev' -%}
    SELECT * FROM (
            (SELECT * FROM {{ model }} EXCEPT SELECT * FROM {{ compare_model }} )  
                UNION 
            (SELECT * FROM {{ compare_model }} EXCEPT SELECT * FROM {{ model }} )
        ) tmp
{%- else -%}
    SELECT * FROM {{ model }} LIMIT 0 
{%- endif -%}
) AS snapshot_test
{% endmacro %}