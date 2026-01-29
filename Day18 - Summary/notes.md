# Day 18 – SQL Learning Summary

## Database Created

**Database Name:** `my_events`

### Tables

* `cities`
* `locations`
* `events`
* `users`
* `organizers`
* `tags`
* `events_tags` (linking table)
* `events_users` (linking table)

---

## 1. What Is SQL?

SQL (Structured Query Language) is used to **create, read, update, and delete data** in relational databases.

---

## 2. Databases – Core Concepts

* A **database** stores structured data
* Data is organized into **tables**
* Tables contain **rows (records)** and **columns (fields)**
* Relationships connect tables logically

---

## 3. Core SQL Syntax

```sql
CREATE DATABASE my_events;
USE my_events;
```

Common commands:

* `CREATE`
* `INSERT`
* `SELECT`
* `UPDATE`
* `DELETE`

---

## 4. Data Normalization

Normalization avoids **data redundancy** and improves consistency.

### Normal Forms Used

* 1NF – Atomic values
* 2NF – No partial dependency
* 3NF – No transitive dependency

---

## 5. Planning Tables & Relationships

Before coding:

* Identify entities (events, users, cities)
* Define relationships
* Choose primary & foreign keys

---

## 6. Creating Tables & Defining Columns

```sql
CREATE TABLE cities (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);
```

---

## 7. Important Data Types

* `INT` – Numbers
* `VARCHAR(n)` – Text
* `TEXT` – Large text
* `DATE`, `TIME`, `TIMESTAMP`
* `BOOLEAN`

---

## 8. Storing Files

* Files are stored as **paths or URLs**
* Avoid storing raw files in DB

---

## 9. Constraints

Constraints maintain data integrity:

* `PRIMARY KEY`
* `FOREIGN KEY`
* `UNIQUE`
* `NOT NULL`
* `CHECK`

---

## 10. Primary Keys & Unique IDs

* Each table has a **unique identifier**
* Mostly `AUTO_INCREMENT`

---

## 11. Inserting Data

```sql
INSERT INTO users (name, email)
VALUES ('John', 'john@test.com');
```

---

## 12. Basic Querying (SELECT)

```sql
SELECT * FROM events;
SELECT name FROM cities;
```

---

## 13. UPDATE & DELETE

```sql
UPDATE users SET name='Alex' WHERE id=1;
DELETE FROM users WHERE id=3;
```

---

## 14. Filtering & Sorting

```sql
SELECT * FROM events
WHERE date > '2025-01-01'
ORDER BY date DESC;
```

---

## 15. Relationships & Foreign Keys

```sql
FOREIGN KEY (city_id)
REFERENCES cities(id)
```

---

## 16. ON DELETE & ON UPDATE

* `CASCADE`
* `SET NULL`
* `RESTRICT`

Controls what happens to related data.

---

## 17. Many-to-Many Relationships

Implemented using **linking tables**:

* `events_tags`
* `events_users`

---

## 18. Inserting Related Data

```sql
INSERT INTO events_tags (event_id, tag_id)
VALUES (1, 2);
```

---

## 19. INNER JOIN

```sql
SELECT events.name, locations.address
FROM events
INNER JOIN locations
ON events.location_id = locations.id;
```

---

## 20. LEFT JOIN

```sql
SELECT users.name, events.title
FROM users
LEFT JOIN events_users
ON users.id = events_users.user_id;
```

---

## 21. Filtering Text (LIKE)

```sql
SELECT * FROM events
WHERE title LIKE '%music%';
```

---

## 22. Aggregate Functions

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

---

## 23. GROUP BY

```sql
SELECT city_id, COUNT(*)
FROM locations
GROUP BY city_id;
```

---

## 24. HAVING vs WHERE

* `WHERE` → filters rows
* `HAVING` → filters groups

```sql
SELECT city_id, COUNT(*)
FROM locations
GROUP BY city_id
HAVING COUNT(*) > 1;


**Day 18 Focus:** Strong SQL foundations + real database design
