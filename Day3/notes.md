## Day 3 – Data Types and Table Practice

### Data Types Learned
- Text
- Numeric
- Date
- Boolean

### What I Did
- Learned how to store files in a database by saving **file paths** instead of storing actual files
- Created tables in the database
- Added columns step by step:
  - Text column
  - Numeric column
- Studied numeric data types in detail
- Learned the difference between **DECIMAL** and **FLOAT**
- Worked with **ENUM** data type
- Created tables in **PostgreSQL** and observed differences from MySQL

### Practice Work
- Inserted multiple records into existing tables
- Created additional tables:
  - employers
  - conversations
- Used **BOOLEAN** values (true/false) while inserting data
- Practiced inserting correct **ENUM** values
- Verified data using `SELECT` queries
- Fixed common mistakes such as:
  - Missing semicolons
  - Wrong ENUM values
  - Incorrect data types
- Practiced writing and executing queries to gain confidence

### Revision
- DDL commands: `CREATE`, `DROP`
- Common data types:
  - VARCHAR for text
  - INT / DECIMAL / FLOAT for numbers
  - BOOLEAN for true/false values
- ENUM usage:
  - MySQL supports inline ENUM
  - PostgreSQL requires creating a custom ENUM type first
- Use **DECIMAL** instead of FLOAT for money values
- Store files using **file paths**, not raw files
- Always end SQL statements with a semicolon

