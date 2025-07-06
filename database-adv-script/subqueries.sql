SELECT * FROM Property 
LEFT JOIN Review 
ON Property.property_id = Review.property_id
WHERE Review.rating > 4.0

SELECT *
FROM `User` u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id
) > 3;
