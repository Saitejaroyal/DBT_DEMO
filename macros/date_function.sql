{% macro season_definer(x)%}
case 
    when {{x}} in (12,1,2)
        then 'WINTER'
    when {{x}} in (3,4,5)
        then 'SUMMER'
    when {{x}} in (6,7,8)
        then 'RAINY'
else 'AUTUMN' end 
{% endmacro %}

{% macro day_type(x) %}
case 
    when {{x}} in ('Sat','Sun')
        then 'WEEKEND'
else 'BUSINESS_DAY' end 
{% endmacro %}