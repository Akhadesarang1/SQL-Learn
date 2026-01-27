# Day 15 – SQL Date Functions, Pattern Matching & Subqueries

## Overview

On Day 15, I focused on working with **date & time functions**, **interval operations**, and **advanced querying concepts** like **pattern matching** and **subqueries**. These topics are essential for real‑world database filtering, reporting, and conditional logic.

---

## 1. Date Difference & Date-Time Functions

Learned and practiced functions used to calculate date differences and work with the current timestamp.

### Key Functions

* **`DATEDIFF(date1, date2)`**
  Returns the difference in **days** between two dates.

* **`TIMESTAMPDIFF(unit, start_date, end_date)`** *(MySQL)*
  Returns the difference in a specified unit (DAY, MONTH, YEAR, etc.).

* **`NOW()`**
  Returns the current date and time.

* **Date Subtraction**
  Used to subtract days/months/years from a given date.

---

## 2. Adding Intervals (MySQL & PostgreSQL)

Practiced adding intervals to dates in different DBMS.

### Methods Used

* **`+ number`** *(DB-specific usage)*
* **`DATE_ADD(date, INTERVAL value unit)`** *(MySQL)*
* **`INTERVAL 'value unit'`** *(PostgreSQL)*
* **Type casting using `::`** *(PostgreSQL)*

Purpose: Calculate future or past dates such as expiry dates, renewal dates, or reminders.

---

## 3. LIKE & Pattern Matching

Studied how to filter text data using patterns.

### Common Wildcards

* **`%`** → Matches any number of characters
* **`_`** → Matches exactly one character

Used `LIKE` to search names, emails, and partial text matches.

---

## 4. EXISTS() Subqueries

Worked with **`EXISTS()`** to check the presence of rows in a subquery.

### Key Points

* Returns **BOOLEAN output** (TRUE / FALSE)
* Stops execution as soon as a matching row is found
* Efficient for conditional checks

---

## 5. Subqueries with IN & Expressions

Practiced using subqueries inside conditions.

### Covered Concepts

* **`IN (subquery)`** for matching values from another query
* Subqueries inside **WHERE** clauses
* Expression-based subqueries for dynamic filtering

---

## Summary

Day 15 strengthened my understanding of:

* Date & time calculations
* Interval handling across DBMS
* Pattern-based text filtering
* Boolean subqueries using EXISTS
* Advanced filtering using IN and nested queries

These concepts are widely used in real-world SQL applications such as reporting systems, analytics, and business logic implementation.
