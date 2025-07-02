# SQL Query Optimization Report - Airbnb Clone Advanced Database

## Objective

Improve performance of a complex query that joins four major tables: `bookings`, `users`, `properties`, and `payments`.

## EXPLAIN Analysis (After)
Index scan used for user_id, property_id, and booking_id
JOINs are faster due to smaller result sets and indexed lookups
Total query cost significantly reduced

## Inefficiencies Identified:
1. No Indexes on Join Keys
2. LEFT JOIN on Payments Without Null Handling
3. Over-Selecting Columns