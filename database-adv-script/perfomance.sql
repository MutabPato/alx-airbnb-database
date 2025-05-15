SELECT booking.*, users.first_name, users.last_name, users.email, users.phone_number, property.name, property.description, property.location, payment.payment_method FROM booking 
LEFT JOIN users ON booking.user_id = users.id 
LEFT JOIN property ON booking.property_id = property.id
LEFT JOIN payment ON booking.id = payment.booking_id;