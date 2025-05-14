EXPLAIN ANALYZE SELECT booking.id, users.first_name FROM booking INNER JOIN users ON booking.user_id=users.id;

CREATE INDEX idx_first_name ON users(first_name);
CREATE INDEX idx_property_name ON property(name);
CREATE INDEX idx_start_date ON booking(start_date);

EXPLAIN ANALYZE SELECT booking.id, users.first_name FROM booking INNER JOIN users ON booking.user_id=users.id;
