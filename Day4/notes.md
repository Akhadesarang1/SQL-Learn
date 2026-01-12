# Day 4 – ALTER & Constraints

Today I learned about the **ALTER query** and how it is used to modify existing table structures in SQL.

I understood why **PostgreSQL uses `ALTER COLUMN ... SET DATA TYPE`** when changing a column’s data type, as it follows strict SQL standards. In contrast, **MySQL uses `MODIFY`**, which directly changes the column definition in a simpler way.

I also learned about **NULL values**, which represent missing or unknown data and are different from zero or empty strings. Along with this, I studied the **NOT NULL constraint**, which ensures that a column must always contain a value and cannot be left empty.

Overall, this helped me understand how databases handle schema changes and data validation.
