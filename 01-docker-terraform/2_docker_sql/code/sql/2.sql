SELECT DATE(lpep_pickup_datetime) AS pickup_day,
    MAX(trip_distance) AS max_trip_distance
FROM green_taxi_data
GROUP BY DATE(lpep_pickup_datetime)
ORDER BY max_trip_distance DESC
LIMIT 1;