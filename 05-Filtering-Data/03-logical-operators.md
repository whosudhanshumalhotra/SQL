# 03 – Logical Operators

Logical operators combine or reverse conditions in a `WHERE` clause.

## 1. AND

Returns rows only when **all** connected conditions are true.

```sql
-- IT employees earning more than 50000.
SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 50000;
```

## 2. OR

Returns rows when **at least one** connected condition is true.

```sql
-- Employees working in IT or HR.
SELECT *
FROM employees
WHERE department = 'IT'
   OR department = 'HR';
```

## 3. NOT

Reverses a condition.

```sql
-- Employees not working in IT.
SELECT *
FROM employees
WHERE NOT department = 'IT';
```

## 4. Combining conditions

Use parentheses to make the intended grouping clear.

```sql
-- Employees in IT or HR who earn more than 50000.
SELECT *
FROM employees
WHERE (department = 'IT' OR department = 'HR')
  AND salary > 50000;
```

## 5. Operator precedence

In MySQL, `NOT` is evaluated before `AND`, and `AND` before `OR`. Use parentheses whenever a query combines `AND` and `OR`, especially when the intended grouping may not be obvious.

```sql
-- Parentheses make the intended logic explicit.
SELECT *
FROM employees
WHERE department = 'IT'
  AND (city = 'Mumbai' OR city = 'Pune');
```

## Quick comparison

| Operator | Meaning |
|---|---|
| `AND` | All conditions must be true |
| `OR` | At least one condition must be true |
| `NOT` | Reverses a condition |

## Common mistake

```sql
-- Potentially unintended grouping:
WHERE department = 'IT' OR department = 'HR' AND salary > 50000;

-- Explicit grouping:
WHERE (department = 'IT' OR department = 'HR')
  AND salary > 50000;
```
