# Day 10 – Data Relationships & Referential Integrity

## 1. Understanding Data Relationships (Theory)

Revised the theoretical concepts of database relationships:

* **One-to-One (1:1)** – One record relates to one record
* **One-to-Many (1:N)** – One record relates to many records
* **Many-to-Many (N:N)** – Many records relate to many records

---

## 2. Practical Database Overview

To gain hands-on understanding, explored a sample database containing multiple related tables:

* Employees
* Teams
* Projects
* Intranet Accounts
* Buildings

This helped visualize how real-world systems model relationships.

---

## 3. Initial Table Creation

Started practically by:

* Creating **Employees** table
* Creating **Intranet Accounts** table

This established a basic relationship setup.

---

## 4. Expanding the Database

* Added 4 more tables to the database
* Inserted sample data into all tables
* Observed how tables connect through relationships

---

## 5. Problems With Many-to-Many (N:N) Relationships

Learned that **N:N relationships cannot be implemented directly** in relational databases.

Issues identified:

* Data redundancy
* Lack of clarity in relationships
* Difficult querying and maintenance

---

## 6. Intermediate (Linking) Tables

Solved the N:N problem by creating an **intermediate table**:

* Combined **Projects** and **Employees** tables
* Used foreign keys to link both sides

This converted the N:N relationship into two 1:N relationships.

---

## 7. Querying Related Data

Practiced querying relational data using:

* `SELECT`
* `INNER JOIN`
* `LEFT JOIN`
* `AS` (aliases)

Used these queries to fetch meaningful combined data from multiple tables.

---

## 8. Data Manipulation Practice

Repeated JOIN queries after:

* Updating table data
* Adding or removing records

Observed how query results change based on table content.

---

## 9. Experimenting With Referential Integrity

Tested how referential integrity rules affect:

* Inserts
* Updates
* Deletes

This reinforced the importance of foreign keys in maintaining consistent and reliable data.

---

## Final Takeaway

Understanding relationships, using intermediate tables for N:N mappings, and enforcing referential integrity are essential for designing scalable and real-world relational databases.
