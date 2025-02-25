/*
    What is the average distance (rounded to the nearest km) of all stations
    from Meyerson Hall? Your result should have a single record with a single
    column named avg_distance_km.
*/

SELECT
    ROUND(AVG(ST_Distance(
        ST_SetSRID(ST_MakePoint(longitude, latitude), 4326)::GEOGRAPHY,
        ST_SetSRID(ST_MakePoint(-75.192584, 39.952415), 4326)::GEOGRAPHY
    ) / 1000)) AS avg_distance_km
FROM
    indego.station_statuses;

