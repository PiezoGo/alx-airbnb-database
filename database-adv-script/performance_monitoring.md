# 📊 Continuous Query Performance Monitoring Report

## 🎯 Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments based on query behavior.

---

## 🛠️ Step 1: Monitoring Tools Used

- **PostgreSQL:** `EXPLAIN ANALYZE`
- **MySQL:** `SHOW PROFILE`

---

## 🔍 Step 2: Monitored Query

```sql
SELECT 
  Booking.booking_id,
  Property.name AS property_name,
  User.first_name,
  User.last_name
FROM Booking
JOIN Property ON Booking.property_id = Property.property_id
JOIN User ON Booking.user_id = User.user_id
WHERE Booking.start_date BETWEEN '2025-01-01' AND '2025-03-01';
