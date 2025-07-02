-- Create index on users.id 
CREATE INDEX idx_users_id ON users(id);

-- Create index on bookings.user_id since it's used in JOINs and GROUP BY
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id for JOINs and window functions
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.id for JOINs
CREATE INDEX idx_properties_id ON properties(id);

-- Create index on reviews.property_id for LEFT JOIN and filtering
CREATE INDEX idx_reviews_property_id ON reviews(property_id);



## Query Performance Analysis: Before and After Indexing

### Initial Query (Before Indexes)

EXPLAIN ANALYZE
SELECT ...
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
