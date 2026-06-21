with bike as
(
    select 
    RIDE_ID,
    RIDEABLE_TYPE,
    date(STARTED_AT) trip_date,
    START_STATION_ID,
    END_STATION_ID,
    MEMBER_CASUAL,
    timestampdiff(minute,started_at,ended_at) as trip_days
    from
    {{ source('bike', 'CITYBIKE_RIDES') }}
)
select * from bike