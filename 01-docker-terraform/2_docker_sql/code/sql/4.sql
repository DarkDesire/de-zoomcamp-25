SELECT dropoff_zone."Zone" AS dropoff_zone,
    MAX(g.tip_amount) AS largest_tip
FROM green_taxi_data g
    JOIN taxi_zone_data pickup_zone ON g."PULocationID" = pickup_zone."LocationID"
    JOIN taxi_zone_data dropoff_zone ON g."DOLocationID" = dropoff_zone."LocationID"
WHERE DATE(g.lpep_pickup_datetime) BETWEEN '2019-10-01' AND '2019-10-31'
    AND pickup_zone."Zone" = 'East Harlem North'
GROUP BY dropoff_zone."Zone"
ORDER BY largest_tip DESC
LIMIT 1;