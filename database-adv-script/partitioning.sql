-- Step 1: Create a partitioned copy of the bookings table
CREATE TABLE bookings_partitioned (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);


-- Fetch bookings in the year 2022.
EXPLAIN SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2022-01-01' AND '2022-12-31';
