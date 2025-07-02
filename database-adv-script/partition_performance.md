# Partitioning Performance Report - Airbnb Clone Advanced Database

## Objective

Optimize query performance on the `bookings` table using **partitioning** by `start_date`.

## Partitioning Strategy

I created a new table `bookings_partitioned` with **RANGE partitioning** based on the year extracted from the `start_date` column:

```sql
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
