# Day Notes: Primary Keys, Foreign Keys & Relationships

## 1. Primary Keys Are Not Always AUTO_INCREMENT IDs
- A Primary Key (PK) uniquely identifies each row in a table.
- AUTO_INCREMENT IDs are common but **not mandatory**.
- Any column (or combination of columns) that guarantees uniqueness and NOT NULL can be a PK.
- Business-meaningful columns can sometimes serve as better keys.

---

## 2. Choosing the Right Primary Key
When deciding which column(s) to use as a Primary Key:
- Use **natural keys** when the value is stable and meaningful (e.g., email, username).
- Use **surrogate keys** when natural data can change or is too large.
- Ensure the key is:
  - Unique
  - NOT NULL
  - Stable over time 

---

## 3. Types of Keys
### Composite Primary Key
- A Primary Key made of **multiple columns**.
- Used when uniqueness is defined by a combination of values.
- Common in junction (many-to-many) tables.

### Surrogate Key
- Artificial key (usually an ID).
- Has no business meaning.
- Simplifies relationships and indexing.

### Natural / Real (RAEK) Key
- Real-world, meaningful data used as a key.
- Example: email, phone number, government ID.

---

## 4. Practicing Composite Primary Keys
- Created composite PKs on existing tables.
- Learned that:
  - Order of columns matters.
  - Composite PK automatically enforces uniqueness across all included columns.
- Useful for preventing duplicate relationships.

---

## 5. Practicing Composite Foreign Keys
- Created Foreign Keys that reference **composite Primary Keys**.
- Ensured:
  - Column order and data types match exactly.
  - Referential integrity is enforced across multiple columns.

---

## 6. Querying with Primary & Foreign Keys
- Wrote queries involving:
  - JOINs using PK–FK relationships
  - Filtering based on referenced keys
  - Validating referential integrity
- Observed how constraints prevent invalid inserts and deletes.

---

## 7. Self-Referential Relationships
- A table referencing itself using a Foreign Key.
- Common use cases:
  - Employee → Manager
  - Categories → Parent Categories
- Practiced creating tables and inserting hierarchical data.

---

## 8. Self-Referential Many-to-Many Relationships
- Implemented using an **intermediate (junction) table**.
- The junction table contains:
  - Two Foreign Keys referencing the same parent table.
- Used to model relationships like:
  - Users following users
  - Products related to other products

---

## Key Takeaways
- Primary Keys define identity, not just IDs.
- Composite keys are powerful for relationship modeling.
- Foreign Keys enforce data integrity at the database level.
- Self-referential relationships are essential for hierarchical and network data.
- Constraints protect your database from invalid and inconsistent data.
