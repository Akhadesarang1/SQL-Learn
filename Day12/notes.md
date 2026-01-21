# Day 12 – Grouping and Aggregate Functions (SQL)

## Overview
On Day 12, I studied **Grouping and Aggregate Functions** in SQL using a sample **Restaurant database**.  
The focus was on understanding how aggregate functions work individually and in combination with **GROUP BY**, **JOINS**, and **FILTERS** to analyze data.

---

## Database Overview
Worked with a database named **Restaurant** containing the following tables:
- **tables** – stores seating information
- **bookings** – stores booking details
- **payments** – stores payment methods

---

## Aggregate Functions Learned
Studied and practiced the following aggregate functions:

- `COUNT()` – counts number of rows
- `SUM()` – calculates total values
- `MAX()` – finds the maximum value
- `MIN()` – finds the minimum value
- `AVG()` – calculates average values

---

## Practical Work Done

### 1. CRUD Operations
- Performed **CREATE, READ, UPDATE, DELETE** operations on the Restaurant database tables.
- Inserted and modified sample records to test aggregate queries.

---

### 2. COUNT() Function
- Used `COUNT(*)` to count total records.
- Used `COUNT(DISTINCT column_name)` to count unique values.

---

### 3. MAX() and MIN()
- Applied `MAX()` and `MIN()` on:
  - **INT columns** (e.g., number of guests)
  - **TEXT columns** (lexicographical comparison)
  - **DATE columns** (earliest and latest dates)
- Used **column aliases** with the `AS` keyword for readable output.

---

### 4. SUM(), AVG(), and ROUND()
- Used `SUM()` to calculate total billed amounts.
- Used `AVG()` to calculate average values.
- Applied `ROUND()` to control decimal precision in results.

---

### 5. GROUP BY and Aggregation
- Grouped data using `GROUP BY` to perform aggregations per category.
- Analyzed bookings based on:
  - Table categories
  - Payment methods
  - Booking dates

---

### 6. Joins with Aggregate Functions
- Used **JOINs** between tables to perform meaningful aggregations.
- Combined **filters (WHERE clause)** with aggregate functions for refined analysis.

---

## Key Takeaways
- Aggregate functions summarize large datasets efficiently.
- `GROUP BY` is essential when using aggregates with non-aggregated columns.
- Aliases (`AS`) improve query readability.
- Combining **JOINs + GROUP BY + aggregates** enables real-world data analysis.

---

## Conclusion
This session strengthened my understanding of **SQL data aggregation**, preparing me to analyze relational data using **aggregate functions, grouping, joins, and filters** effectively.
