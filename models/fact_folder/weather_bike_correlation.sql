with cte as
(
    select 
    *
    from
    {{ ref('trip_fact') }} t 
    inner join {{ ref('daily_weather') }} w 
    on t.TRIP_DATE = w.DAILY_WEATHER
    limit 10
)
select * from cte