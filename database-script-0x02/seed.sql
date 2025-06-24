USE airbnb_db;

-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u001', 'Alice', 'wamboi', 'alice@example.com', 'hashed_pw1', '0711000000', 'guest'),
('u002', 'Bob', 'kibet', 'bob@example.com', 'hashed_pw2', '0722000000', 'host'),
('u003', 'Carol', 'Onyango', 'carol@example.com', 'hashed_pw3', '0733000000', 'host'),
('u004', 'Dave', 'Kimani', 'dave@example.com', 'hashed_pw4', '0744000000', 'guest');

-- Insert sample properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('p001', 'u002', 'Cozy Cottage', 'A peaceful countryside getaway.', 'Nairobi', 5000.00),
('p002', 'u003', 'Modern Apartment', 'Stylish flat with city views.', 'Mombasa', 7000.00);

-- Insert sample bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b001', 'p001', 'u001', '2025-07-01', '2025-07-03', 10000.00, 'confirmed'),
('b002', 'p002', 'u004', '2025-07-05', '2025-07-07', 14000.00, 'pending');

-- Insert sample payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('pay001', 'b001', 10000.00, 'credit_card'),
('pay002', 'b002', 14000.00, 'paypal');

-- Insert sample reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('r001', 'p001', 'u001', 5, 'Amazing stay, would recommend!'),
('r002', 'p002', 'u004', 4, 'Nice apartment but a bit noisy.');

-- Insert sample messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('m001', 'u001', 'u002', 'Hi, is the cottage available on July 1st?'),
('m002', 'u002', 'u001', 'Yes, it is available. Go ahead and book.');
