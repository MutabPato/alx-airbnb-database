CREATE TABLE booking_new (
    id SERIAL,
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status booking_status NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
) PARTITION BY RANGE (start_date); 

CREATE TABLE bookings_june_2025 PARTITION OF booking_new
FOR VALUES FROM ('2025-06-01') TO ('2025-06-30');

CREATE TABLE bookings_july_2025 PARTITION OF booking_new
FOR VALUES FROM ('2025-07-01') TO ('2025-07-31');

INSERT INTO booking_new (property_id, user_id, start_date, end_date, total_price, status)
VALUES
(3, 1, '2025-06-01', '2025-06-05', 16000.00, 'confirmed'),
(4, 4, '2025-06-10', '2025-06-15', 15000.00, 'pending'),
(1, 1, '2025-06-20', '2025-06-23', 15000.00, 'cancelled'),
(2, 2, '2025-07-01', '2025-07-03', 6000.00, 'confirmed');

