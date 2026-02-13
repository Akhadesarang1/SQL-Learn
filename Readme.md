````md
# SQL Learning Journey — Day 01 to Day 18  
*A Practical Learner’s Roadmap from Fundamentals to Advanced Database Design*

---

## Overview

This README documents my structured SQL learning journey from **Day 01 through Day 18**, covering foundational concepts, hands-on database practice, and advanced relational database design.  

The goal of this journey was to move from understanding basic SQL syntax to designing real-world relational databases with proper normalization, constraints, performance optimization, and advanced querying techniques.

This guide is written from a **learner’s perspective**, summarizing concepts learned, practical exercises performed, and key takeaways gained through daily practice.

---

## Learning Approach

Throughout this journey I followed a practical-first methodology:

- Learn the concept.
- Implement it directly in MySQL and PostgreSQL.
- Break things intentionally to understand errors.
- Reinforce learning through real database design.

Focus areas included:

- Real-world database structure
- Data integrity
- Query optimization
- Practical CRUD operations
- Analytical querying

---

# Phase 1 — Foundations (Day 01–Day 06)

---

## Day 01 — SQL Fundamentals & Environment Setup

### What I Learned

- What SQL is and how relational databases work.
- Difference between:
  - DDL (Data Definition Language)
  - DML (Data Manipulation Language)
- SQL is declarative — I describe *what* data I want.

### Practical Work

- Installed MySQL and PostgreSQL.
- Connected via CLI and VS Code SQLTools.
- Created schemas and verified database setup.

### Key Takeaways

- Understanding database structure is essential before writing queries.
- Connection details (host, port, user) are critical for setup.

---

## Day 02 — Data Definition Language (DDL)

### Topics

- Creating and deleting databases.
- Creating tables and defining columns.

### Commands Practiced

```sql
CREATE DATABASE dbname;
CREATE TABLE tablename (...);
DROP DATABASE dbname;
````

### Learning Outcome

* Understood how database structure is defined before inserting data.

---

## Day 03 — Data Types & Table Practice

### Concepts

* Core data types:

  * VARCHAR / TEXT
  * INT
  * DECIMAL vs FLOAT
  * BOOLEAN
  * DATE/TIME

### Practical Learning

* Created tables step-by-step.
* Inserted and validated records using SELECT.
* Learned to store file paths instead of files.

### Key Insight

* Use `DECIMAL` for financial values to avoid precision issues.

---

## Day 04 — ALTER Operations & NULL Behavior

### Topics

* Modifying existing tables.
* Understanding NULL vs empty values.

### Important Differences

* PostgreSQL:

```sql
ALTER TABLE table ALTER COLUMN col TYPE datatype;
```

* MySQL:

```sql
ALTER TABLE table MODIFY COLUMN col datatype;
```

### Key Learning

* NULL represents unknown data, not zero or empty string.

---

## Day 05 — Constraints & Data Integrity

### Constraints Practiced

* PRIMARY KEY
* UNIQUE
* CHECK
* FOREIGN KEY
* NOT NULL

### Hands-on Learning

* Created generated columns.
* Tested constraint failures and interpreted error messages.

### Insight

Constraints enforce correctness at the database level.

---

## Day 06 — CRUD Operations (DML)

### Practice Areas

* INSERT single and multiple rows.
* SELECT with filtering and sorting.
* UPDATE with conditions.
* DELETE safely using WHERE.

### Key Lessons

* Always include WHERE in UPDATE/DELETE.
* DISTINCT removes duplicate results.
* Subqueries add flexibility to filtering.

---

# Phase 2 — Relational Databases & Joins (Day 07–Day 10)

---

## Day 07 — Related Data & Normalization

### Concepts Learned

* Why large single tables cause redundancy.
* Data normalization (1NF, 2NF, 3NF).
* Splitting entities into logical tables.

### Practical Work

* Designed normalized schema.
* Created relationships using PRIMARY and FOREIGN keys.

### Key Insight

Proper design prevents data inconsistency.

---

## Day 08 — SQL Joins & Data Combination

### Types of Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* CROSS JOIN

### Learning Outcomes

* Combine multiple tables.
* Filter joined data.
* Compare INNER vs LEFT JOIN.

### Additional Concepts

* UNION vs JOIN differences.

---

## Day 09 — Foreign Key Constraints

### Problem Identified

Without foreign keys, invalid references can be inserted.

### Referential Actions Practiced

* RESTRICT / NO ACTION
* CASCADE
* SET NULL
* SET DEFAULT

### Key Learning

Foreign keys maintain relational integrity automatically.

---

## Day 10 — Data Relationships & Referential Integrity

### Relationship Types

* One-to-One
* One-to-Many
* Many-to-Many

### Practical Experience

* Created intermediate linking tables.
* Converted N:N relationships into two 1:N relationships.

### Insight

Link tables are essential for scalable relational design.

---

# Phase 3 — Keys, Aggregation & Advanced Queries (Day 11–Day 15)

---

## Primary Keys & Advanced Relationship Modeling

### Topics

* Natural vs surrogate keys.
* Composite primary keys.
* Composite foreign keys.
* Self-referential relationships.

### Practical Example

* Employee → Manager hierarchy.
* Junction tables with composite keys.

---

## Day 12 — Aggregations & GROUP BY

### Functions Learned

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

### Key Concepts

* GROUP BY with aggregations.
* Using aliases for readability.
* Combining JOIN + GROUP BY.

---

## Day 13 — Advanced Querying & Window Functions

### Focus Areas

* GROUP BY deeper usage.
* WHERE vs HAVING differences.
* Multi-table analysis queries.

---

## Day 14 — SQL Functions Practice

### Categories

* Mathematical: CEIL, FLOOR, ROUND.
* String: CONCAT, LOWER, LENGTH, TRIM.
* Date/Time: EXTRACT, CAST, CONVERT.

### Outcome

Improved data transformation skills inside SQL queries.

---

## Day 15 — Date Functions & Subqueries

### Topics

* Date calculations and intervals.
* Pattern matching using LIKE.
* EXISTS() subqueries.
* Nested filtering using IN.

### Key Learning

Subqueries enable dynamic and conditional logic.

---

# Phase 4 — Transactions, Performance & Real Database Design (Day 16–Day 18)

---

## Day 16 — Transactions & ACID Principles

### Concepts

* Atomicity
* Consistency
* Isolation
* Durability

### Commands Practiced

```sql
START TRANSACTION;
COMMIT;
ROLLBACK;
SAVEPOINT;
```

### Learning Outcome

Transactions ensure safe and reliable operations.

---

## Day 17 — Indexes & Performance Optimization

### What I Learned

* Indexes speed up SELECT queries.
* Too many indexes reduce write performance.

### Tools Used

```sql
EXPLAIN ANALYZE
```

### Observations

* Index Scan vs Sequential Scan differences.

---

## Day 18 — Real Database Design (my_events Project)

### Database Structure

Tables:

* cities
* locations
* events
* users
* organizers
* tags
* events_tags (junction)
* events_users (junction)

### Skills Applied

* Normalization
* Relationships
* Constraints
* JOIN queries
* Filtering and aggregations

### Major Outcome

Designed a complete relational database from scratch.

---

# Key Learning Themes Across All Days

* Database design matters more than just writing queries.
* Constraints protect data integrity.
* Relationships define system structure.
* Aggregation and joins unlock analytical power.
* Indexing improves performance when used strategically.
* Transactions ensure reliability.

---

# Personal Progress Summary (Learner Perspective)

Through this journey I progressed from:

* Setting up databases and learning basic syntax
  → to designing normalized schemas with relationships
  → to writing advanced queries with joins, subqueries, and aggregations
  → to optimizing performance with indexes and transaction safety.

The final outcome is a strong foundation in SQL and relational database design suitable for real-world backend and data-driven applications.

---

# Next Learning Goals

* Query optimization strategies.
* Window functions deeper usage.
* Execution plan analysis.
* Database scaling and indexing strategies.
* Applying SQL inside real backend applications.

---

```
```
