# 02 – Comparison Operators

Comparison operators compare two values and produce a condition that can be used in `WHERE`.

## Operators

| Operator | Meaning | Example |
|---|---|---|
| `=` | Equal to | `salary = 50000` |
| `!=` | Not equal to (MySQL) | `department != 'HR'` |
| `<>` | Not equal to (SQL standard) | `department <> 'HR'` |
| `>` | Greater than | `salary > 50000` |
| `<` | Less than | `age < 30` |
| `>=` | Greater than or equal to | `salary >= 50000` |
| `<=` | Less than or equal to | `age <= 30` |

## Examples

```sql
-- Employees earning exactly 60000.
SELECT *
FROM employees
WHERE salary = 60000;

-- Employees not working in HR.
SELECT *
FROM employees
WHERE department <> 'HR';

-- Employees earning more than 50000.
SELECT employee_name, salary
FROM employees
WHERE salary > 50000;

-- Employees aged 30 or above.
SELECT employee_name, age
FROM employees
WHERE age >= 30;

-- Employees who joined on or before 2023-01-01.
SELECT employee_name, joining_date
FROM employees
WHERE joining_date <= '2023-01-01';
```

## `!=` vs `<>`

Both mean "not equal to" in MySQL. `<>` is the standard SQL operator and is a good choice for portable SQL.

## Common mistake

```sql
-- Incorrect SQL equality syntax:
WHERE salary == 50000;

-- Correct:
WHERE salary = 50000;
```

## Quick revision

- `=` checks equality.
- `!=` and `<>` check inequality.
- `>` and `<` are strict comparisons.
- `>=` and `<=` include equality.
