# Entity-Relationship (ER) diagram
## ENTITIES
Entities in this database will include:
###  User
 : whose attributes are as follows
        - user_id: Primary Key, UUID, Indexed
        - first_name: VARCHAR, NOT NULL
        - last_name: VARCHAR, NOT NULL
        - email: VARCHAR, UNIQUE, NOT NULL
        - password_hash: VARCHAR, NOT NULL
        - phone_nphone_numberumber: VARCHAR, NULL
        - role: ENUM (guest, host, admin), NOT NULL
        - created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
### Property
 : whose attributes are as follows
        - property_id: Primary Key, UUID, Indexed
        - host_id: Foreign Key, references User(user_id)
        - name: VARCHAR, NOT NULL
        - description: TEXT, NOT NULL
        - location: VARCHAR, NOT NULL
        - pricepernight: DECIMAL, NOT NULL
        - created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
        - updated_at: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP
### Booking
 : whose attributes are as follows
        - booking_id: Primary Key, UUID, Indexed
        - property_id: Foreign Key, references Property(property_id)
        - user_id: Foreign Key, references User(user_id)
        - start_date: DATE, NOT NULL
        - end_date: DATE, NOT NULL
        - total_price: DECIMAL, NOT NULL
        - status: ENUM (pending, confirmed, canceled), NOT NULL
        - created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
### Payment
 : whose attributes are as follows
        - payment_id: Primary Key, UUID, Indexed
        - booking_id: Foreign Key, references Booking(booking_id)
        - amount: DECIMAL, NOT NULL
        - payment_date: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
        - payment_method: ENUM (credit_card, paypal, stripe), NOT NULL
### Review
  : whose attributes are as follows
        - review_id: Primary Key, UUID, Indexed
        - property_id: Foreign Key, references Property(property_id)
        - user_id: Foreign Key, references User(user_id)
        - rating: INTEGER, CHECK: rating >= 1 AND rating <= 5, NOT NULL
        - comment: TEXT, NOT NULL
        - created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
### Message
 : whose attributes are as follows
        - message_id: Primary Key, UUID, Indexed
        - sender_id: Foreign Key, references User(user_id)
        - recipient_id: Foreign Key, references User(user_id)
        - message_body: TEXT, NOT NULL
        - sent_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP


## RELATIONSHIPS
    User to property: One to many relationship since one user can own many properties
    Property to booking: One to many relationship since one property can have many booking
    User to payment: one to many since one payment can incorparate for many bookings made
    User to booking: one to many one user can make many bookings at a single time
    Booking to payment: one to one relationship
    User to message: one to many since a user can send many messages, and receive many messages
    Property to review: one to many relationship since a property can have multiple reviews


## 📊 Entity-Relationship Diagram

The following diagram illustrates the relationships between key entities in our Airbnb-style property rental system:

![ER Diagram](ERDairbnbdatabase.drawio)
