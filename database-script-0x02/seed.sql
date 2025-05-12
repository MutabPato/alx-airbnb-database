INSERT INTO users (first_name, last_name, email, password_hash, phone_number, role)
VALUES
('Alice', 'Smith', 'alice@example.com', 'hash123Alice!', '0700111222', 'guest'),
('Bob', 'Johnson', 'bob@example.com', 'hashBob456!', '0711222333', 'host'),
('Claire', 'Williams', 'claire@example.com', 'hashClaire789!', '0722333444', 'host'),
('David', 'Brown', 'david@example.com', 'passDavid!', '0733444555', 'guest'),
('Eva', 'Taylor', 'eva@example.com', 'evaHashPass!', '0744555666', 'admin');

INSERT INTO property (host_id, name, description, location, pricepernight)
VALUES
(3, 'Ocean Breeze', 'Beachside apartment', 'Diani', 4000.00),
(3, 'Mountain Escape', 'Cabin with scenic views', 'Naivasha', 3000.00),
(5, 'City Center Loft', 'Modern flat in CBD', 'Nairobi', 5000.00),
(2, 'Lush Garden Retreat', 'Quiet home with garden', 'Karen', 2500.00);

INSERT INTO booking (property_id, user_id, start_date, end_date, total_price, status)
VALUES
(3, 1, '2025-06-01', '2025-06-05', 16000.00, 'confirmed'),
(4, 4, '2025-06-10', '2025-06-15', 15000.00, 'pending'),
(1, 1, '2025-06-20', '2025-06-23', 15000.00, 'cancelled'),
(2, 2, '2025-07-01', '2025-07-03', 6000.00, 'confirmed');

INSERT INTO payment (booking_id, amount, payment_method)
VALUES
(2, 10500.00, 'paypal'),
(3, 16000.00, 'credit_card'),
(4, 15000.00, 'mobile_money'),
(1, 15000.00, 'credit_card'),
(2, 6000.00, 'mobile_money');

INSERT INTO review (property_id, user_id, rating, comment)
VALUES
(3, 1, 4, 'Amazing view and great stay'),
(4, 4, 3, 'Nice place but a bit noisy'),
(1, 1, 5, 'Super clean and modern'),
(2, 2, 4, 'Perfect for a weekend getaway');

INSERT INTO message (sender_id, recipient_id, message_body)
VALUES
(4, 3, 'Is early check-in allowed?'),
(3, 4, 'Yes, anytime after 11 AM'),
(1, 5, 'Can I bring a pet?'),
(5, 1, 'Unfortunately, no pets allowed.'),
(2, 3, 'Is parking available?'),
(3, 2, 'Yes, secure parking is included.');