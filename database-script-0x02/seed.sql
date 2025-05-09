INSERT INTO User (first_name, last_name, email, password_hash, phone_number, role)
VALUES
('John', 'Doe', 'johndoe@example.com', 'passHash123!', '0712345678', 'host'),
('Jane', 'Doe', 'janedoe@example.com', 'passHash456!', '0798765432', 'guest'),
('Jake', 'Paul', 'jakepaul@example.com', 'passHash789!', '07111000222', 'admin'); 

INSERT INTO Property (host_id, name, description , location, pricepernight)
VALUES
(1, 'Nested in Heaven', 'Beautiful flat', 'Nairobi', 2000.00),
(2, 'Cozy Home', '1 bedroom condo', 'Mombasa', 3500.00);

INSERT INTO Booking (property_id, user_id, start_date, end_date, total_price, status)
VALUES
(1, 2, '2025-05-10', '2025-05-14', 8000.00, 'confirmed'),
(2, 2, '2025-05-20', '2025-05-23', 10500.00, 'pending');

INSERT INTO Payment (booking_id, amount, payment_method)
VALUES
(1, 8000.00, 'credit_card');

INSERT INTO Review (property_id, user_id, rating, comment)
VALUES
(1, 2, 5, 'Lovely'),
(2, 2, 4, 'Great host');

INSERT INTO Message (sender_id, recipient_id, message_body)
VALUES
(2, 1, 'Is it available from 20th to 25th?'),
(1, 2, 'Yes, please feel free to book');

