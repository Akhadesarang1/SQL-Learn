# SQL Learning Roadmap — Days 01–06

> Concise, practical, and chronological guide covering the first six days of your SQL learning. Use this README as a study guide, quick reference, and checklist.

---

## Table of Contents

1. Overview & How to Use this Guide
2. Day 01 — SQL Fundamentals & Setup
3. Day 02 — Data Definition Operations (DDL)
4. Day 03 — Data Types & Table Practice
5. Day 04 — ALTER & NULL behavior
6. Day 05 — Constraints & Table Features
7. Day 06 — CRUD: DML in Practice
8. Common Commands & Quick Reference
9. Troubleshooting & Common Mistakes
10. Suggested Exercises & Practice Plan
11. Next Steps & Resources

---

## 1. Overview & How to Use this Guide

This README condenses your daily notes into a structured study path. Each day has: core concepts, practical tasks you did, important commands/syntax, and revision notes. Use the **Suggested Exercises** section to practice and the **Quick Reference** to refresh syntax before coding.

Study tips:

* Read a day's section, then re-run the practical commands in a new database instance.
* Intentionally insert an incorrect value, then fix it with `UPDATE` to learn error handling.
* Keep a scratch SQL file (e.g., `practice.sql`) per day to track progress.

---

## 2. Day 01 — SQL Fundamentals & Setup

**Learning goals**

* Understand what SQL is and where to use it.
* Know the difference between DDL and DML.
* Set up local environments: MySQL and PostgreSQL.
* Configure VS Code with SQLTools and connect using CLI tools.

**Key concepts**

* SQL is declarative — you describe *what* you want returned.
* DDL (CREATE, ALTER, DROP) defines structure.
* DML (INSERT, UPDATE, DELETE, SELECT) manipulates data.
* A *schema* is a logical container for database objects.

**Practical tasks**

* Installed MySQL and PostgreSQL.
* Connected using command prompt / SQL Shell.
* Configured SQLTools in VS Code.
* Created schemas and verified with `SHOW` / system catalogs.

**Important notes**

* Default ports: MySQL `3306`, PostgreSQL `5432`.
* Keep host, port, username, password, and database handy for connection strings.

---

## 3. Day 02 — Data Definition Operations (DDL)

**Learning goals**

* Create and drop databases and tables.
* Learn basic table definitions and schema management.

**What you practiced**

* `CREATE DATABASE`, `DROP DATABASE`.
* `CREATE TABLE` with sensible column types.
* Altering table structure (intro; deeper coverage in Day 4).

**Quick summary**

* Day 2 focused on the mechanics of creating structure using DDL.

---

## 4. Day 03 — Data Types & Table Practice

**Learning goals**

* Understand core SQL data types: text, numeric, date, boolean.
* Learn storage strategy for file references (store paths, not raw files).
* Recognize DB-specific differences (ENUM handling, DECIMAL vs FLOAT).

**What you practiced**

* Creating tables and adding columns step-by-step.
* Inserted records and used `SELECT` to verify.
* Used BOOLEAN values and ENUMs carefully.

**Key takeaways**

* Use `DECIMAL` for monetary values to avoid precision issues with `FLOAT`.
* MySQL supports inline `ENUM`; PostgreSQL requires creating a custom enum type first.
* Prefer `VARCHAR` or `TEXT` depending on expected length.

---

## 5. Day 04 — ALTER & NULL behavior

**Learning goals**

* Modify existing tables using `ALTER`.
* Understand NULL vs empty value and `NOT NULL` constraint.

**Important differences**

* PostgreSQL: `ALTER TABLE ... ALTER COLUMN col TYPE ...` (follows SQL standard).
* MySQL: `ALTER TABLE ... MODIFY COLUMN ...` (direct column redefinition).

**Notes**

* NULL represents unknown/missing data. It is **not** equal to `''` (empty string) or `0`.
* Use `IS NULL` / `IS NOT NULL` in WHERE clauses.

---

## 6. Day 05 — Constraints & Table Features

**Learning goals**

* Enforce data integrity using constraints.
* Work with primary keys, unique constraints, check constraints, foreign keys.
* Explore generated columns and table creation patterns.

**What you practiced**

* Implemented `CHECK` constraints; observed the error: `Check constraint 'yearly_salary_positive' is violated` when inserting invalid data.
* Added `PRIMARY KEY` and `UNIQUE` constraints.
* Recreated tables with `SERIAL` (Postgres) / `AUTO_INCREMENT` (MySQL).
* Created generated columns like `fullname` from `firstname` + `lastname` (MySQL).

**Constraint notes**

* Primary keys: unique and not null.
* `FOREIGN KEY` ties related tables together; enforce referential integrity.
* `CHECK` constraints validate values at insertion/update.

---

## 7. Day 06 — CRUD: DML in Practice

**Learning goals**

* Solidify CREATE/READ/UPDATE/DELETE (CRUD) operations across MySQL and PostgreSQL.
* Use filtering, ordering, limits, and subqueries.

**What you practiced**

* Designed a `product` table with appropriate types and constraints.
* Inserted single and multiple rows; intentionally added incorrect data to practice updates.
* Updated rows with `UPDATE ... WHERE ...` using filters.
* Deleted rows safely using `WHERE` clauses.
* `SELECT` with column aliases, expressions, `LIMIT`, `DISTINCT`, `ORDER BY`.
* Wrote subqueries and combined ordering/limiting operations.

**Key takeaways**

* Always filter `UPDATE` and `DELETE` — otherwise you may change/delete all rows.
* Use `DISTINCT` to remove duplicates in results.

---

## 8. Common Commands & Quick Reference

```sql
-- DDL
CREATE DATABASE dbname;
DROP DATABASE dbname;
CREATE SCHEMA schemaname;
CREATE TABLE tablename (...);
ALTER TABLE tablename ADD COLUMN colname TYPE;

-- Column types examples
VARCHAR(255), TEXT, INT, SERIAL (Postgres), INT AUTO_INCREMENT (MySQL),
DECIMAL(10,2), FLOAT, BOOLEAN, DATE

-- DML
INSERT INTO table (col1, col2) VALUES (v1, v2);
INSERT INTO table (col1, col2) VALUES (v1, v2), (v3, v4);
SELECT col1, col2 FROM table WHERE condition ORDER BY col1 DESC LIMIT 10;
UPDATE table SET col = value WHERE condition;
DELETE FROM table WHERE condition;

-- Constraints
ALTER TABLE table ADD CONSTRAINT constraint_name CHECK (col > 0);
ALTER TABLE table ADD PRIMARY KEY (id);

-- NULL checks
SELECT * FROM table WHERE col IS NULL;
SELECT * FROM table WHERE col IS NOT NULL;
```

---

## 9. Troubleshooting & Common Mistakes

* **Missing semicolon**: statements must end with `;` in many clients — leads to syntax errors.
* **Wrong ENUM value**: validate enum values before insert; Postgres requires type creation first.
* **Using FLOAT for money**: can cause rounding errors — use `DECIMAL`.
* **Unfiltered UPDATE/DELETE**: always include `WHERE` unless intentional.
* **Constraint violations**: read the error message (e.g., CHECK failed) and inspect the offending row.

---

## 10. Suggested Exercises & Practice Plan

Repeat each day’s exercises, increasing complexity.

**Week plan (example):**

* Day A: Recreate Day 1–3 exercises from scratch in a new DB.
* Day B: Design a mini-schema: `users`, `products`, `orders`, `order_items`.

  * Implement PKs, FKs, UNIQUE, CHECKs.
  * Seed with sample data and write queries:

    * Top 5 customers by spending
    * Products never ordered
    * Orders with total > 1000 (use generated/aggregated columns)
* Day C: Backup and restore a database using CLI tools.
* Day D: Write complex SELECTs with joins, aggregates, GROUP BY, HAVING.

**Challenge exercises:**

* Implement soft deletes with a `deleted_at` timestamp and show queries for active rows.
* Migrate an existing table column type safely with minimal downtime (practice on a copy).

---

## 11. Next Steps & Resources

* Practice **joins**, **aggregations** and **window functions** next.
* Learn **indexes** and query planning to optimize performance.
* Explore **transactions** and isolation levels for safe concurrent operations.
* Try building a small app (e.g., simple inventory or blog) to apply CRUD + schema design.

---

### Final checklist (quick)

* [ ] Set up MySQL & PostgreSQL locally
* [ ] Connect with CLI and VS Code (SQLTools)
* [ ] Create sample databases and schemas
* [ ] Implement PKs, FKs, UNIQUE, CHECK
* [ ] Practice INSERT / UPDATE / DELETE / SELECT with filters
* [ ] Attempt challenge exercises

