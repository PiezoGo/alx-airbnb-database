-- Step 1: Rename the original Booking table
ALTER TABLE Booking RENAME TO Booking_old;

-- Step 2: Create a new partitioned Booking table
CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    property_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    -- Add other columns as necessary
    CHECK (start_date IS NOT NULL)
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions for each year (example: 2022–2025)
CREATE TABLE Booking_2022 PARTITION OF Booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 4: Insert data from old table to the new one
INSERT INTO Booking (booking_id, user_id, property_id, start_date, end_date, status)
SELECT booking_id, user_id, property_id, start_date, end_date, status
FROM Booking_old;

-- (Optional) Drop old table
-- DROP TABLE Booking_old;
