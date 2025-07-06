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
    RANK() OVER(ORDER BY host_id DESC) AS `Rank`
FROM 
    Property;
