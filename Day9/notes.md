# Day 9 – Foreign Key Constraints (Practical Learning)

## Key Learnings

### 1. Hidden Problem Without Foreign Keys

Learned that inserting a value like `address_id = 100` succeeds **even if that address does not exist** when no foreign key constraint is applied. This leads to **invalid and non-optimal data**.

---

### 2. Introduction to Foreign Key Constraints

Understood the purpose of **Foreign Key Constraints** and how they enforce relationships between tables.

Learned key concepts:

* **REFERENCES** – links a child table column to a parent table’s primary key
* **ON DELETE** – defines what happens to child rows when a parent row is deleted
* **ON UPDATE** – defines what happens when a parent key is updated

---

### 3. ON DELETE Usage

Observed that **ON DELETE** is the most commonly used referential action in real-world databases because deletes can easily create orphan records if not handled properly.

---

### 4. Hands-on Practice

Performed practical steps to understand foreign key behavior:

* Dropped existing tables
* Re-created tables with proper **FOREIGN KEY REFERENCES**
* Inserted related parent and child records
* Ran queries to validate relationships

Tested deletion using:

```sql
DELETE FROM addresses WHERE id = 2;
```

---

### 5. Tested Referential Actions

Repeated delete operations using different constraints to observe behavior:

* **RESTRICT** – prevents deletion if related child records exist
* **NO ACTION** – same as RESTRICT (default behavior)
* **CASCADE** – deletes related child records automatically
* **SET NULL** – sets foreign key column to NULL
* **SET DEFAULT** – sets foreign key column to default value

---

## Final Takeaway

Foreign key constraints are essential for maintaining **data integrity**, preventing invalid references, and controlling how related data behaves during updates and deletions.
