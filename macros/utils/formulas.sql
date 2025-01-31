{% macro percentage_formula(summation, total) %}
    ( 
        cast({{ summation }} as {{ numeric_type() }})
    ) / 
    nullif(
        cast( {{ total }} as {{ numeric_type() }} )
    , 0) * 100.0
{% endmacro %}