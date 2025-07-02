-- Create indexes on high-usage columns
CREATE INDEX idx_booking_start_date ON bookings(start_date);
CREATE INDEX idx_booking_user_id ON bookings(user_id);
CREATE INDEX idx_booking_property_id ON bookings(property_id);
CREATE INDEX idx_payment_amount ON payments(amount);

-- Measure query performance AFTER indexing
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
