# 06 — SQL Coding Style

Good SQL is not only about getting the correct result. It should also be readable, consistent, and safe to maintain.

## 1. Use consistent keyword capitalization

A common convention is to write SQL keywords in uppercase.

```sql
SELECT customer_name
FROM customers
WHERE country = 'India';
```

## 2. Use meaningful identifiers

Prefer names that explain the data they represent.

```sql
-- Clear
SELECT customer_name
FROM customers;

-- Harder to understand
SELECT x
FROM t;
```

This repository uses `snake_case` for table and column names, such as `customer_name` and `order_date`.

## 3. Format queries across multiple lines

Put major clauses on separate lines and indent long expressions.

```sql
SELECT
    customer_id,
    customer_name,
    email
FROM customers
WHERE country = 'India'
ORDER BY customer_name;
```

## 4. Use aliases thoughtfully

Aliases can make queries shorter and easier to read, especially when multiple tables are involved.

```sql
SELECT
    c.customer_id,
    c.customer_name
FROM customers AS c;
```

Choose aliases that remain understandable. A short alias such as `c` is reasonable for a simple query; avoid meaningless aliases in complex queries.

## 5. Avoid SELECT * in production queries

`SELECT *` can retrieve columns the application does not need. Listing required columns makes the query's output clearer and can reduce unnecessary data transfer.

```sql
-- Prefer
SELECT customer_id, customer_name
FROM customers;

-- Use selectively
SELECT *
FROM customers;
```

`SELECT *` is still useful when exploring a table during learning.

## 6. Be careful with UPDATE and DELETE

Before changing data, preview the target rows with the same filter.

```sql
-- Step 1: Preview the rows
SELECT *
FROM customers
WHERE customer_id = 10;

-- Step 2: Update only after confirming the target
UPDATE customers
SET country = 'India'
WHERE customer_id = 10;
```

For important changes, use a transaction where appropriate and verify the affected row count. Never casually omit a `WHERE` clause from an `UPDATE` or `DELETE`.

## 7. End statements consistently

Use a semicolon to terminate SQL statements:

```sql
SELECT customer_name
FROM customers;
```

## 8. Add useful comments

Comments should explain intent or non-obvious logic, rather than repeat every line.

```sql
-- Find customers from India for the regional report
SELECT customer_id, customer_name
FROM customers
WHERE country = 'India';
```

## Professional style checklist

- [ ] Keywords are consistently capitalized.
- [ ] Names are meaningful and consistent.
- [ ] Clauses are formatted on separate lines.
- [ ] Indentation makes nested logic readable.
- [ ] Only required columns are selected in production queries.
- [ ] UPDATE and DELETE targets are checked carefully.
- [ ] Statements are terminated consistently.
- [ ] Comments explain important intent.

## Check your understanding

1. Why is `SELECT *` often avoided in production code?
2. What should you do before an `UPDATE`?
3. Why are meaningful identifiers useful?
4. What does a semicolon indicate?
