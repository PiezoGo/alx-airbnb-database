
EXPLAIN ANALYSE 
SELECT *
FROM Booking
JOIN User
  ON Booking.user_id = User.user_id
JOIN Property 
  ON Booking.property_id = Property.property_id
LEFT JOIN Payment
  ON Booking.booking_id = Payment.booking_id;



SELECT 
  Booking.booking_id,
  Booking.start_date,
  Booking.end_date,
  Booking.property_id,
  
  User.first_name,
  User.last_name,
  User.email,
  
  Property.name AS property_name,
  Property.location,
  Property.pricepernight,

  Payment.amount,
  Payment.payment_method,
  Payment.payment_date

FROM Booking
JOIN User
  ON Booking.user_id = User.user_id
JOIN Property 
  ON Booking.property_id = Property.property_id
LEFT JOIN Payment
  ON Booking.booking_id = Payment.booking_id;