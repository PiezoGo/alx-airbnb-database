-- Active: 1751746574894@@127.0.0.1@3306@ALX_AirBnB
SELECT * FROM Booking 
INNER JOIN User 
ON User.user_id = Booking.user_id;

SELECT * FROM Property 
LEFT JOIN Review 
ON Property.property_id = Review.property_id
ORDER BY name;

SELECT * FROM `User` 
FULL OUTER JOIN Booking 
ON `User`.created_at = Booking.created_at;