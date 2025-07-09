CREATE INDEX Inddex1 
on Property (property_id);

CREATE INDEX Index2
on Booking (property_id);

CREATE INDEX Index3
on User (user_id);

CREATE INDEX Index4
on User (created_at);

EXPLAIN ANALYZE SELECT property_id, total_bookings, 
RANK() OVER(ORDER BY total_bookings DESC) AS booking_cts
FROM 
(SELECT Booking.property_id,
COUNT(*) AS total_bookings
FROM `Booking` 
JOIN `Property`
ON `Booking`.property_id = `Property`.property_id
GROUP BY `Property`.property_id) AS booking_counts ;

