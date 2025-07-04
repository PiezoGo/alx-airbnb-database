INSERT INTO User (
    user_id, first_name, last_name, email, password_hash, phone_number, role
) VALUES (2,'James', 'Bee', 'KipsoiJames@gmail.com', '@@#$dui', 0727678685,'host'),
(3,'Lena', 'Ochine', 'OchineLena@gmail.com', 'oCHIN#@ENA', 0727889085,'guest'),
(4,'Ebe', 'Ojo', 'OjoEbe@gmail.com', 'EBEl*&E43', 0721234585,'guest');

INSERT INTO Property (
    property_id, host_id, name, description, location, pricepernight 
) VALUES (78, 1, 'BUngalow', 'This is a very big house', 'Ruiru', 500.30),
(79, 2, 'Car', 'Have some shrimps and fried ribs in th car', 'Ruiru', 2500.30),
(80, 3, 'Motel', 'This is a Room in a very nice hotel', 'Kisumu', 5500.30),
(81, 4, 'ClubHouse', 'Serene place to chill with friend', 'Kiambu', 1500.30);

INSERT INTO Booking(
    booking_id, property_id, user_id, start_date, end_date, total_price,status
) VALUES(2341,79,1,'2024-01-24','2025-05-24',50000,'Confirmed'),
(2398,79,2,'2022-02-23','2023-12-25',50000,'Canceled'),
(2374,79,3,'2023-07-20','2024-02-25',50000,'Pending');

INSERT INTO Payment(
    payment_id, booking_id, amount, payment_method
) VALUES(456789,2341,50000,'credit_card'),
(234565,2398,250000,'paypal'),
(345678,2374,50000,'stripe');

INSERT INTO Review(
    review_id, property_id, user_id, rating,comment
) VALUES(89,79,2,5,'I must ssay that the house you lent to me was nice'),
(90,80,3,4,'I must ssay that the room you lent to me was nice'),
(91,81,4,3,'I must ssay that the plot you lent to me was nice');


INSERT INTO Message(
    message_id, sender_id, recipient_id, message_body
) VALUES(001,1,2,'I must ssay that the house you lent to me was nice'),
(002,2,3,'I must ssay that the room you lent to me was nice'),
(003,3,4,'I must ssay that the plot you lent to me was nice');

Select * FROM Booking
;
