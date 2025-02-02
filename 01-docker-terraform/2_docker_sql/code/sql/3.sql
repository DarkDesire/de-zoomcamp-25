SELECT g."PULocationID",
    z."Zone",
    z."service_zone",
    SUM(g.total_amount) AS total_amount_sum
FROM green_taxi_data g
    JOIN taxi_zone_data z ON g."PULocationID" = z."LocationID"
WHERE DATE(g.lpep_pickup_datetime) = '2019-10-18'
GROUP BY g."PULocationID",
    z."Borough",
    z."Zone",
    z."service_zone"
HAVING SUM(g.total_amount) > 13000
ORDER BY total_amount_sum DESC;