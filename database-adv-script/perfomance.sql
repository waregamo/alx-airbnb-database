-- Initial query: Retrieve all bookings with user, property, and payment details

SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    
    users.id AS user_id,
    users.name AS user_name,
    users.email AS user_email,
    
    properties.id AS property_id,
    properties.name AS property_name,
    properties.location,
    
    payments.id AS payment_id,
    payments.amount,
    payments.payment_date,
    payments.payment_method
    
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id
WHERE bookings.start_date >= '2024-01-01'
AND payments.amount > 100;




-- Analyze Performance with EXPLAIN
EXPLAIN
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,

    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.phone_number,

    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,

    pay.payment_id,
    pay.amount,
    pay.payment_method,
    pay.payment_date

FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;


##The optimized query structure remains mostly the same
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,

    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.phone_number,

    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,

    pay.payment_id,
    pay.amount,
    pay.payment_method,
    pay.payment_date

FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;

