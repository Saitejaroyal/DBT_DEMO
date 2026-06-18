select * from {{ source('bike', 'CITYBIKE_RIDES') }}
limit 10