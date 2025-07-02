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
