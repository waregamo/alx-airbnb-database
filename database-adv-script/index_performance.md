# Indexing and Query Performance - Airbnb Clone Advanced Database

## Objective

Improve query performance by creating indexes on frequently used columns in `users`, `bookings`, `properties`, and `reviews` tables.

## Step 1: Identify High-Usage Columns

frequently used columns:

 Table       Column                Usage Context           

users       id                   JOIN, WHERE             
bookings    user_id              JOIN, GROUP BY          
bookings    property_id          JOIN, GROUP BY, RANK    
properties  id                   JOIN, WHERE             
reviews     property_id          LEFT JOIN, FILTERING    

## Step 2: Create Indexes

See `database_index.sql` for SQL statements used to create the indexes.

## Step 3: Measure Performance

### Sample Query (Before Index)
```sql
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;
