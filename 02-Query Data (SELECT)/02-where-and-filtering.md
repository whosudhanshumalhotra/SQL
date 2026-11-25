# Lesson 02: WHERE and Filtering

## 1. What is WHERE?

`WHERE` filters individual rows. Only rows for which the condition is true are returned.

## 2. Basic syntax

```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

## 3. Comparison operators

| Operator | Meaning |
|---|---|
| `=` | Equal to |
| `<>` or `!=` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |

Examples:

```sql
SELECT *
FROM employees
WHERE department = 'IT';

SELECT first_name, salary
FROM employees
WHERE salary > 50000;
```

Text values are written inside quotes. Numeric values generally do not need quotes.

## 4. Logical operators

### AND

All conditions must be true.

```sql
SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 50000;
```

### OR

At least one condition must be true.

```sql
SELECT *
FROM employees
WHERE city = 'Delhi'
   OR city = 'Mumbai';
```

### NOT

Reverses a condition.

```sql
SELECT *
FROM employees
WHERE NOT department = 'HR';
```

Use parentheses when combining `AND` and `OR` so the intended logic is clear.

```sql
SELECT *
FROM employees
WHERE department = 'IT'
  AND (city = 'Delhi' OR city = 'Mumbai');
```

## 5. BETWEEN

`BETWEEN` includes both boundary values.

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 70000;
```

Equivalent range logic:

```sql
WHERE salary >= 40000 AND salary <= 70000
```

## 6. IN

Matches any value in a list.

```sql
SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');
```

## 7. LIKE and wildcards

`LIKE` performs pattern matching.

| Pattern | Meaning |
|---|---|
| `'A%'` | Starts with A |
| `'%a'` | Ends with a |
| `'%an%'` | Contains an |
| `'_a%'` | Second character is a |

```sql
SELECT *
FROM employees
WHERE first_name LIKE 'A%';
```

`%` represents zero or more characters. `_` represents exactly one character. Case sensitivity depends on the column collation.

## 8. IS NULL

Use `IS NULL` to find missing values. Do not use `= NULL`.

```sql
SELECT *
FROM employees
WHERE manager_id IS NULL;
```

```sql
SELECT *
FROM employees
WHERE manager_id IS NOT NULL;
```

## Key takeaways

- `WHERE` filters rows before grouping.
- `AND`, `OR`, and `NOT` combine or reverse conditions.
- `BETWEEN` includes both endpoints.
- `IN` checks membership in a list.
- `LIKE` matches patterns.
- Use `IS NULL` / `IS NOT NULL` for NULL checks.

## Practice

1. Find employees with salary greater than 60000.
2. Find employees in IT or Finance.
3. Find employees whose salary is between 40000 and 65000.
4. Find names beginning with `S`.
5. Find employees whose `manager_id` is NULL.
