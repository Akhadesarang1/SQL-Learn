# Day 17 – SQL Indexes (Student Notes)

## 1. What are Indexes?
Indexes are database objects used to **speed up data retrieval**.  
They work like an index in a book, helping the database find rows faster without scanning the entire table.

---

## 2. How Indexes Work
- Indexes store column values in a structured way (mostly B-Tree).
- When a query uses an indexed column, the database performs an **Index Scan** instead of a **Sequential Scan**.
- This improves query performance for large datasets.

---

## 3. Disadvantages of Using Too Many Indexes
- Slows down **INSERT, UPDATE, DELETE** operations.
- Increases storage usage.
- Poor indexing strategy can cause **bad performance**.

**Conclusion:** Indexes should be used only when necessary.

---

## 4. Types of Indexes (Overview)
- **Single-column index**
- **Multi-column index**
- **Unique index**
- **Partial index** (index on specific rows only)

### Partial Index
- Created using a `WHERE` clause.
- Useful when only a subset of data is frequently queried.
- Improves performance and reduces index size.

---

## 5. Practical Work Done
- Created a new database and tables.
- Performed **CRUD operations** with indexes applied.
- Observed performance changes after indexing.

---

## 6. Using EXPLAIN and ANALYZE
- `EXPLAIN` shows the **query execution plan**.
- `ANALYZE` executes the query and shows **actual time and cost**.
- Used together to understand **what happens behind the scenes (BTS)**.

```sql
EXPLAIN ANALYZE SELECT * FROM table_name WHERE column_name = value;

-- ## 7.Performance Improvement Observation

Created indexes on frequently searched columns.

Observed:

Reduced scan time

Index Scan instead of Sequential Scan

Learned how to drop an index when not required.

DROP INDEX index_name;