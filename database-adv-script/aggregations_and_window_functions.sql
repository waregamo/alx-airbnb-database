-- Total number of bookings made by each user
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM users
JOIN bookings ON bookings.user_id = users.id
GROUP BY users.id, users.name
ORDER BY total_bookings DESC;

--  Rank properties based on total number of bookings using window function
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;

