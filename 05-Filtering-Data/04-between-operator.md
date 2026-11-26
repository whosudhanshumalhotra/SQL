# 04 – BETWEEN Operator

## 1. What is BETWEEN?

`BETWEEN` filters values within a range. The range is **inclusive**, meaning both the lower and upper boundaries are included.

## 2. Syntax

```sql
SELECT column_list
FROM table_name
WHERE column_name BETWEEN lower_value AND upper_value;
```

## 3. Examples

```sql
-- Employees earning from 40000 through 70000, including both limits.
SELECT employee_name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 70000;

-- Employees aged 25 through 35, including 25 and 35.
SELECT employee_name, age
FROM employees
WHERE age BETWEEN 25 AND 35;

-- Employees who joined within the specified date range.
SELECT employee_name, joining_date
FROM employees
WHERE joining_date BETWEEN '2022-01-01' AND '2023-12-31';
```

## 4. NOT BETWEEN

Use `NOT BETWEEN` to select values outside the inclusive range.

```sql
SELECT employee_name, salary
FROM employees
WHERE salary NOT BETWEEN 40000 AND 70000;
```

## 5. BETWEEN vs comparison operators

These two queries are equivalent:

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 70000;

SELECT *
FROM employees
WHERE salary >= 40000
  AND salary <= 70000;
```

## Important points

- `BETWEEN` includes both endpoints.
- The lower value should be supplied before the upper value.
- It can be used with numbers, dates, and other comparable values.
- For a `DATETIME` column, an upper date written as `'2023-12-31'` represents midnight at the start of that date. To include the entire day, use an appropriate exclusive upper boundary, for example `joining_datetime < '2024-01-01'`.

## Quick revision

```sql
WHERE salary BETWEEN 40000 AND 70000;
WHERE salary NOT BETWEEN 40000 AND 70000;
```
