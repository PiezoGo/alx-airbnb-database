SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;


SELECT 
    property_id,
    host_id,
    name,
    description,
    location,
    pricepernight,
    ROW_NUMBER() OVER(ORDER BY total_bookings DESC) AS total_bookings
FROM (
    SELECT 
    user_id,
    COUNT(*) AS total_bookings
    FROM Booking  LEFT JOIN Property 
    ON Property.property_id = Booking.property_id
    );

SELECT property_id, total_bookings, 
ROW_NUMBER() OVER(ORDER BY total_bookings DESC) AS booking_cts
FROM 
(SELECT Booking.property_id,
COUNT(*) AS total_bookings
FROM `Booking` 
JOIN `Property`
ON `Booking`.property_id = `Property`.property_id
GROUP BY `Property`.property_id) AS booking_counts ;
