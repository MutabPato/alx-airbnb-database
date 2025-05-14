SELECT user_id, COUNT(*) AS total_bookings FROM booking GROUP BY user_id;
SELECT property_id, RANK() OVER (PARTITION BY property_id) AS property_rank FROM booking;