
CREATE TABLE User (
    user_id VARCHAR(50) PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role VARCHAR(10) NOT NULL CHECK (role IN ('guest','host','admin')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Property (
    property_id VARCHAR(50) PRIMARY KEY,
    host_id VARCHAR(30),
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(50) NOT NULL,
    pricepernight DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CU
CREATE TABLE User (
    user_id VARCHAR(50) PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role VARCHAR(10) NOT NULL CHECK (role IN ('guest','host','admin')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Property (
    property_id VARCHAR(50) PRIMARY KEY,
    host_id VARCHAR(30),
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(50) NOT NULL,
    pricepernight DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
     CONSTRAINT FK_Property_host_id FOREIGN KEY (host_id) REFERENCES User(user_id)
);

CREATE TABLE Booking (
    booking_id VARCHAR(50) PRIMARY KEY,
    property_id VARCHAR(50),
    user_id VARCHAR(50) ,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL CHECK (status IN ('Pending', 'Confirmed', 'Canceled')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_Booking_property_id FOREIGN KEY (property_id) REFERENCES Property(property_id),
    CONSTRAINT FK_Booking_user_id FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Payment (
    payment_id VARCHAR(50) PRIMARY KEY,
    booking_id VARCHAR(50) ,
    amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(30) NOT NULL CHECK (payment_method IN ('credit_card', 'paypal', 'stripe')),
    CONSTRAINT FK_Payment_booking_id FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

CREATE TABLE Review (
    review_id VARCHAR(50) PRIMARY KEY,
    property_id VARCHAR(50) ,
    user_id VARCHAR(50) ,
    rating TINYINT NOT NULL CHECK (rating>=1 AND rating <=5),
    comment TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_Review_property_id FOREIGN KEY (property_id) REFERENCES Property(property_id),
    CONSTRAINT FK_Review_user_id FOREIGN KEY (user_id) REFERENCES User(user_id)   
);

CREATE TABLE Message (
    message_id VARCHAR(50) PRIMARY KEY,
    sender_id VARCHAR(50) ,
    recipient_id VARCHAR(50) ,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_Message_sender_id FOREIGN KEY (sender_id) REFERENCES User(user_id),
    CONSTRAINT FK_Message_recipient_id FOREIGN KEY (recipient_id) REFERENCES User(user_id)
);

RRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
     CONSTRAINT FK_Property_host_id FOREIGN KEY (host_id) REFERENCES User(user_id)
);

CREATE TABLE Booking (
    booking_id VARCHAR(50) PRIMARY KEY,
    property_id VARCHAR(50),
    user_id VARCHAR(50) ,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL CHECK (status IN ('Pending', 'Confirmed', 'Canceled')),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_Booking_property_id FOREIGN KEY (property_id) REFERENCES Property(property_id),
    CONSTRAINT FK_Booking_user_id FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Payment (
    payment_id VARCHAR(50) PRIMARY KEY,
    booking_id VARCHAR(50) ,
    amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(30) NOT NULL CHECK (payment_method IN ('credit_card', 'paypal', 'stripe')),
    CONSTRAINT FK_Payment_booking_id FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

CREATE TABLE Review (
    review_id VARCHAR(50) PRIMARY KEY,
    property_id VARCHAR(50) ,
    user_id VARCHAR(50) ,
    rating TINYINT NOT NULL CHECK (rating>=1 AND rating <=5),
    comment TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_Review_property_id FOREIGN KEY (property_id) REFERENCES Property(property_id),
    CONSTRAINT FK_Review_user_id FOREIGN KEY (user_id) REFERENCES User(user_id)   
);

CREATE TABLE Message (
    message_id VARCHAR(50) PRIMARY KEY,
    sender_id VARCHAR(50) ,
    recipient_id VARCHAR(50) ,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_Message_sender_id FOREIGN KEY (sender_id) REFERENCES User(user_id),
    CONSTRAINT FK_Message_recipient_id FOREIGN KEY (recipient_id) REFERENCES User(user_id)
);

