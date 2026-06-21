with bike as
(
    select 
    distinct 
    START_STATION_ID,
    START_STATION_NAME,
    START_LAT,
    START_LNG
    from
    {{ source('bike', 'CITYBIKE_RIDES') }} 
)
select * from bike