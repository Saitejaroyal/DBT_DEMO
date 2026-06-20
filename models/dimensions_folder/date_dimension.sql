with cte as
(
    select * from {{ source('bike', 'CITYBIKE_RIDES') }}
)
select 
started_at,
date(started_at) date,
day(started_at) day, 
month(started_at) month,
year(started_at) year,
hour(started_at) hour,
minute(started_at) minute,
second(started_at) second,
week(started_at) week,
dayname(started_at) day_name,
dayofweek(started_at) day_of_week,
case when day_name in ('Sat','Sun')
then 'WEEKEND'
else 'BUSINESS_DAY' end day_type
from cte 