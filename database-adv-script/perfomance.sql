EXPLAIN ANALYZE SELECT 
booking.*,
users.first_name,
users.last_name, 
users.email, 
users.phone_number, 
property.name, 
property.description, 
property.location, 
payment.payment_method 
FROM booking, users, property, payment
WHERE booking.user_id = users.id 
AND booking.property_id = property.id
AND booking.id = payment.booking_id;