# Airbnb Database Normalization to 3NF

## Objective
Ensure the Airbnb database schema adheres to the **Third Normal Form (3NF)** by eliminating redundancy and ensuring data integrity.

---

## 1. First Normal Form (1NF)
**Definition:**  
- All attributes must contain atomic (indivisible) values.
- Each record must be unique.

**Schema Review:**  
✅ All fields such as `email`, `first_name`, `pricepernight`, etc., are atomic.  
✅ Tables have primary keys ensuring unique records.

✔️ **Conclusion:** The schema satisfies **1NF**.

---

## 2. Second Normal Form (2NF)
**Definition:**  
- Must be in 1NF.
- No partial dependency (non-key attributes must depend on the whole primary key).

**Schema Review:**  
✅ All primary keys are single-attribute (e.g., `user_id`, `booking_id`).  
✅ Non-key attributes in each table depend entirely on their table’s primary key.

✔️ **Conclusion:** The schema satisfies **2NF**.

---

## 3. Third Normal Form (3NF)
**Definition:**  
- Must be in 2NF.
- No transitive dependency (non-key attributes should not depend on other non-key attributes).

**Schema Review:**

### ✅ `users` Table
- All fields directly describe the user (`email`, `password_hash`, `role`) → no transitive dependencies.

### ✅ `properties` Table
- `host_id` is a foreign key; other fields describe the property only.

### ✅ `bookings` Table
- `total_price` is derived from `pricepernight * number of nights`, but kept for performance.

### ✅ `payments` Table
- All fields depend on `booking_id`.

### ✅ `reviews` Table
- `rating` and `comment` depend on the property-user relationship.

### ✅ `messages` Table
- `sender_id`, `recipient_id`, and `message_body` are all direct dependencies.

✔️ **Conclusion:** No transitive dependencies are present.

---

## Final Conclusion: ✅ Database is in 3NF

The current schema is well-normalized to **Third Normal Form (3NF)**. All entities:
- Have atomic attributes (1NF),
- Avoid partial dependencies (2NF),
- Avoid transitive dependencies (3NF).

---


