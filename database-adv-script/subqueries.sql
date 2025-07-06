SELECT * FROM Property 
LEFT JOIN Review 
ON Property.property_id = Review.property_id
WHERE Review.rating > 4.0

SELECT *
FROM `User` 
WHERE (
    SELECT COUNT(*)
    FROM Booking 
    WHERE Booking.user_id = `User`.user_id
) > 3;
