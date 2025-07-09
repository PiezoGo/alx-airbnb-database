SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;

SELECT property_id, total_bookings, 
ROW_NUMBER() OVER(ORDER BY total_bookings DESC) AS booking_cts
FROM 
(SELECT Booking.property_id,
COUNT(*) AS total_bookings
FROM `Booking` 
JOIN `Property`
ON `Booking`.property_id = `Property`.property_id
GROUP BY `Property`.property_id) AS booking_counts ;


SELECT property_id, total_bookings, 
RANK() OVER(ORDER BY total_bookings DESC) AS booking_cts
FROM 
(SELECT Booking.property_id,
COUNT(*) AS total_bookings
FROM `Booking` 
JOIN `Property`
ON `Booking`.property_id = `Property`.property_id
GROUP BY `Property`.property_id) AS booking_counts ;
