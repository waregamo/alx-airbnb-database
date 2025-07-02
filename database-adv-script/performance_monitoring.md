# 📊 SQL Performance Monitoring Report
**Project:** ALX Airbnb Clone - Advanced Database  
**Directory:** `database-adv-script`  
**File:** `performance_monitoring.md`  
**Objective:** Monitor and optimize SQL query performance using EXPLAIN and SHOW PROFILE.

---

## ✅ Tools Used

- **EXPLAIN**: Analyzes and displays how MySQL executes a query.
- **SHOW PROFILE** (MySQL-specific): Measures CPU, memory, and I/O usage for a query.
- **Indexes**: Created to improve the performance of frequently executed queries.

---

## 🔍 Query 1: Retrieve Bookings by User ID

### Query:
```sql
SELECT * FROM bookings WHERE user_id = 5;
