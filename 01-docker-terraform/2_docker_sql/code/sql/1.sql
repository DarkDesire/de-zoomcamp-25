SELECT SUM(
        CASE
            WHEN trip_distance <= 1 THEN 1
            ELSE 0
        END
    ) AS "Up to 1 mile",
    SUM(
        CASE
            WHEN trip_distance > 1
            AND trip_distance <= 3 THEN 1
            ELSE 0
        END
    ) AS "1-3 miles",
    SUM(
        CASE
            WHEN trip_distance > 3
            AND trip_distance <= 7 THEN 1
            ELSE 0
        END
    ) AS "3-7 miles",
    SUM(
        CASE
            WHEN trip_distance > 7
            AND trip_distance <= 10 THEN 1
            ELSE 0
        END
    ) AS "7-10 miles",
    SUM(
        CASE
            WHEN trip_distance > 10 THEN 1
            ELSE 0
        END
    ) AS "Over 10 miles"
FROM green_taxi_data
WHERE lpep_dropoff_datetime >= '2019-10-01'
    AND lpep_dropoff_datetime < '2019-11-01';