# 01 – WHERE Clause

## 1. What is WHERE?

The `WHERE` clause filters rows returned by a SQL statement. Only rows for which the condition evaluates to true are included in the result.

Without `WHERE`, a `SELECT` query returns every row in the selected table.

## 2. Syntax

```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

## 3. Examples

```sql
-- Display employees who work in the IT department.
SELECT *
FROM employees
WHERE department = 'IT';

-- Display employees whose salary is greater than 50000.
SELECT employee_name, salary
FROM employees
WHERE salary > 50000;

-- Display employees from Mumbai.
SELECT employee_name, city
FROM employees
WHERE city = 'Mumbai';
```

## 4. WHERE with other clauses

```sql
SELECT employee_name, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 3;
```

This filters IT employees, sorts them by salary from highest to lowest, and returns the first three rows.

## 5. Important points

- Text and date values are generally written inside single quotes.
- Numeric values are generally written without quotes.
- Use `=` for equality; SQL does not use `==` as its standard equality operator.
- `WHERE` filters rows; it does not modify stored data.
- A condition can use comparison, logical, range, list, or pattern-matching operators.

## Quick revision

```sql
SELECT *
FROM employees
WHERE department = 'HR';
```
