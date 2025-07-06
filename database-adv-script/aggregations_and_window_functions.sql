SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;


SELECT 
    p.property_id,
    p.host_id,
    p.name,
    p.description,
    p.location,
    p.pricepernight,
    COALESCE(b.total_bookings, 0) AS total_bookings,
    RANK() OVER (ORDER BY COALESCE(b.total_bookings, 0) DESC) AS `Rank`
FROM 
    Property p
LEFT JOIN (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        Booking
    GROUP BY 
        property_id
) b ON p.property_id = b.property_id;