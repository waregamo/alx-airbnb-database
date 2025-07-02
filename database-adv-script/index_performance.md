# Indexing and Query Performance - Airbnb Clone Advanced Database

## Objective

Improve query performance by creating indexes on frequently used columns in `users`, `bookings`, `properties`, and `reviews` tables.

# 📈 Index Performance Report

This document compares the performance of a SQL query before and after indexing key columns in the `bookings`, `users`, `properties`, and `payments` tables.

---

## 🔍 Query Analyzed

```sql
EXPLAIN ANALYZE
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    
    users.name AS user_name,
    users.email AS user_email,
    
    properties.name AS property_name,
    properties.location,
    
    payments.amount,
    payments.payment_date
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id
WHERE bookings.start_date >= '2024-01-01'
AND payments.amount > 100;
