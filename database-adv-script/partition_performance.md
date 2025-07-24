# 📊 Partitioning Performance Report

## 🎯 Objective

Optimize query performance on the large `Booking` table by implementing table partitioning based on the `start_date` column.

---

## 🛠️ Partitioning Strategy

We implemented **range partitioning** using the `start_date` field. The new `Booking` table is partitioned by year (2022–2025), enabling the database engine to scan only relevant partitions when querying by date.

---

## 🧪 Performance Testing

### 🔍 Test Query

```sql
SELECT * 
FROM Booking 
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
