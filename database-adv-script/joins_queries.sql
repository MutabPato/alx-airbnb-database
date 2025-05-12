SELECT booking.id, users.first_name FROM booking INNER JOIN users ON booking.user_id=users.id;
SELECT property.name, review.comment FROM property LEFT JOIN review ON property.id=review.property_id;
SELECT users.first_name, booking.id FROM users FULL OUTER JOIN booking ON users.id = booking.
user_id;