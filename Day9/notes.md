# Day 9 – Mastering Foreign Key Constraints

## 1. Why Foreign Keys Matter

Without Foreign Key (FK) constraints, tables are not truly connected—only linked by convention. This leads to:

* **Orphaned records**: Child rows point to non‑existent parents.
* **Invalid data**: You can insert references that don’t exist.
* **No integrity**: The database cannot enforce relationships.

Foreign keys solve this by making relationships a rule, not a suggestion.

---

## 2. What Is a Foreign Key?

A **Foreign Key** is a column (or set of columns) in a child table that references the **Primary Key** of a parent table.

### Benefits

* **Referential Integrity**: Keeps relationships consistent.
* **Automatic Validation**: MySQL blocks invalid inserts, updates, or deletes.

---

## 3. Defining a Foreign Key

When you add a FK, you tell MySQL:

> “This value must already exist in the parent table.”

### Example

```sql
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
```

* **Parent table**: `customers`
* **Child table**: `orders`

---

## 4. Updating & Removing Foreign Keys

Foreign keys are constraints, so they must be explicitly modified.

### Drop a Foreign Key

```sql
ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;
```

(MySQL auto‑generates names if you don’t define one.)

### Add a Foreign Key to an Existing Table

```sql
ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES customers(id);
```

---

## 5. Foreign Keys in Action (Referential Actions)

Foreign keys define what happens to child rows when a parent row changes.

| Action               | Behavior                                 |
| -------------------- | ---------------------------------------- |
| CASCADE              | Child rows update/delete automatically   |
| SET NULL             | Child FK becomes NULL                    |
| RESTRICT / NO ACTION | Prevents parent change if children exist |

### Example

```sql
FOREIGN KEY (customer_id)
REFERENCES customers(id)
ON DELETE CASCADE;
```

---

## 6. Foreign Keys & MySQL Engine

* `REFERENCES` is used inside `CREATE TABLE` or `ALTER TABLE`.
* **InnoDB is required** for FK enforcement.
* Engines like **MyISAM ignore foreign keys**, even if syntax is valid.

---

## Summary Checklist

* Identified problems with loose ID relationships
* Created tables with FOREIGN KEY constraints
* Used ON DELETE CASCADE
* Learned to DROP and ADD constraints using ALTER TABLE

---

**Key takeaway:** Foreign keys turn relationships into enforceable rules, keeping your database consistent and reliable.
