# Lesson 06: DISTINCT and LIMIT

## 1. DISTINCT

`DISTINCT` removes duplicate rows from the selected result columns.

```sql
SELECT DISTINCT department
FROM employees;
```

This returns each department once.

### DISTINCT on multiple columns

```sql
SELECT DISTINCT department, city
FROM employees;
```

This returns unique department-and-city combinations. It does not independently deduplicate each column.

## 2. LIMIT in MySQL

MySQL uses `LIMIT` to restrict the number of rows returned.

```sql
SELECT *
FROM employees
LIMIT 5;
```

This returns at most five rows. Without `ORDER BY`, which five rows appear is not guaranteed.

## 3. Top five highest-paid employees

```sql
SELECT first_name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

Use `ORDER BY` with `LIMIT` when you need a meaningful top-N result.

## 4. LIMIT with OFFSET

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 5;
```

This skips the first five rows and returns the next five. It is useful for pagination.

MySQL also supports the comma form:

```sql
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5, 5;
```

The comma form means `LIMIT offset, row_count`; the `LIMIT row_count OFFSET offset` form is often easier to read.

## 5. TOP vs LIMIT

`TOP` is used in SQL Server, not MySQL.

```sql
-- SQL Server syntax (not MySQL)
SELECT TOP 5 *
FROM employees;
```

```sql
-- MySQL equivalent
SELECT *
FROM employees
LIMIT 5;
```

## Key takeaways

- `DISTINCT` removes duplicate result rows.
- Multiple DISTINCT columns are treated as a combination.
- MySQL uses `LIMIT`, not `TOP`.
- Use `ORDER BY` before `LIMIT` to define which rows should be returned.
- `OFFSET` skips rows, commonly for pagination.
