# Day 10 – Database Relationships & Primary Keys

## 1. Many-to-Many Relationships & Intermediate Tables (Linking Tables)
- A **many-to-many (M:N)** relationship exists when multiple records in one table relate to multiple records in another.
- Cannot be implemented directly in relational databases.
- Solved using a **linking (junction) table**.
- The linking table:
  - Contains **foreign keys** referencing both related tables.
  - Often uses a **composite primary key**.
- Example use cases:
  - Students ↔ Courses
  - Products ↔ Orders

---

## 2. Querying The Example Data
- Used **JOIN queries** to fetch data across related tables.
- Common joins practiced:
  - `INNER JOIN` – returns matching records only.
  - `LEFT JOIN` – returns all records from the left table.
- Emphasis on:
  - Joining via foreign keys
  - Selecting meaningful combined data

---

## 3. Practicing JOINs With Filtering
- Combined **JOINs with WHERE conditions**.
- Filtering helps:
  - Narrow results based on conditions
  - Improve query usefulness and performance
- Examples:
  - Filtering by status, category, or user ID
  - Using conditions on joined tables

---

## 4. Experimenting With Referential Integrity
- Referential integrity ensures **valid relationships** between tables.
- Enforced using **foreign key constraints**.
- Key concepts:
  - Prevents orphan records
  - Ensures data consistency
- Actions explored:
  - `ON DELETE CASCADE`
  - `ON UPDATE CASCADE`
  - Restricting invalid inserts or deletes

---

## 5. Module Introduction
- Overview of advanced relational database concepts.
- Focus areas:
  - Relationships between tables
  - Keys and constraints
  - Real-world database modeling

---

## 6. Remember: Primary Keys Don't Have To Be Auto-Incrementing IDs!
- Primary keys must be:
  - Unique
  - Not NULL
- Auto-increment IDs are **common but not mandatory**.
- Alternatives:
  - UUIDs
  - Email, username, or composite keys (when appropriate)

---

## 7. Primary Keys: When To Use Which Column
- Choosing the right primary key depends on:
  - Data stability
  - Uniqueness
  - Future scalability
- Guidelines:
  - Use **surrogate keys** (IDs) when natural keys may change.
  - Use **natural keys** when they are guaranteed unique and stable.
- Composite keys are useful in:
  - Linking tables
  - Many-to-many relationships

---

## Day 10 Summary
- Learned how to model many-to-many relationships.
- Practiced JOINs with real filtering.
- Understood referential integrity and constraints.
- Gained clarity on choosing appropriate primary keys.
