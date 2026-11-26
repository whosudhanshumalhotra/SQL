# Module 05 – Filtering Data: Revision Cheat Sheet

## Basic WHERE syntax

```sql
SELECT column_list
FROM table_name
WHERE condition;
```

## Comparison operators

| Operator | Meaning |
|---|---|
| `=` | Equal to |
| `!=` | Not equal to |
| `<>` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |

```sql
WHERE salary = 50000;
WHERE salary <> 50000;
WHERE salary > 50000;
WHERE salary < 50000;
WHERE salary >= 50000;
WHERE salary <= 50000;
```

## Logical operators

```sql
-- Both conditions must be true.
WHERE department = 'IT' AND salary > 50000;

-- At least one condition must be true.
WHERE city = 'Mumbai' OR city = 'Pune';

-- Reverse a condition.
WHERE NOT department = 'IT';
```

Use parentheses to group mixed conditions:

```sql
WHERE (department = 'IT' OR department = 'HR')
  AND salary > 50000;
```

## BETWEEN

Inclusive range:

```sql
WHERE salary BETWEEN 40000 AND 70000;
WHERE salary NOT BETWEEN 40000 AND 70000;
```

Equivalent comparison form:

```sql
WHERE salary >= 40000 AND salary <= 70000;
```

## IN

Match any value in a list:

```sql
WHERE department IN ('IT', 'HR', 'Finance');
WHERE department NOT IN ('IT', 'HR');
```

## LIKE

| Pattern | Meaning |
|---|---|
| `'A%'` | Starts with A |
| `'%a'` | Ends with a |
| `'%an%'` | Contains an |
| `'_a%'` | Second character is a |
| `'____'` | Exactly four characters |

```sql
WHERE employee_name LIKE 'A%';
WHERE employee_name LIKE '%a';
WHERE employee_name LIKE '%an%';
WHERE employee_name LIKE '_a%';
WHERE employee_name NOT LIKE 'A%';
```

## Quick reminders

1. Text values generally use single quotes.
2. Numeric values generally do not need quotes.
3. `BETWEEN` includes both endpoints.
4. `IN` is for a list of exact values.
5. `%` means zero or more characters.
6. `_` means exactly one character.
7. Use parentheses when mixing `AND` and `OR`.
8. `LIKE` case sensitivity depends on collation.
9. `NOT IN` needs care when `NULL` is present.
10. A missing `WHERE` in `SELECT` means no row-level filtering.

## One combined example

```sql
SELECT employee_name, department, city, salary
FROM employees
WHERE department IN ('IT', 'Finance')
  AND city IN ('Mumbai', 'Pune')
  AND salary BETWEEN 50000 AND 80000
  AND employee_name LIKE '%a%'
ORDER BY salary DESC;
```
