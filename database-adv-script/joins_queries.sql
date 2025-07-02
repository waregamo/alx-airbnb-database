-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
USE airbnb_db;

SELECT 
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    bookings.status,
    users.user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id;


-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.property_id,
    properties.name,
    properties.description,
    properties.location,
    reviews.review_id,
    reviews.rating,
    reviews.comment,
    reviews.user_id
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id;


-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- MySQL workaround using UNION of LEFT and RIGHT JOIN
SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM bookings
LEFT JOIN users ON bookings.user_id = users.user_id;
