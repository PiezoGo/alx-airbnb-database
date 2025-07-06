SELECT Property.property_id, Property.name, Property.location, Property.pricepernight
FROM Property
JOIN Review ON Property.property_id = Review.property_id
GROUP BY Property.property_id
HAVING
AVG(Review.rating) > 4.0;

SELECT *
FROM `User` 
WHERE (
    SELECT COUNT(*)
    FROM Booking 
    WHERE Booking.user_id = `User`.user_id
) > 3;
