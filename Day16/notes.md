# Day 16 – SQL Conditional Statements & Transactions

## Overview

On Day 16, I learned **conditional logic in SQL** and gained both **theoretical and practical understanding of database transactions**. I also practiced transaction handling in **MySQL and PostgreSQL** by performing CRUD operations and managing failures safely.

---

## 1. Conditional Statements in SQL

Studied conditional logic used to control query output based on conditions.

### Concepts Covered

* Conditional expressions for decision-making
* Practical usage in queries for dynamic results
* Applied conditions during data selection and manipulation

Purpose: Helps implement business rules directly at the database level.

---

## 2. Theory of Transactions

Learned the concept of **database transactions** and why they are important.

### Key Points

* A transaction is a sequence of SQL operations executed as a single unit
* Ensures **data consistency and integrity**
* Follows the **ACID properties**:

  * Atomicity
  * Consistency
  * Isolation
  * Durability

---

## 3. Transactions Database & CRUD Operations

* Created a **new database** dedicated to transaction practice
* Performed **CRUD operations**:

  * Create (INSERT)
  * Read (SELECT)
  * Update (UPDATE)
  * Delete (DELETE)

Used transactions to safely execute these operations.

---

## 4. Transaction Operations in MySQL

Practiced transaction control commands while handling insert-related issues.

### Commands Used

* `START TRANSACTION`
* `COMMIT`
* `ROLLBACK`
* `SAVEPOINT`

### Learning Outcome

* Rolled back failed insert operations
* Used savepoints for partial rollbacks
* Committed successful transactions safely

---

## 5. Transaction Operations in PostgreSQL

Repeated the same transaction scenarios using **PostgreSQL**.

### Key Differences Observed

* Syntax variations (`BEGIN` instead of `START TRANSACTION`)
* Interval and casting differences
* Similar transaction behavior despite DBMS differences

---

## Summary

Day 16 helped me understand:

* Conditional logic in SQL
* Core transaction theory and ACID properties
* Safe execution of CRUD operations using transactions
* Practical use of COMMIT, ROLLBACK, and SAVEPOINT
* Cross-DBMS transaction handling in MySQL and PostgreSQL

These concepts are critical for building **reliable, production-ready database systems**.
