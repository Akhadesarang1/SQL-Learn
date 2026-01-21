# Day 5 – SQL Constraints & Table Features

## 1. CHECK Constraints
- Learned how **CHECK constraints** validate data before insertion.
- Created `insertfalse.sql` to test constraints.
- Faced error:
  > Check constraint 'yearly_salary_positive' is violated  
  This confirmed that invalid data (negative salary) is blocked.

## 2. UNIQUE Values & Identifiers
- Understood **UNIQUE constraints** and why identifiers are required.
- Learned the purpose of **PRIMARY KEY**:
  - Uniquely identifies each row
  - Cannot be NULL or duplicated
- Worked with **auto-incrementing IDs**.

## 3. Recreating Tables with Constraints
- Dropped all existing tables and recreated them.
- Added:
  - Incrementing IDs
  - Primary keys
  - Required constraints
- Understood DB-specific syntax difference:
  - `id SERIAL PRIMARY KEY` → PostgreSQL
  - `id INT PRIMARY KEY AUTO_INCREMENT` → MySQL

## 4. Constraint Overview
- Got a summary understanding of:
  - Column-level constraints
  - Table-level constraints
- Learned the concept of **FOREIGN KEY** and its role in relationships.

## 5. Text Values
- Learned about **text encoding and collation**.
- Understood limitations and behavior of text-based columns with examples.

## 6. Advanced Table Creation
- Learned different ways to create tables:
  - Temporary tables
  - Tables created from another table

## 7. Generated Columns
- Learned about **generated columns** (mostly supported in MySQL).
- Created generated columns using:
  - `firstname + lastname = fullname`
- Verified correctness by inserting and querying data.

---
**Summary:**  
Day 5 focused on enforcing data integrity using constraints, understanding database-specific syntax differences, working with text data, and exploring advanced table features like generated columns.
