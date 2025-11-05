{{
    config(
        materialized='table'
    )
}}
WITH BIKE as (


     select distinct
     START_STATIO_ID as station_id,
    start_station_name as station_name,
    start_lat as station_lat,
    start_lng as start_station_lng
    from {{ ref('stg_bike') }}
    
)
select * from BIKE